<?php
/**
 * Created by PhpStorm.
 * User: slobodansekulic
 * Date: 1/24/18
 * Time: 1:56 AM
 */

namespace App\Models;

use Illuminate\Database\Eloquent\Model;


class Image extends Model
{
    protected $fillable = [
        'name'
    ];

    /**
     * Returns building that the image is associated to.
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