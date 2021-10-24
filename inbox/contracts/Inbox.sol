pragma solidity ^0.4.17;

contract Inbox{

    string public message;

    function setMessage(string newMessage)public{
        message = newMessage;
    }

    function Inbox(string initialMessage)public{
        message = initialMessage;
    }
}