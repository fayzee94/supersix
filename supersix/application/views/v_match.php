<h2>Matches</h2>
<table>
	<tr><th>TEAM A</th><th></th><th>V</th><th>S</th><th></th><th>TEAM B</th><th width="150px">STAGE</th></tr>
	<?php foreach($matches as $match) { ?>
	<form method="POST" target="match/lists/<?php echo $match['id']; ?>" action="">
			<tr>
			<td align="center"><?php echo $match['short_a']; ?></td>
			<td align="center"><input type="text" name="h_s" size="3" align="center"/></td>
			<td><?php echo $match['h_s']; ?></td>   
			<td><?php echo $match['a_s']; ?></td> 
			<td align="center"><input type="text" name="a_s" size="3" align="center"/></td>
			<td align="center"><?php echo $match['short_b']; ?></td>
			<td align="center"><?php echo $match['stage']; ?></td>
			<input type="hidden" name="m_id" value="<?php echo $match['id']; ?>">
			<td><input type="submit" value="Save"></td>
			<td><input type="submit" value="Delete"></td>
			
			
  </tr>
		    </tr>
	</form>	    
	<?php } ?>
</table>

<h3>Add Match</h3>
<form method="POST" target="match/lists">
<select name="h_id">
	<?php 	foreach($teams as $team) { ?>
	<option value="<?php echo $team['id']; ?>"><?php echo $team['short_a']; ?></option>
	<?php } ?>
</select>

VS

<select name="a_id">
	<?php 	foreach($teams as $team) { ?>
	<option value="<?php echo $team['id']; ?>"><?php echo $team['short_a']; ?></option>
	<?php } ?>
</select>
</select>

<select name="stage">
	<option value="group"> Pusingan Awal</option>
	<option value="playoff"> Play Off</option>
	<option value="QF-Bowl"> Quarter Final - Bowl</option>
	<option value="QF-Plate"> Quarter Final - Plate</option>
	<option value="SF-Bowl"> Semi Final - Bowl</option>
	<option value="SF-Plate"> Semi Final - Plate</option>
	<option value="FinalPlate"> Final - Plate</option>
	<option value="FinalBowl"> Final - Bowl</option>
</select>

<input type="submit" value="Save">
</form>
