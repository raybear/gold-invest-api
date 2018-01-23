<?php

namespace App\Exceptions;

use DateTime;

class HttpErrorException
{
    private $status;

    private $message;

    private $date;

    public function __construct($status, $message)
    {
        $this->status = $status;
        $this->message = $message;

        $this->date = new DateTime('now');
    }

    public function get()
    {
        return [
            'status' => $this->status,
            'message' => $this->message,
            'date' => $this->date
        ];
    }
}