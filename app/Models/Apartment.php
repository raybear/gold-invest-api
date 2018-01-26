<?php
/**
 * Created by PhpStorm.
 * User: slobodansekulic
 * Date: 1/25/18
 * Time: 12:55 AM
 */

namespace App\Models;


use Illuminate\Database\Eloquent\Model;

class Apartment extends Model
{
    protected $fillable = [
        'name',
		'area',
		'side',
		'rooms',
		'status',
		'imgHailight',
		'imgBase',
		'imgModel',
    ];

    protected $hidden = [
        'building'
    ];

    /**
     * Returns floor that the apartment is associated to.
     *
     * @return \Illuminate\Database\Eloquent\Relations\BelongsTo Parent building
     *
     * @since 1.0
     * @author Slobodan Sekulic
     */
    public function floor() {
        return $this->belongsTo('App\Models\Floor', 'floor', 'id');
    }

    public function rooms()
    {
        return $this->hasMany('App\Models\Room', 'id', 'apartment');
    }

}