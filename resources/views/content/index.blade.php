@extends('layouts.admin')

@section('content')
<div class="br-pagebody">
    <div class="br-section-wrapper">
    <h6 class="br-section-label text-center">Contents</h6>
        {{-- success message start --}}
    @if(session()->has('message'))
    <div class="alert alert-success">
    <button type="button" class="close" data-bs-dismiss="alert" aria-hidden="true"></button>
    {{session()->get('message')}}
    </div>
    <script>
        setTimeout(function(){
            $('.alert.alert-success').hide();
        }, 3000);
    </script>
    @endif
    {{-- success message End --}}

    <div class="table-wrapper">
        <table id="datatable1" class="table display responsive nowrap">
        <thead>
            <tr>
            <th class="wd-10p">Id</th>
            <th class="wd-25p">Title</th>
            <th class="wd-25p">Type</th>
            <th class="wd-25p">Content</th>
            <th class="wd-10p">Status</th>
            <th class="wd-10p">Action</th>
            </tr>
        </thead>
        <tbody>
            @php
                $i = 1;
            @endphp
            @if (count($contents) > 0)
            @foreach ($contents as $content)
                <tr>
                    <td>{{ $i++ }}</td>
                    <td>{{ $content->title }}</td>
                    <td>{{ $content->type }}</td>
                    <td>{{ $content->content }}</td>
                    <td>{{ $content->status }}</td>
                    <td class="p-0">
                    <a class="btn text-info" href="{{ route('contents.edit', $content->id) }}">Edit</a>
                    <button class="btn text-danger bg-white" onclick="openDeleteModal({{ $content->id }})" value="{{$content->id}}" id="homeproductdelete">Delete</button>
                    </td>
                </tr>
            @endforeach
            @endif

        </tbody>
        </table>
    </div><!-- table-wrapper -->


    </div><!-- br-section-wrapper -->
</div><!-- br-pagebody -->


<div id="deleteContentModal" class="modal fade">
      <div class="modal-dialog modal-dialog-top" role="document">
          <div class="modal-content tx-size-sm">
              <div class="modal-body tx-center pd-y-20 pd-x-20">
                  <form id="deleteProductForm" action="#" method="post">
                      @csrf
                      <input type="hidden" name="content_id" id="content_id">
                      <button type="button" class="close" data-dismiss="modal" aria-label="Close">
                          <span aria-hidden="true">&times;</span>
                      </button>
                      <i class="icon ion-ios-close-outline tx-60 tx-danger lh-1 mg-t-20 d-inline-block"></i>
                      <h4 class="tx-danger  tx-semibold mg-b-20 mt-2">Are you sure! you want to delete this?</h4>
                      <button type="submit" class="btn btn-danger mr-2 text-white tx-11 tx-uppercase pd-y-12 pd-x-25 tx-mont tx-medium mg-b-20">
                          yes
                      </button>
                      <button type="button" class="btn btn-success tx-11 tx-uppercase pd-y-12 pd-x-25 tx-mont tx-medium mg-b-20" data-dismiss="modal" aria-label="Close">
                          No
                      </button>
                  </form>
              </div><!-- modal-body -->
          </div><!-- modal-content -->
      </div><!-- modal-dialog -->
  </div><!-- modal -->

  <script>
    function openDeleteModal(contentId) {
        $('#content_id').val(contentId);
        // Open the modal
        $('#deleteContentModal').modal('show');
    }
  </script>

    <!--_-- ########### End Delete Category MODAL ############---->

@endsection