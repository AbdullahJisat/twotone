<!DOCTYPE html>
<html lang="en">

<head>
    <meta charset="UTF-8">
    <meta name="viewport" content="width=device-width, initial-scale=1.0">
    <meta http-equiv="X-UA-Compatible" content="ie=edge">
    <meta name="csrf-token" content="{{ csrf_token() }}">
    <link rel="stylesheet" href="//cdn.datatables.net/1.13.1/css/jquery.dataTables.min.css">
    <title>Document</title>
</head>

<body>
    <h1>House Category</h1>
    <table class="table table-striped- table-bordered table-hover table-checkable" id="dataTable" style="width:100%">
        <thead>
            <tr>

                <th><label class="kt-checkbox kt-checkbox--single kt-checkbox--all kt-checkbox--solid"><input
                            type="checkbox" class="selectall">&nbsp;<span></span></label></th>
                <th>SR</th>
                <th>Module</th>
                <th>Action</th>
            </tr>
        </thead>
        <tbody></tbody>
    </table>
</body>

<script src="https://code.jquery.com/jquery-3.6.3.js"></script>
{{-- <script src="https://code.jquery.com/jquery-3.5.1.js"></script> --}}
<script src="//cdn.datatables.net/1.13.1/js/jquery.dataTables.min.js"></script>
<script>
    $.ajaxSetup({
        headers: {
            "X-CSRF-TOKEN": $('meta[name="csrf-token"]').attr("content"),
        },
    });
</script>
<script src="{{ asset('read.js') }}"></script>
<script src="{{ asset('create.js') }}"></script>
<script src="{{ asset('edit.js') }}"></script>
<script src="{{ asset('delete.js') }}"></script>

<script>
    $(document).ready(function() {
        read(`{{ route('house-category.list') }}`, 'House Category');
       });
</script>

</html>
