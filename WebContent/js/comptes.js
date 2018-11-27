function deleteUser(id) {
	
	swal({
		  title: "Voulez vous vraiment supprimer cet utilisateur?",
		  text: "Une fois supprimé, vous ne pourrez plus récupérer ce compte!",
		  icon: "warning",
		  buttons: true,
		  dangerMode: true,
		})
		.then((willDelete) => {
		  if (willDelete) {
			  $.ajax({
					url : "userServlet",
					type : "POST",
					data : {
						action : "delete",
						id : id
					},
					success : function() {
						$("#tr" + id).remove();
						swal("Succès!", {
						      icon: "success",
						    });
					},
					error : function() {
						swal("Poof! Erreur!", {
						      icon: "error",
						    });
					}
				});
		  } 
		});
	
	
}