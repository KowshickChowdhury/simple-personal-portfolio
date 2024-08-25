@extends('layouts.admin')

@section('content')
<div class="br-pagebody">
    <div class="br-section-wrapper">
    <h6 class="br-section-label text-center mb-4">Add New Content</h6>

    <!----- Start Add Content Form ------->
    <div class="col-xl-7 mx-auto">
        <div class="form-layout form-layout-4">

            <form action="{{ route('contents.update') }}" method="post" enctype="multipart/form-data">
                @csrf
                <div class="row">
                    <label class="col-sm-3 form-control-label">Title: <span class="tx-danger">*</span></label>
                    <div class="col-sm-9 mg-t-10 mg-sm-t-0">
                        <input value="{{ old('title', $content->title) }}" type="text" name="title" class="form-control" placeholder="Enter Title" required>
                    </div>
                </div><!-- row -->

                <div class="row mt-3">
                    <label  class="col-sm-3 form-control-label" for="">Type</label>
                    <div class="col-sm-9 mg-t-10 mg-sm-t-0">
                        <select name="type" class="form-control">
                            <option value="">Select Type</option>
                            <option @if(old('type', $content->type) == 'page') selected @endif value="page">Page</option>
                            <option @if(old('type', $content->type) == 'blog') selected @endif value="blog">Blog</option>
                        </select>
                    </div>
                </div><!-- row -->

                <div class="row mt-3">
                    <label class="col-sm-3 form-control-label">Content: <span class="tx-danger">*</span></label>
                    <div class="col-sm-9 mg-t-10 mg-sm-t-0">
                        <textarea name="content" class="form-control summernote_editor">{{ old('content', $content->content) }}</textarea>
                    </div>
                </div><!-- row -->

                <div class="row mt-3">
                    <label  class="col-sm-3 form-control-label" for="">Status</label>
                    <div class="col-sm-9 mg-t-10 mg-sm-t-0">
                        <select name="status" class="form-control">
                            <option value="">Select Status</option>
                            <option @if(old('status', $content->status) == 'published') selected @endif value="published">Published</option>
                            <option @if(old('status', $content->status) == 'draft') selected @endif value="draft">Draft</option>
                        </select>
                    </div>
                </div><!-- row -->

                <div class="row mt-3">
                    <div class="col-sm-12 mg-t-10 mg-sm-t-0 text-end">
                        <a href="#" type="button" class="btn btn-secondary text-white mr-2">Cancel</a>
                        <button type="submit" class="btn btn-info">Update</button>
                    </div>
                </div><!-- row -->
            </form>

        </div><!-- form-layout -->
    </div><!-- col-6 -->
    <!----- End Add Content Form ------->
    </div><!-- br-section-wrapper -->
</div><!-- br-pagebody -->
@endsection
