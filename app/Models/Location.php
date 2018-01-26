<?php
/**
 * Created by PhpStorm.
 * User: slobodansekulic
 * Date: 1/23/18
 * Time: 11:14 PM
 */

namespace App\Models;

use Illuminate\Database\Eloquent\Model;



class Location extends Model
{
    protected $fillable = [
     'locations',
     'adress',
     'parcela',
     'lat',
     'lng'
    ];

    /**
     * Returns building that the location is associated to.
     *
     * @return \Illuminate\Database\Eloquent\Relations\BelongsTo Parent building
     *
     * @since 1.0
     * @author Slobodan Sekulic
     */
    public function building() {
        return $this->belongsTo('App\Models\Building', 'building', 'id');
    }
}