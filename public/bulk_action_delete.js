/********************************************************
 ******* Start :: Bulk Action Delete Data Functions *******
 *********************************************************/
    function bulkActionDelete(table, url, id, rows) {
        Swal.fire({
            title: "Are you sure?",
            text: "You won't be able to revert this!",
            type: "warning",
            showCancelButton: true,
            confirmButtonColor: "#6610f2",
            cancelButtonColor: "#fd397a",
            confirmButtonText: "Yes, delete!",
        }).then((result) => {
            if (result.value) {
                $.ajaxSetup({
                    headers: {
                        "X-CSRF-TOKEN": $('meta[name="csrf-token"]').attr(
                            "content"
                        ),
                    },
                });
                $.ajax({
                    url: url,
                    type: "POST",
                    data: {
                        id: id,
                    },
                    dataType: "json",
                })
                    .done(function (response) {
                        if (response.status == "success") {
                            Swal.fire("Deleted!", response.message, "success").then(
                                function () {
                                    // table.ajax.reload();
                                    $(".selectall").prop("checked", false);
                                    table.rows(rows).remove().draw(false);
                                    // table.ajax.reload();
                                }
                            );
                        } else if (response.status == "error") {
                            Swal.fire("Error deleting!", response.message, "error");
                        }
                    })
                    .fail(function () {
                        swal.fire(
                            "Oops...",
                            "Something went wrong with ajax !",
                            "error"
                        );
                    });
            }
        });
    }
/********************************************************
 ******* End :: Bulk Action Delete Data Functions *******
 *********************************************************/
