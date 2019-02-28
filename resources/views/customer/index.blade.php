<!DOCTYPE html>
<html>
<head>
	<title>Trang chủ</title>
</head>
<body>
	<table border="1">
				<thead>
					<tr>
						<th>column</th>
						<th>column</th>
						<th>column</th>
						<th>column</th>
						<th>column</th>
					</tr>
				</thead>
				<tbody>
					@foreach($game as $g)
					<tr >
						<th>{{ $g->ID }}</th>
						<th>{{ $g->USERNAME }}</th>
						<th>{{ $g->PASSWORD_KEY }}</th>
						<th>{{ $g->NAME }}</th>
						<th>{{ $g->EMAIL }}</th>
						<th>{{ $g->PHONE }}</th>
						<th>{{ $g->CURRENT_ADDRESS }}</th>
					</tr>
					@endforeach
				</tbody>
			</table>
</body>
</html>