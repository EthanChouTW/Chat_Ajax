<?php

// lets fetch the value of last_displayed_chat_id
$data = $_REQUEST;
$last_displayed_chat_id = $data['last_displayed_chat_id'];

// connect to MySQL Server
$con = mysqli_connect('localhost', 'root', '', 'group_chat');

//if user_name and user_comment is avaliable then
// add it in table chats
if (
    isset($data['user_name']) &&
    isset( $data['user_comment'])
  ) {

  $insert = "
    INSERT INTO chat(user_name, user_comment)
    VALUES ( '".$data['user_name']."', '".$data['user_comment']."')
    ";
    $insert_result = mysqli_query( $con, $insert);
}

$select = "SELECT *
              FROM chat
              WHERE chat_id > '".$data['last_displayed_chat_id']."'
          ";
$result = mysqli_query( $con, $select );

$arr = array();
$row_count = mysqli_num_rows( $result );

if ( $row_count > 0) {
  while ($row = mysqli_fetch_array($result)) {
    array_push($arr, $row);
  }
}

// Close the MySQL Connection
mysqli_close( $con );

// Return the response as JSON

echo json_encode($arr);
 ?>