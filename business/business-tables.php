<!DOCTYPE html>
<html>
	<head>
		<title>Restaurant Name</title>
		<!--script src="//ajax.googleapis.com/ajax/libs/jquery/1.11.2/jquery.mis.js"></script-->
		<script src="https://ajax.googleapis.com/ajax/libs/jquery/3.1.1/jquery.min.js"></script>
		<meta charset="utf-8">
 		<meta http-equiv="X-UA-Compatible" content="IE=edge">
 		<meta name="viewport" content="width=device-width, initial-scale=1">
		<link rel="stylesheet" href="https://maxcdn.bootstrapcdn.com/bootstrap/3.3.7/css/bootstrap.min.css" integrity="sha384-BVYiiSIFeK1dGmJRAkycuHAHRg32OmUcww7on3RYdg4Va+PmSTsz/K68vbdEjh4u" crossorigin="anonymous">
		<script>
		function createTable(key,value){
			$.each(data, function(){
				alert(key + ": " + value);
				value++;
			)};
		},
			$(document).ready(function(createTable){
				$('.business-tables').click(function(event){
					$.ajax({
						type: 'get',
						url: 'business-db.php',
						data: $(this).val('id'),
						success: function(data){
							var data = $.parseJSON(data);
							console.log(data);
							alert(data);
							createTable(data);
						},
						error: function(){
								console.log("error");
										alert("Error");
						}
						});
					});

			});
		</script>

		<style type="text/css">
			.container{
				margin: 0 auto;
				max-width: 100%;
			}
			.row{
				padding: 5px;
				text-align:center;
			}
			#barName{
				text-align: center;
			}
			</style>


		</head>
	<body>
		<div class="container">
			<div class="col-xs-12">
              <!-- My code starts here. Delete this comment after styling. -->

				<input id="test" type="button" class="business-tables">Button</input>
				<button class='business-tables' id="number"></button>

</script>

			</div>
		</div>
	</body>
</html>
