import React from "react";

export default function RoomContent(props) {

  return (
    
    <div id="room-content">
      <h3>{props.roomName}</h3>
      <p>{props.roomBody}</p>

      <button
        id={`room${props.currentRoom}-button`}
        onClick={props.currentRoom !== "4" ? props.createJoin : props.fightBug}
        style={
        !props.buggy && props.currentRoom !== "7" || props.roomName === "Main Corridor" ? {display: "none"} : null
        }
      >
        {props.currentRoom === "4" && props.buggy
          ? "Attack the bug!"
          : "Take item"}
      </button>
    </div>
  );
}
