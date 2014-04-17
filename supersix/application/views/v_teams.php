<div class="">
 <table>
 <tr><th>Team Code</th><th>Team Name</th><th>Team Short</th><th>Team Group</th><th>Division</th></tr>
 	<?php foreach($teams as $team) { ?> 
 		<tr><td><?php echo $team['code']; ?></td><td><?php echo $team['name']; ?></td><td><?php echo $team['short']; ?></td><td><?php echo $team['group']; ?></td><td><?php echo $team['division']; ?></td></tr>
 	<?php } ?>
 </table>
</div>

<h2>Add new team</h2>
<form method="POST" target="league/teams">
	
	School Code : <input name="code">
	Name : <input name="name">
	Short : <input name="short">
	Group : <input name="group">
	Division : <input name="division">

	<input type="submit" value="Save">

</form>

