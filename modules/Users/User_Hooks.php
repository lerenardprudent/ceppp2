<?php

/*
 * To change this license header, choose License Headers in Project Properties.
 * To change this template file, choose Tools | Templates
 * and open the template in the editor.
 */

/**
 * Description of User_Hooks
 *
 * @author p0070611
 */
class User_Hooks {
  function now() {
    $localTz = "America/Montreal";
    $dt = new DateTime("now", new DateTimeZone($localTz));
    return $dt->format('Y-m-d H:i:s');
  }
  function recordLoginDateTime($user, $event)
  {
    $user->date_last_login_c = $this->now();
    $user->save();
  }
  
  function recordLogoutDateTime($user, $event)
  {
    $user->date_last_logout_c = $this->now();
    $user->save();
  }
}
