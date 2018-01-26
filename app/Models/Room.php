<?php
/**
 * Created by PhpStorm.
 * User: slobodansekulic
 * Date: 1/25/18
 * Time: 11:19 PM
 */

namespace App\Models;


use Illuminate\Database\Eloquent\Model;

class Room extends Model
{
    protected $fillable = [
        'name',
        'area',
        'floor'
    ];

    /**
     * Returns apartment that the floor is associated to.
     *
     * @return \Illuminate\Database\Eloquent\Relations\BelongsTo Parent building
     *
     * @since 1.0
     * @author Slobodan Sekulic
     */
    public function apartment() {
        return $this->belongsTo('App\Models\Apartment', 'apartment', 'id');
    }
}