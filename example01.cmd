# Automatically generated script: Friday April 15, 09:15 2016
\set noalias = 1
set saved_path = `execute("oppwf")`
opcf /

# Node obj (/obj)
opcf obj

# Node bubblesShapes (Object/geo)
opadd -e -n geo bubblesShapes
oplocate -x 5.8359300000000003 -y 5.8090099999999998 bubblesShapes
opspareds '    group { 	name	"stdswitcher5" 	label	"Transform"  	parm { 	    name	"keeppos" 	    baseparm 	    label	"Keep Position When Parenting" 	    joinnext 	    export	none 	} 	parm { 	    name	"pre_xform" 	    baseparm 	    label	"Pre-transform" 	    export	none 	} 	parm { 	    name	"xOrd" 	    baseparm 	    label	"Transform Order" 	    joinnext 	    export	none 	} 	parm { 	    name	"rOrd" 	    baseparm 	    label	"Rotate Order" 	    export	none 	} 	parm { 	    name	"t" 	    baseparm 	    label	"Translate" 	    export	all 	} 	parm { 	    name	"r" 	    baseparm 	    label	"Rotate" 	    export	all 	} 	parm { 	    name	"s" 	    baseparm 	    label	"Scale" 	    export	none 	} 	parm { 	    name	"p" 	    baseparm 	    label	"Pivot" 	    export	none 	} 	parm { 	    name	"scale" 	    baseparm 	    label	"Uniform Scale" 	    export	none 	} 	parm { 	    name	"lookatpath" 	    baseparm 	    label	"Look At" 	    export	none 	} 	parm { 	    name	"lookup" 	    baseparm 	    label	"Look At Up Vector" 	    export	none 	} 	parm { 	    name	"pathobjpath" 	    baseparm 	    label	"Path Object" 	    export	none 	} 	parm { 	    name	"roll" 	    baseparm 	    label	"Roll" 	    export	none 	} 	parm { 	    name	"pos" 	    baseparm 	    label	"Position" 	    export	none 	} 	parm { 	    name	"uparmtype" 	    baseparm 	    label	"Parameterization" 	    export	none 	} 	parm { 	    name	"pathorient" 	    baseparm 	    label	"Orient Along Path" 	    export	none 	} 	parm { 	    name	"up" 	    baseparm 	    label	"Orient Up Vector" 	    export	none 	} 	parm { 	    name	"bank" 	    baseparm 	    label	"Auto-Bank factor" 	    export	none 	}     }      group { 	name	"stdswitcher5_1" 	label	"Material"  	parm { 	    name	"shop_materialpath" 	    baseparm 	    label	"Material" 	    joinnext 	    export	none 	} 	parm { 	    name	"shop_materialopts" 	    baseparm 	    label	"Options" 	    export	none 	}     }      group { 	name	"stdswitcher5_2" 	label	"Render"  	parm { 	    name	"tdisplay" 	    baseparm 	    label	"Display" 	    joinnext 	    export	none 	} 	parm { 	    name	"display" 	    baseparm 	    label	"Display" 	    export	none 	} 	parm { 	    name	"viewportlod" 	    label	"Display As" 	    type	ordinal 	    default	{ "full" } 	    help	"Choose how the object\'s geometry should be rendered in the viewport" 	    menu	{ 		"full"	"Full Geometry" 		"points"	"Point Cloud" 		"box"	"Bounding Box" 		"centroid"	"Centroid" 		"hidden"	"Hidden" 		"subd"	"Subdivision Surface" 	    } 	    range	{ 0 1 } 	    export	none 	    parmtag	{ "spare_category" "Render" } 	} 	parm { 	    name	"vm_rendervisibility" 	    label	"Render Visibility" 	    type	string 	    default	{ "*" } 	    menureplace	{ 		"*"	"Visible to all" 		"primary"	"Visible only to primary rays" 		"primary|shadow"	"Visible only to primary and shadow rays" 		"-primary"	"Invisible to primary rays (Phantom)" 		"-diffuse"	"Invisible to diffuse rays" 		"-diffuse&-reflect&-refract"	"Invisible to secondary rays" 		""	"Invisible (Unrenderable)" 	    } 	    range	{ 0 1 } 	    export	none 	    parmtag	{ "spare_category" "Render" } 	} 	parm { 	    name	"vm_rendersubd" 	    label	"Render Polygons As Subdivision (Mantra)" 	    type	toggle 	    default	{ "0" } 	    range	{ 0 1 } 	    export	none 	    parmtag	{ "spare_category" "Geometry" } 	} 	parm { 	    name	"vm_subdstyle" 	    label	"Subdivision Style" 	    type	string 	    default	{ "mantra_catclark" } 	    hidewhen	"{ vm_rendersubd == 0 }" 	    menu	{ 		"mantra_catclark"	"Mantra Catmull-Clark" 		"osd_catclark"	"OpenSubdiv Catmull-Clark" 	    } 	    range	{ 0 1 } 	    export	none 	    parmtag	{ "spare_category" "Geometry" } 	} 	parm { 	    name	"vm_subdgroup" 	    label	"Subdivision Group" 	    type	string 	    default	{ "" } 	    hidewhen	"{ vm_rendersubd == 0 }" 	    range	{ 0 1 } 	    export	none 	    parmtag	{ "spare_category" "Geometry" } 	} 	group { 	    name	"folder0" 	    label	"Shading"  	    parm { 		name	"categories" 		label	"Categories" 		type	string 		default	{ "" } 		help	"A list of tags which can be used to select the object" 		range	{ 0 1 } 		export	none 		parmtag	{ "spare_category" "Shading" } 	    } 	    parm { 		name	"reflectmask" 		label	"Reflection Mask" 		type	oplist 		default	{ "*" } 		help	"Objects that will be reflected on this object." 		range	{ 0 1 } 		export	none 		parmtag	{ "opexpand" "1" } 		parmtag	{ "opfilter" "!!OBJ/GEOMETRY!!" } 		parmtag	{ "oprelative" "/obj" } 		parmtag	{ "spare_category" "Shading" } 	    } 	    parm { 		name	"refractmask" 		label	"Refraction Mask" 		type	oplist 		default	{ "*" } 		help	"Objects that will be refracted on this object." 		range	{ 0 1 } 		export	none 		parmtag	{ "opexpand" "1" } 		parmtag	{ "opfilter" "!!OBJ/GEOMETRY!!" } 		parmtag	{ "oprelative" "/obj" } 		parmtag	{ "spare_category" "Shading" } 	    } 	    parm { 		name	"lightmask" 		label	"Light Mask" 		type	oplist 		default	{ "*" } 		help	"Lights that illuminate this object." 		range	{ 0 1 } 		export	none 		parmtag	{ "opexpand" "1" } 		parmtag	{ "opfilter" "!!OBJ/LIGHT!!" } 		parmtag	{ "oprelative" "/obj" } 		parmtag	{ "spare_category" "Shading" } 	    } 	    parm { 		name	"vm_volumefilter" 		label	"Volume Filter" 		type	string 		default	{ "box" } 		menu	{ 		    "box"	"Box Filter" 		    "gaussian"	"Gaussian" 		    "bartlett"	"Bartlett (triangle)" 		    "catrom"	"Catmull-Rom" 		    "hanning"	"Hanning" 		    "blackman"	"Blackman" 		    "sinc"	"Sinc (sharpening)" 		} 		range	{ 0 1 } 		export	none 		parmtag	{ "spare_category" "Shading" } 	    } 	    parm { 		name	"vm_volumefilterwidth" 		label	"Volume Filter Width" 		type	float 		default	{ "1" } 		range	{ 0.001 5 } 		export	none 		parmtag	{ "spare_category" "Shading" } 	    } 	    parm { 		name	"vm_matte" 		label	"Matte shading" 		type	toggle 		default	{ "0" } 		range	{ 0 1 } 		export	none 		parmtag	{ "spare_category" "Shading" } 	    } 	    parm { 		name	"vm_rayshade" 		label	"Raytrace Shading" 		type	toggle 		default	{ "0" } 		range	{ 0 1 } 		export	none 		parmtag	{ "spare_category" "Shading" } 	    } 	}  	group { 	    name	"folder0_1" 	    label	"Sampling"  	    parm { 		name	"geo_velocityblur" 		label	"Geometry Velocity Blur" 		type	toggle 		default	{ "0" } 		disablewhen	"{ allowmotionblur == 0 }" 		range	{ 0 1 } 		export	none 		parmtag	{ "spare_category" "Sampling" } 	    } 	}  	group { 	    name	"folder0_2" 	    label	"Dicing"  	    parm { 		name	"vm_shadingquality" 		label	"Shading Quality" 		type	float 		default	{ "1" } 		range	{ 0 10 } 		export	none 		parmtag	{ "spare_category" "Dicing" } 	    } 	    parm { 		name	"vm_flatness" 		label	"Dicing Flatness" 		type	float 		default	{ "0.05" } 		range	{ 0 1 } 		export	none 		parmtag	{ "spare_category" "Dicing" } 	    } 	    parm { 		name	"vm_raypredice" 		label	"Ray Predicing" 		type	integer 		default	{ "0" } 		menu	{ 		    "0"	"Disable Predicing" 		    "1"	"Full Predicing" 		    "2"	"Precompute Bounds" 		} 		range	{ 0 10 } 		export	none 		parmtag	{ "spare_category" "Dicing" } 	    } 	    parm { 		name	"vm_curvesurface" 		label	"Shade Curves As Surfaces" 		type	toggle 		default	{ "0" } 		range	{ 0 1 } 		export	none 		parmtag	{ "spare_category" "Dicing" } 	    } 	}  	group { 	    name	"folder0_3" 	    label	"Geometry"  	    parm { 		name	"vm_rmbackface" 		label	"Backface Removal" 		type	toggle 		default	{ "0" } 		range	{ 0 1 } 		export	none 		parmtag	{ "spare_category" "Geometry" } 	    } 	    parm { 		name	"shop_geometrypath" 		label	"Procedural Shader" 		type	oppath 		default	{ "" } 		range	{ 0 1 } 		export	none 		parmtag	{ "opfilter" "!!SHOP/GEOMETRY!!" } 		parmtag	{ "oprelative" "." } 		parmtag	{ "spare_category" "Geometry" } 	    } 	    parm { 		name	"vm_forcegeometry" 		label	"Force Procedural Geometry Output" 		type	toggle 		default	{ "1" } 		range	{ 0 1 } 		export	none 		parmtag	{ "spare_category" "Geometry" } 	    } 	    parm { 		name	"vm_renderpoints" 		label	"Render As Points (Mantra)" 		type	integer 		default	{ "2" } 		menu	{ 		    "0"	"No Point Rendering" 		    "1"	"Render Only Points" 		    "2"	"Render Unconnected Points" 		} 		range	{ 0 10 } 		export	none 		parmtag	{ "spare_category" "Geometry" } 	    } 	    parm { 		name	"vm_renderpointsas" 		label	"Render Points As (Mantra)" 		type	integer 		default	{ "0" } 		disablewhen	"{ vm_renderpoints == 0 }" 		menu	{ 		    "0"	"Spheres" 		    "1"	"Circles" 		} 		range	{ 0 10 } 		export	none 		parmtag	{ "spare_category" "Geometry" } 	    } 	    parm { 		name	"vm_usenforpoints" 		label	"Use N For Point Rendering" 		type	toggle 		default	{ "0" } 		disablewhen	"{ vm_renderpoints == 0 }" 		range	{ 0 1 } 		export	none 		parmtag	{ "spare_category" "Geometry" } 	    } 	    parm { 		name	"vm_pointscale" 		label	"Point Scale" 		type	float 		default	{ "1" } 		disablewhen	"{ vm_renderpoints == 0 }" 		range	{ 0! 10 } 		export	none 		parmtag	{ "spare_category" "Geometry" } 	    } 	    parm { 		name	"vm_pscalediameter" 		label	"Treat Point Scale as Diameter Instead of Radius" 		type	toggle 		default	{ "0" } 		range	{ 0 1 } 		export	none 		parmtag	{ "spare_category" "Geometry" } 	    } 	    parm { 		name	"vm_metavolume" 		label	"Metaballs as Volume" 		type	toggle 		default	{ "0" } 		range	{ 0 1 } 		export	none 		parmtag	{ "spare_category" "Geometry" } 	    } 	    parm { 		name	"vm_coving" 		label	"Coving" 		type	integer 		default	{ "1" } 		menu	{ 		    "0"	"Disable Coving" 		    "1"	"Coving for displacement/sub-d" 		    "2"	"Coving for all primitives" 		} 		range	{ 0 10 } 		export	none 		parmtag	{ "spare_category" "Geometry" } 	    } 	    parm { 		name	"vm_materialoverride" 		label	"Material Override" 		type	string 		default	{ "compact" } 		menu	{ 		    "none"	"Disabled" 		    "full"	"Evaluate for Each Primitve/Point" 		    "compact"	"Evaluate Once" 		} 		range	{ 0 1 } 		export	none 		parmtag	{ "spare_category" "Geometry" } 	    } 	    parm { 		name	"vm_computeN" 		label	"Automatically Compute Normals" 		type	toggle 		default	{ "1" } 		range	{ 0 1 } 		export	none 		parmtag	{ "spare_category" "Geometry" } 	    } 	    parm { 		name	"vm_overridedetail" 		label	"Ignore Geometry Attribute Shaders" 		type	toggle 		default	{ "0" } 		range	{ 0 1 } 		export	none 		parmtag	{ "spare_category" "Geometry" } 	    } 	}      }      group { 	name	"stdswitcher5_3" 	label	"Misc"  	parm { 	    name	"use_dcolor" 	    baseparm 	    label	"Set Wireframe Color" 	    export	none 	} 	parm { 	    name	"dcolor" 	    baseparm 	    label	"Wireframe Color" 	    export	none 	} 	parm { 	    name	"picking" 	    baseparm 	    label	"Viewport Selecting Enabled" 	    export	none 	} 	parm { 	    name	"pickscript" 	    baseparm 	    label	"Select Script" 	    export	none 	} 	parm { 	    name	"caching" 	    baseparm 	    label	"Cache Object Transform" 	    export	none 	} 	parm { 	    name	"vport_shadeopen" 	    baseparm 	    label	"Shade Open Curves In Viewport" 	    export	none 	} 	parm { 	    name	"vport_displayassubdiv" 	    baseparm 	    label	"Display as Subdivision in Viewport" 	    invisible 	    export	none 	}     }      parm { 	name	"childcomp" 	baseparm 	label	"Child Compensation" 	export	none     }     parm { 	name	"lookupobjpath" 	baseparm 	label	"Look Up Object" 	export	none     }     parm { 	name	"vport_onionskin" 	baseparm 	label	"Onion Skinning" 	export	none     } ' bubblesShapes
opset -S on bubblesShapes
opparm -V 15.0.416 bubblesShapes stdswitcher ( 0 0 0 0 ) keeppos ( off ) childcomp ( off ) pre_xform ( clean ) xOrd ( srt ) rOrd ( xyz ) t ( 0 0 0 ) r ( 0 0 0 ) s ( 1 1 1 ) p ( 0 0 0 ) scale ( 1 ) lookatpath ( "" ) lookupobjpath ( "" ) lookup ( on ) pathobjpath ( "" ) roll ( 0 ) pos ( 0 ) uparmtype ( arc ) pathorient ( 1 ) up ( 0 1 0 ) bank ( 0 ) shop_materialpath ( "" ) shop_materialopts ( override ) tdisplay ( off ) display ( 1 ) use_dcolor ( off ) dcolor ( 1 1 1 ) picking ( on ) pickscript ( "" ) caching ( off ) vport_shadeopen ( off ) vport_displayassubdiv ( off ) vport_onionskin ( off ) stdswitcher5 ( 0 0 0 0 ) viewportlod ( full ) vm_rendervisibility ( * ) vm_rendersubd ( off ) vm_subdstyle ( mantra_catclark ) vm_subdgroup ( "" ) folder0 ( 0 0 0 0 ) categories ( "" ) reflectmask ( * ) refractmask ( * ) lightmask ( * ) vm_volumefilter ( box ) vm_volumefilterwidth ( 1 ) vm_matte ( off ) vm_rayshade ( off ) geo_velocityblur ( off ) vm_shadingquality ( 1 ) vm_flatness ( 0.050000000000000003 ) vm_raypredice ( 0 ) vm_curvesurface ( off ) vm_rmbackface ( off ) shop_geometrypath ( "" ) vm_forcegeometry ( on ) vm_renderpoints ( 2 ) vm_renderpointsas ( 0 ) vm_usenforpoints ( off ) vm_pointscale ( 1 ) vm_pscalediameter ( off ) vm_metavolume ( off ) vm_coving ( 1 ) vm_materialoverride ( compact ) vm_computeN ( on ) vm_overridedetail ( off )
chlock bubblesShapes -*
chautoscope bubblesShapes -* +tx +ty +tz +rx +ry +rz +sx +sy +sz
opcolor -c 0.80000001192092896 0.80000001192092896 0.80000001192092896 bubblesShapes
opset -d on -r off -h off -f off -y off -t off -l off -s off -u off -c off -e on -b off -x off bubblesShapes
opexprlanguage -s hscript bubblesShapes
opuserdata -n '___Version___' -v '15.0.416' bubblesShapes
opcf bubblesShapes

# Node spaceFillingDiagram (Sop/subnet)
opadd -e -n subnet spaceFillingDiagram
oplocate -x -3.3157299999999998 -y 4.2206900000000003 spaceFillingDiagram
opspareds '    parm { 	name	"label1" 	baseparm 	label	"Input #1 Label" 	invisible 	export	all     }     parm { 	name	"label2" 	baseparm 	label	"Input #2 Label" 	invisible 	export	all     }     parm { 	name	"label3" 	baseparm 	label	"Input #3 Label" 	invisible 	export	all     }     parm { 	name	"label4" 	baseparm 	label	"Input #4 Label" 	invisible 	export	all     }     parm { 	name	"filmthickness" 	label	"Film Thickness" 	type	float 	default	{ "0" } 	help	"Thickenss of water film between neighbouring bubbles." 	range	{ 0! 1 } 	export	none     }     parm { 	name	"avoidoverlapping" 	label	"Avoid Overlapping" 	type	toggle 	default	{ "1" } 	help	"Reduce pscale of particles overlapping neighbouring bubbles centers." 	range	{ 0 1 } 	export	none     } ' spaceFillingDiagram
chblockbegin
chadd -t 0 0 spaceFillingDiagram filmthickness
chkey -t 0 -v 0.5 -m 0 -a 0 -A 0 -T a  -F 'ch("../../controls/filmthickness")' spaceFillingDiagram/filmthickness
chblockend
opparm -V 15.0.416 spaceFillingDiagram label1 ( 'Sub-Network Input #1' ) label2 ( 'Sub-Network Input #2' ) label3 ( 'Sub-Network Input #3' ) label4 ( 'Sub-Network Input #4' ) filmthickness ( filmthickness ) avoidoverlapping ( on )
chlock spaceFillingDiagram -*
chautoscope spaceFillingDiagram -*
opcolor -c 0 0.40000000596046448 1 spaceFillingDiagram
opset -d off -r off -h off -f off -y off -t off -l off -s off -u off -c off -e on -b off spaceFillingDiagram
opexprlanguage -s hscript spaceFillingDiagram
opuserdata -n '___Version___' -v '15.0.416' spaceFillingDiagram
opcf spaceFillingDiagram

# Node connectadjacentpieces (Sop/connectadjacentpieces)
opadd -e -n connectadjacentpieces connectadjacentpieces
oplocate -x -1.19679 -y 3.9946700000000002 connectadjacentpieces
opspareds "" connectadjacentpieces
opparm -V 1 connectadjacentpieces connecttype ( pointcloud ) nptsperarea ( 100 ) relaxpoints ( off ) relaxiterations ( 1 ) uniformradius ( off ) searchradius ( 10 ) maxsearchpoints ( 200 ) maxconnections ( 4 ) distancefromcentroid ( 0 ) createlengthattrib ( on ) lengthattrib ( restlength )
chlock connectadjacentpieces -*
chautoscope connectadjacentpieces -*
opcolor -c 0.80000001192092896 0.80000001192092896 0.80000001192092896 connectadjacentpieces
opset -d off -r off -h off -f off -y off -t off -l off -s off -u off -c off -e on -b off connectadjacentpieces
opexprlanguage -s hscript connectadjacentpieces
opuserdata -n '___Version___' -v '1' connectadjacentpieces
opuserdata -n '___toolcount___' -v '6' connectadjacentpieces
opuserdata -n '___toolid___' -v 'dynamics_gluenetwork' connectadjacentpieces

# Node foreach_cell (Sop/foreach)
opadd -e -n foreach foreach_cell
oplocate -x 0.62564299999999995 -y -8.1910000000000007 foreach_cell
opspareds '    parm { 	name	"fortype" 	baseparm 	label	"For" 	export	none     }     parm { 	name	"forstamp" 	baseparm 	label	"Stamp Name" 	export	none     }     parm { 	name	"foridxstamp" 	baseparm 	label	"Index Stamp Name" 	export	none     }     parm { 	name	"groupmask" 	baseparm 	label	"Group Mask" 	export	none     }     parm { 	name	"attrib" 	baseparm 	label	"Attribute" 	export	none     }     parm { 	name	"attribtol" 	baseparm 	label	"Tolerance" 	export	none     }     parm { 	name	"numrange" 	baseparm 	label	"Number Range" 	export	none     }     parm { 	name	"usemaxiter" 	baseparm 	label	"Max Iterations" 	joinnext 	export	none     }     parm { 	name	"maxiter" 	baseparm 	label	"Max Iterations" 	export	none     }     parm { 	name	"mergeresults" 	baseparm 	label	"Merge Results" 	export	none     }     parm { 	name	"eachpoint" 	baseparm 	label	"Apply to Points" 	export	none     }     parm { 	name	"stopcondition" 	baseparm 	label	"Stop Condition" 	export	none     }     parm { 	name	"sepparm" 	label	"Separator" 	type	separator 	default	{ "" } 	range	{ 0 1 } 	export	none     }     parm { 	name	"offset" 	label	"Offset" 	type	float 	default	{ "0" } 	range	{ 0! 1 } 	export	none     } ' foreach_cell
chblockbegin
chadd -t 0 0 foreach_cell numrange2
chkey -t 0 -v 50 -m 0 -a 0 -A 0 -T a  -F 'npoints("../IN")-1' foreach_cell/numrange2
chadd -t 0 0 foreach_cell offset
chkey -t 0 -v 0.029999999999999999 -m 0 -a 0 -A 0 -T a  -F 'ch("../filmthickness")/2.0' foreach_cell/offset
chblockend
opparm -V 15.0.416 foreach_cell fortype ( number ) forstamp ( FORVALUE ) foridxstamp ( FORIDXVALUE ) groupmask ( "" ) attrib ( "" ) attribtol ( 0.0010000000474974513 ) numrange ( 0 numrange2 1 ) usemaxiter ( off ) maxiter ( 10 ) mergeresults ( on ) eachpoint ( off ) stopcondition ( 0 ) sepparm ( ) offset ( offset )
chlock foreach_cell -*
chautoscope foreach_cell -*
opcolor -c 0.80000001192092896 0.80000001192092896 0.80000001192092896 foreach_cell
opset -d off -r off -h off -f off -y off -t off -l off -s off -u off -c off -e on -b off foreach_cell
opexprlanguage -s hscript foreach_cell
opuserdata -n '___Version___' -v '15.0.416' foreach_cell
opcf foreach_cell

# Node voronoiFracture_internal (Sop/voronoifracture)
opadd -e -n voronoifracture voronoiFracture_internal
oplocate -x 2.2221700000000002 -y -4.5865600000000004 voronoiFracture_internal
opspareds "" voronoiFracture_internal
opparm voronoiFracture_internal  depthnoisescaleramp ( 2 )
opparm -V 3 voronoiFracture_internal group ( "" ) fuse_points ( on ) fuse_dist ( 0.001 ) createinside ( on ) connect ( on ) cuspnormals ( on ) cuspangle ( 15 ) cuspouternormals ( on ) cuspouterangle ( 60 ) docusp ( on ) visualizepieces ( off ) usecellptgroup ( off ) cellgroup ( 0 ) clustermode ( 0 ) settings ( 3 3 3 3 3 ) triangulation ( 3 ) partition ( 1 ) cutplaneoffset ( 0 ) optimizecutbycluster ( off ) cluster ( off ) deleteedges ( off ) addclusternoise ( on ) clustersize ( 0.5 0.5 0.5 ) clusteroffset ( 0 0 0 ) clusterjitter ( 1 1 1 ) randomdetach ( off ) detachseed ( 0 ) detachratio ( 0.10000000000000001 ) constraintnetwork ( off ) inclusterstrength ( -1 ) outclusterstrength ( 0 ) clusterattr ( cluster ) clusterattrtol ( 1.0000000000000001e-05 ) fusedist ( 0.001 ) addinteriordetail ( off ) viznoisescale ( off ) planar ( off ) detailsize ( 0.25 ) intnoiseamp ( 0.10000000000000001 ) intnoisetype ( snoise ) intnoisefreq ( 2.5 2.5 2.5 ) intnoiseoffset ( 0 0 0 ) intnoiseturb ( 3 ) hassdfinput ( off ) depthsamplediv ( 50 ) clampmaxdisp ( on ) clampdepthpct ( 0.90000000000000002 ) depthnoisescalebias ( 0.84999999999999998 ) usedepthnoisescaleramp ( off ) depthnoisescaleramp ( 2 ) newg ( on ) groupprefix ( "" ) groupinterior ( airToAir ) groupexterior ( airToLiquid ) newname ( off ) nameprefix ( piece ) copyattributes ( on ) ptattributes ( "" ) primattributes ( id ) keepinternal ( off ) pieceattr ( piece ) cellptattr ( cellpt ) clipptattr ( clippt ) outsideattr ( outside ) depthattr ( depth ) depthnoisescaleramp1pos ( 0 ) depthnoisescaleramp1value ( 0 ) depthnoisescaleramp1interp ( catmull-rom ) depthnoisescaleramp2pos ( 1 ) depthnoisescaleramp2value ( 1 ) depthnoisescaleramp2interp ( catmull-rom )
chlock voronoiFracture_internal -*
chautoscope voronoiFracture_internal -*
opcolor -c 0.80000001192092896 0.80000001192092896 0.80000001192092896 voronoiFracture_internal
opset -d off -r off -h off -f off -y off -t off -l off -s off -u off -c off -e on -b off voronoiFracture_internal
opexprlanguage -s hscript voronoiFracture_internal
opuserdata -n '___Version___' -v '3' voronoiFracture_internal
opuserdata -n '___toolcount___' -v '2' voronoiFracture_internal
opuserdata -n '___toolid___' -v 'geometry_voronoifracture' voronoiFracture_internal

# Node attributeWrangle_toFilmInternal (Sop/attribwrangle)
opadd -e -n attribwrangle attributeWrangle_toFilmInternal
oplocate -x 2.6247699999999998 -y -3.7774299999999998 attributeWrangle_toFilmInternal
opspareds "" attributeWrangle_toFilmInternal
opparm attributeWrangle_toFilmInternal  bindings ( 0 ) groupbindings ( 0 )
opparm attributeWrangle_toFilmInternal folder0 ( 0 0 ) group ( neighbours ) grouptype ( guess ) class ( point ) vex_numcount ( 10 ) vex_threadjobsize ( 1024 ) snippet ( 'v@direction = normalize(v@P - v@centerP);\nfloat l = f@restlength;\nfloat ri = f@pscale / 2.0;\nfloat rj = f@centerS / 2.0;\nfloat toFilm = (l*l - ri*ri + rj*rj ) / (2.0 * l);\n\nif (l > (ri + rj)) toFilm = l - rj + ri ;\ntoFilm = toFilm - ch("../offset");\n\nv@P = v@centerP + 2.0 * toFilm * v@direction;' ) exportlist ( * ) vex_strict ( off ) autobind ( on ) bindings ( 0 ) groupautobind ( on ) groupbindings ( 0 ) vex_cwdpath ( . ) vex_outputmask ( * ) vex_updatenmls ( off ) vex_matchattrib ( id )
chlock attributeWrangle_toFilmInternal -*
chautoscope attributeWrangle_toFilmInternal -*
opcolor -c 0.80000001192092896 0.80000001192092896 0.80000001192092896 attributeWrangle_toFilmInternal
opset -d off -r off -h off -f off -y off -t off -l off -s off -u off -c off -e on -b off attributeWrangle_toFilmInternal
opexprlanguage -s hscript attributeWrangle_toFilmInternal
opuserdata -n '___Version___' -v '' attributeWrangle_toFilmInternal

# Node attributeWrangle_pscaleInternal (Sop/attribwrangle)
opadd -e -n attribwrangle attributeWrangle_pscaleInternal
oplocate -x 3.4233099999999999 -y 0.010929100000000001 attributeWrangle_pscaleInternal
opspareds "" attributeWrangle_pscaleInternal
opparm attributeWrangle_pscaleInternal  bindings ( 0 ) groupbindings ( 0 )
opparm attributeWrangle_pscaleInternal folder0 ( 0 0 ) group ( "" ) grouptype ( guess ) class ( point ) vex_numcount ( 10 ) vex_threadjobsize ( 1024 ) snippet ( 'f@pscale = f@pscale - ch("../offset");' ) exportlist ( * ) vex_strict ( off ) autobind ( on ) bindings ( 0 ) groupautobind ( on ) groupbindings ( 0 ) vex_cwdpath ( . ) vex_outputmask ( * ) vex_updatenmls ( off ) vex_matchattrib ( id )
chlock attributeWrangle_pscaleInternal -*
chautoscope attributeWrangle_pscaleInternal -*
opcolor -c 0.80000001192092896 0.80000001192092896 0.80000001192092896 attributeWrangle_pscaleInternal
opset -d off -r off -h off -f off -y off -t off -l off -s off -u off -c off -e on -b off attributeWrangle_pscaleInternal
opexprlanguage -s hscript attributeWrangle_pscaleInternal
opuserdata -n '___Version___' -v '' attributeWrangle_pscaleInternal

# Node voronoiFracture_external (Sop/voronoifracture)
opadd -e -n voronoifracture voronoiFracture_external
oplocate -x 7.8295500000000002 -y -4.5877800000000004 voronoiFracture_external
opspareds "" voronoiFracture_external
opparm voronoiFracture_external  depthnoisescaleramp ( 2 )
opparm -V 3 voronoiFracture_external group ( "" ) fuse_points ( on ) fuse_dist ( 0.001 ) createinside ( on ) connect ( on ) cuspnormals ( on ) cuspangle ( 15 ) cuspouternormals ( on ) cuspouterangle ( 60 ) docusp ( off ) visualizepieces ( off ) usecellptgroup ( off ) cellgroup ( 0 ) clustermode ( 0 ) settings ( 3 3 3 3 3 ) triangulation ( 3 ) partition ( 1 ) cutplaneoffset ( 0 ) optimizecutbycluster ( off ) cluster ( off ) deleteedges ( off ) addclusternoise ( on ) clustersize ( 0.5 0.5 0.5 ) clusteroffset ( 0 0 0 ) clusterjitter ( 1 1 1 ) randomdetach ( off ) detachseed ( 0 ) detachratio ( 0.10000000000000001 ) constraintnetwork ( off ) inclusterstrength ( -1 ) outclusterstrength ( 0 ) clusterattr ( cluster ) clusterattrtol ( 1.0000000000000001e-05 ) fusedist ( 0.001 ) addinteriordetail ( off ) viznoisescale ( off ) planar ( off ) detailsize ( 0.25 ) intnoiseamp ( 0.10000000000000001 ) intnoisetype ( snoise ) intnoisefreq ( 2.5 2.5 2.5 ) intnoiseoffset ( 0 0 0 ) intnoiseturb ( 3 ) hassdfinput ( off ) depthsamplediv ( 50 ) clampmaxdisp ( on ) clampdepthpct ( 0.90000000000000002 ) depthnoisescalebias ( 0.84999999999999998 ) usedepthnoisescaleramp ( off ) depthnoisescaleramp ( 2 ) newg ( on ) groupprefix ( "" ) groupinterior ( airToAir ) groupexterior ( airToLiquid ) newname ( off ) nameprefix ( piece ) copyattributes ( on ) ptattributes ( "" ) primattributes ( id ) keepinternal ( off ) pieceattr ( piece ) cellptattr ( cellpt ) clipptattr ( clippt ) outsideattr ( outside ) depthattr ( depth ) depthnoisescaleramp1pos ( 0 ) depthnoisescaleramp1value ( 0 ) depthnoisescaleramp1interp ( catmull-rom ) depthnoisescaleramp2pos ( 1 ) depthnoisescaleramp2value ( 1 ) depthnoisescaleramp2interp ( catmull-rom )
chlock voronoiFracture_external -*
chautoscope voronoiFracture_external -*
opcolor -c 0.80000001192092896 0.80000001192092896 0.80000001192092896 voronoiFracture_external
opset -d off -r off -h off -f off -y off -t off -l off -s off -u off -c off -e on -b off voronoiFracture_external
opexprlanguage -s hscript voronoiFracture_external
opuserdata -n '___Version___' -v '3' voronoiFracture_external
opuserdata -n '___toolcount___' -v '2' voronoiFracture_external
opuserdata -n '___toolid___' -v 'geometry_voronoifracture' voronoiFracture_external

# Node attributeWrangle_toFilmExternal (Sop/attribwrangle)
opadd -e -n attribwrangle attributeWrangle_toFilmExternal
oplocate -x 8.2238600000000002 -y -3.7774299999999998 attributeWrangle_toFilmExternal
opspareds "" attributeWrangle_toFilmExternal
opparm attributeWrangle_toFilmExternal  bindings ( 0 ) groupbindings ( 0 )
opparm attributeWrangle_toFilmExternal folder0 ( 0 0 ) group ( neighbours ) grouptype ( guess ) class ( point ) vex_numcount ( 10 ) vex_threadjobsize ( 1024 ) snippet ( 'v@direction = normalize(v@P - v@centerP);\nfloat l = f@restlength;\nfloat ri = f@pscale / 2.0 + ch("../offset");\nfloat rj = f@centerS / 2.0 + ch("../offset");\nfloat toFilm = (l*l - ri*ri + rj*rj ) / (2.0 * l);\n\nif (l > (ri + rj)) toFilm = l - rj + ri ;\n\nv@P = v@centerP + 2.0 * toFilm * v@direction;' ) exportlist ( * ) vex_strict ( off ) autobind ( on ) bindings ( 0 ) groupautobind ( on ) groupbindings ( 0 ) vex_cwdpath ( . ) vex_outputmask ( * ) vex_updatenmls ( off ) vex_matchattrib ( id )
chlock attributeWrangle_toFilmExternal -*
chautoscope attributeWrangle_toFilmExternal -*
opcolor -c 0.80000001192092896 0.80000001192092896 0.80000001192092896 attributeWrangle_toFilmExternal
opset -d off -r off -h off -f off -y off -t off -l off -s off -u off -c off -e on -b off attributeWrangle_toFilmExternal
opexprlanguage -s hscript attributeWrangle_toFilmExternal
opuserdata -n '___Version___' -v '' attributeWrangle_toFilmExternal

# Node attributeWrangle_pscaleExternal (Sop/attribwrangle)
opadd -e -n attribwrangle attributeWrangle_pscaleExternal
oplocate -x 7.8226500000000003 -y 0.010929100000000001 attributeWrangle_pscaleExternal
opspareds "" attributeWrangle_pscaleExternal
opparm attributeWrangle_pscaleExternal  bindings ( 0 ) groupbindings ( 0 )
opparm attributeWrangle_pscaleExternal folder0 ( 0 0 ) group ( "" ) grouptype ( guess ) class ( point ) vex_numcount ( 10 ) vex_threadjobsize ( 1024 ) snippet ( 'f@pscale = f@pscale + 2.0 * ch("../offset");' ) exportlist ( * ) vex_strict ( off ) autobind ( on ) bindings ( 0 ) groupautobind ( on ) groupbindings ( 0 ) vex_cwdpath ( . ) vex_outputmask ( * ) vex_updatenmls ( off ) vex_matchattrib ( id )
chlock attributeWrangle_pscaleExternal -*
chautoscope attributeWrangle_pscaleExternal -*
opcolor -c 0.80000001192092896 0.80000001192092896 0.80000001192092896 attributeWrangle_pscaleExternal
opset -d off -r off -h off -f off -y off -t off -l off -s off -u off -c off -e on -b off attributeWrangle_pscaleExternal
opexprlanguage -s hscript attributeWrangle_pscaleExternal
opuserdata -n '___Version___' -v '' attributeWrangle_pscaleExternal
opcf ..

# Node attributeWrangle_updateLengthRiRj (Sop/attribwrangle)
opadd -e -n attribwrangle attributeWrangle_updateLengthRiRj
oplocate -x -1.19679 -y -1.8091299999999999 attributeWrangle_updateLengthRiRj
opspareds "" attributeWrangle_updateLengthRiRj
opparm attributeWrangle_updateLengthRiRj  bindings ( 0 ) groupbindings ( 0 )
opparm attributeWrangle_updateLengthRiRj folder0 ( 0 0 ) group ( "" ) grouptype ( guess ) class ( primitive ) vex_numcount ( 10 ) vex_threadjobsize ( 1024 ) snippet ( 'f@length = f@restlength;\nf@ri = f@ri / 2.0;\nf@rj = f@rj / 2.0;' ) exportlist ( * ) vex_strict ( off ) autobind ( on ) bindings ( 0 ) groupautobind ( on ) groupbindings ( 0 ) vex_cwdpath ( . ) vex_outputmask ( * ) vex_updatenmls ( off ) vex_matchattrib ( id )
chlock attributeWrangle_updateLengthRiRj -*
chautoscope attributeWrangle_updateLengthRiRj -*
opcolor -c 0.80000001192092896 0.80000001192092896 0.80000001192092896 attributeWrangle_updateLengthRiRj
opset -d off -r off -h off -f off -y off -t off -l off -s off -u off -c off -e on -b off attributeWrangle_updateLengthRiRj
opexprlanguage -s hscript attributeWrangle_updateLengthRiRj
opuserdata -n '___Version___' -v '' attributeWrangle_updateLengthRiRj

# Node attributeWrangle_correctScale (Sop/attribwrangle)
opadd -e -n attribwrangle attributeWrangle_correctScale
oplocate -x -0.37915500000000002 -y 1.4094199999999999 attributeWrangle_correctScale
opspareds "" attributeWrangle_correctScale
opparm attributeWrangle_correctScale  bindings ( 0 ) groupbindings ( 0 )
opparm attributeWrangle_correctScale folder0 ( 0 0 ) group ( "" ) grouptype ( guess ) class ( point ) vex_numcount ( 10 ) vex_threadjobsize ( 1024 ) snippet ( 'f@pscale = min(f@pscale / 2.0, f@minLength) * 2.0;' ) exportlist ( * ) vex_strict ( off ) autobind ( on ) bindings ( 0 ) groupautobind ( on ) groupbindings ( 0 ) vex_cwdpath ( . ) vex_outputmask ( * ) vex_updatenmls ( off ) vex_matchattrib ( id )
chlock attributeWrangle_correctScale -*
chautoscope attributeWrangle_correctScale -*
opcolor -c 0.80000001192092896 0.80000001192092896 0.80000001192092896 attributeWrangle_correctScale
opset -d off -r off -h off -f off -y off -t off -l off -s off -u off -c off -e on -b off attributeWrangle_correctScale
opexprlanguage -s hscript attributeWrangle_correctScale
opuserdata -n '___Version___' -v '' attributeWrangle_correctScale

# Node attributeWrangle_pscaleInternal (Sop/attribwrangle)
opadd -e -n attribwrangle attributeWrangle_pscaleInternal
oplocate -x 5.6318900000000003 -y -7.5762 attributeWrangle_pscaleInternal
opspareds "" attributeWrangle_pscaleInternal
opparm attributeWrangle_pscaleInternal  bindings ( 0 ) groupbindings ( 0 )
opparm attributeWrangle_pscaleInternal folder0 ( 0 0 ) group ( "" ) grouptype ( guess ) class ( point ) vex_numcount ( 10 ) vex_threadjobsize ( 1024 ) snippet ( 'f@pscale = f@pscale - ch("../foreach_cell/offset");' ) exportlist ( * ) vex_strict ( off ) autobind ( on ) bindings ( 0 ) groupautobind ( on ) groupbindings ( 0 ) vex_cwdpath ( . ) vex_outputmask ( * ) vex_updatenmls ( off ) vex_matchattrib ( id )
chlock attributeWrangle_pscaleInternal -*
chautoscope attributeWrangle_pscaleInternal -*
opcolor -c 0.80000001192092896 0.80000001192092896 0.80000001192092896 attributeWrangle_pscaleInternal
opset -d off -r off -h off -f off -y off -t off -l off -s off -u off -c off -e on -b off attributeWrangle_pscaleInternal
opexprlanguage -s hscript attributeWrangle_pscaleInternal
opuserdata -n '___Version___' -v '' attributeWrangle_pscaleInternal

# Node attributeWrangle_pscaleExternal (Sop/attribwrangle)
opadd -e -n attribwrangle attributeWrangle_pscaleExternal
oplocate -x 10.0312 -y -7.5762 attributeWrangle_pscaleExternal
opspareds "" attributeWrangle_pscaleExternal
opparm attributeWrangle_pscaleExternal  bindings ( 0 ) groupbindings ( 0 )
opparm attributeWrangle_pscaleExternal folder0 ( 0 0 ) group ( "" ) grouptype ( guess ) class ( point ) vex_numcount ( 10 ) vex_threadjobsize ( 1024 ) snippet ( 'f@pscale = f@pscale + 2.0 * ch("../foreach_cell/offset");' ) exportlist ( * ) vex_strict ( off ) autobind ( on ) bindings ( 0 ) groupautobind ( on ) groupbindings ( 0 ) vex_cwdpath ( . ) vex_outputmask ( * ) vex_updatenmls ( off ) vex_matchattrib ( id )
chlock attributeWrangle_pscaleExternal -*
chautoscope attributeWrangle_pscaleExternal -*
opcolor -c 0.80000001192092896 0.80000001192092896 0.80000001192092896 attributeWrangle_pscaleExternal
opset -d off -r off -h off -f off -y off -t off -l off -s off -u off -c off -e on -b off attributeWrangle_pscaleExternal
opexprlanguage -s hscript attributeWrangle_pscaleExternal
opuserdata -n '___Version___' -v '' attributeWrangle_pscaleExternal
opcf ..

# Sticky Note Limitations

python -c 'hou.pwd().createStickyNote("Limitations")'

python -c 'hou.pwd().findStickyNote("Limitations").setColor(hou.Color([1, 0.969, 0.522]))'

python -c 'hou.pwd().findStickyNote("Limitations").setText("The external mesh is currently incorrect when using a high film thickeness. This is due to the fact it uses the internal neighbours topology. This will be updated in upcoming versions.")'

python -c 'hou.pwd().findStickyNote("Limitations").setPosition(hou.Vector2(0.887512, 3.74722))'

python -c 'hou.pwd().findStickyNote("Limitations").setSize(hou.Vector2(2.61906, 1.7106))'

python -c 'hou.pwd().findStickyNote("Limitations").setMinimized(False)'
opcf ..

# Node liquid (Object/geo)
opadd -e -n geo liquid
oplocate -x 5.8366600000000002 -y 7.4160899999999996 liquid
opspareds '    group { 	name	"stdswitcher5" 	label	"Transform"  	parm { 	    name	"keeppos" 	    baseparm 	    label	"Keep Position When Parenting" 	    export	none 	} 	parm { 	    name	"childcomp" 	    baseparm 	    label	"Child Compensation" 	    export	none 	} 	parm { 	    name	"pre_xform" 	    baseparm 	    label	"Pre-transform" 	    export	none 	} 	parm { 	    name	"xOrd" 	    baseparm 	    label	"Transform Order" 	    joinnext 	    export	none 	} 	parm { 	    name	"rOrd" 	    baseparm 	    label	"Rotate Order" 	    export	none 	} 	parm { 	    name	"t" 	    baseparm 	    label	"Translate" 	    export	all 	} 	parm { 	    name	"r" 	    baseparm 	    label	"Rotate" 	    export	all 	} 	parm { 	    name	"s" 	    baseparm 	    label	"Scale" 	    export	none 	} 	parm { 	    name	"p" 	    baseparm 	    label	"Pivot" 	    export	none 	} 	parm { 	    name	"scale" 	    baseparm 	    label	"Uniform Scale" 	    export	none 	} 	parm { 	    name	"lookatpath" 	    baseparm 	    label	"Look At" 	    export	none 	} 	parm { 	    name	"lookupobjpath" 	    baseparm 	    label	"Look Up Object" 	    export	none 	} 	parm { 	    name	"lookup" 	    baseparm 	    label	"Look At Up Vector" 	    export	none 	} 	parm { 	    name	"pathobjpath" 	    baseparm 	    label	"Path Object" 	    export	none 	} 	parm { 	    name	"roll" 	    baseparm 	    label	"Roll" 	    export	none 	} 	parm { 	    name	"pos" 	    baseparm 	    label	"Position" 	    export	none 	} 	parm { 	    name	"uparmtype" 	    baseparm 	    label	"Parameterization" 	    export	none 	} 	parm { 	    name	"pathorient" 	    baseparm 	    label	"Orient Along Path" 	    export	none 	} 	parm { 	    name	"up" 	    baseparm 	    label	"Orient Up Vector" 	    export	none 	} 	parm { 	    name	"bank" 	    baseparm 	    label	"Auto-Bank factor" 	    export	none 	}     }      group { 	name	"stdswitcher5_1" 	label	"Material"  	parm { 	    name	"shop_materialpath" 	    baseparm 	    label	"Material" 	    joinnext 	    export	none 	} 	parm { 	    name	"shop_materialopts" 	    baseparm 	    label	"Options" 	    export	none 	}     }      group { 	name	"stdswitcher5_2" 	label	"Render"  	parm { 	    name	"tdisplay" 	    baseparm 	    label	"Display" 	    joinnext 	    export	none 	} 	parm { 	    name	"display" 	    baseparm 	    label	"Display" 	    export	none 	} 	parm { 	    name	"viewportlod" 	    label	"Display As" 	    type	ordinal 	    default	{ "full" } 	    help	"Choose how the object\'s geometry should be rendered in the viewport" 	    menu	{ 		"full"	"Full Geometry" 		"points"	"Point Cloud" 		"box"	"Bounding Box" 		"centroid"	"Centroid" 		"hidden"	"Hidden" 		"subd"	"Subdivision Surface / Curves" 	    } 	    range	{ 0 1 } 	    export	none 	    parmtag	{ "spare_category" "Render" } 	} 	parm { 	    name	"vm_rendervisibility" 	    label	"Render Visibility" 	    type	string 	    default	{ "*" } 	    menureplace	{ 		"*"	"Visible to all" 		"primary"	"Visible only to primary rays" 		"primary|shadow"	"Visible only to primary and shadow rays" 		"-primary"	"Invisible to primary rays (Phantom)" 		"-diffuse"	"Invisible to diffuse rays" 		"-diffuse&-reflect&-refract"	"Invisible to secondary rays" 		""	"Invisible (Unrenderable)" 	    } 	    range	{ 0 1 } 	    export	none 	    parmtag	{ "spare_category" "Render" } 	} 	parm { 	    name	"vm_rendersubd" 	    label	"Render Polygons As Subdivision (Mantra)" 	    type	toggle 	    default	{ "0" } 	    range	{ 0 1 } 	    export	none 	    parmtag	{ "spare_category" "Geometry" } 	} 	parm { 	    name	"vm_subdstyle" 	    label	"Subdivision Style" 	    type	string 	    default	{ "mantra_catclark" } 	    hidewhen	"{ vm_rendersubd == 0 }" 	    menu	{ 		"mantra_catclark"	"Mantra Catmull-Clark" 		"osd_catclark"	"OpenSubdiv Catmull-Clark" 	    } 	    range	{ 0 1 } 	    export	none 	    parmtag	{ "spare_category" "Geometry" } 	} 	parm { 	    name	"vm_subdgroup" 	    label	"Subdivision Group" 	    type	string 	    default	{ "" } 	    hidewhen	"{ vm_rendersubd == 0 }" 	    range	{ 0 1 } 	    export	none 	    parmtag	{ "spare_category" "Geometry" } 	} 	group { 	    name	"folder0" 	    label	"Shading"  	    parm { 		name	"categories" 		label	"Categories" 		type	string 		default	{ "" } 		help	"A list of tags which can be used to select the object" 		range	{ 0 1 } 		export	none 		parmtag	{ "spare_category" "Shading" } 	    } 	    parm { 		name	"reflectmask" 		label	"Reflection Mask" 		type	oplist 		default	{ "*" } 		help	"Objects that will be reflected on this object." 		range	{ 0 1 } 		export	none 		parmtag	{ "opexpand" "1" } 		parmtag	{ "opfilter" "!!OBJ/GEOMETRY!!" } 		parmtag	{ "oprelative" "/obj" } 		parmtag	{ "spare_category" "Shading" } 	    } 	    parm { 		name	"refractmask" 		label	"Refraction Mask" 		type	oplist 		default	{ "*" } 		help	"Objects that will be refracted on this object." 		range	{ 0 1 } 		export	none 		parmtag	{ "opexpand" "1" } 		parmtag	{ "opfilter" "!!OBJ/GEOMETRY!!" } 		parmtag	{ "oprelative" "/obj" } 		parmtag	{ "spare_category" "Shading" } 	    } 	    parm { 		name	"lightmask" 		label	"Light Mask" 		type	oplist 		default	{ "*" } 		help	"Lights that illuminate this object." 		range	{ 0 1 } 		export	none 		parmtag	{ "opexpand" "1" } 		parmtag	{ "opfilter" "!!OBJ/LIGHT!!" } 		parmtag	{ "oprelative" "/obj" } 		parmtag	{ "spare_category" "Shading" } 	    } 	    parm { 		name	"vm_volumefilter" 		label	"Volume Filter" 		type	string 		default	{ "box" } 		menu	{ 		    "box"	"Box Filter" 		    "gaussian"	"Gaussian" 		    "bartlett"	"Bartlett (triangle)" 		    "catrom"	"Catmull-Rom" 		    "hanning"	"Hanning" 		    "blackman"	"Blackman" 		    "sinc"	"Sinc (sharpening)" 		} 		range	{ 0 1 } 		export	none 		parmtag	{ "spare_category" "Shading" } 	    } 	    parm { 		name	"vm_volumefilterwidth" 		label	"Volume Filter Width" 		type	float 		default	{ "1" } 		range	{ 0.001 5 } 		export	none 		parmtag	{ "spare_category" "Shading" } 	    } 	    parm { 		name	"vm_matte" 		label	"Matte shading" 		type	toggle 		default	{ "0" } 		range	{ 0 1 } 		export	none 		parmtag	{ "spare_category" "Shading" } 	    } 	    parm { 		name	"vm_rayshade" 		label	"Raytrace Shading" 		type	toggle 		default	{ "0" } 		range	{ 0 1 } 		export	none 		parmtag	{ "spare_category" "Shading" } 	    } 	}  	group { 	    name	"folder0_1" 	    label	"Sampling"  	    parm { 		name	"geo_velocityblur" 		label	"Geometry Velocity Blur" 		type	toggle 		default	{ "0" } 		disablewhen	"{ allowmotionblur == 0 }" 		range	{ 0 1 } 		export	none 		parmtag	{ "spare_category" "Sampling" } 	    } 	}  	group { 	    name	"folder0_2" 	    label	"Dicing"  	    parm { 		name	"vm_shadingquality" 		label	"Shading Quality" 		type	float 		default	{ "1" } 		range	{ 0 10 } 		export	none 		parmtag	{ "spare_category" "Dicing" } 	    } 	    parm { 		name	"vm_flatness" 		label	"Dicing Flatness" 		type	float 		default	{ "0.05" } 		range	{ 0 1 } 		export	none 		parmtag	{ "spare_category" "Dicing" } 	    } 	    parm { 		name	"vm_raypredice" 		label	"Ray Predicing" 		type	integer 		default	{ "0" } 		menu	{ 		    "0"	"Disable Predicing" 		    "1"	"Full Predicing" 		    "2"	"Precompute Bounds" 		} 		range	{ 0 10 } 		export	none 		parmtag	{ "spare_category" "Dicing" } 	    } 	    parm { 		name	"vm_curvesurface" 		label	"Shade Curves As Surfaces" 		type	toggle 		default	{ "0" } 		range	{ 0 1 } 		export	none 		parmtag	{ "spare_category" "Dicing" } 	    } 	}  	group { 	    name	"folder0_3" 	    label	"Geometry"  	    parm { 		name	"vm_rmbackface" 		label	"Backface Removal" 		type	toggle 		default	{ "0" } 		range	{ 0 1 } 		export	none 		parmtag	{ "spare_category" "Geometry" } 	    } 	    parm { 		name	"shop_geometrypath" 		label	"Procedural Shader" 		type	oppath 		default	{ "" } 		range	{ 0 1 } 		export	none 		parmtag	{ "opfilter" "!!SHOP/GEOMETRY!!" } 		parmtag	{ "oprelative" "." } 		parmtag	{ "spare_category" "Geometry" } 	    } 	    parm { 		name	"vm_forcegeometry" 		label	"Force Procedural Geometry Output" 		type	toggle 		default	{ "1" } 		range	{ 0 1 } 		export	none 		parmtag	{ "spare_category" "Geometry" } 	    } 	    parm { 		name	"vm_rendersubdcurves" 		label	"Render Polygon Curves As Subdivision (Mantra)" 		type	toggle 		default	{ "0" } 		range	{ 0 1 } 		export	none 		parmtag	{ "spare_category" "Geometry" } 	    } 	    parm { 		name	"vm_renderpoints" 		label	"Render As Points (Mantra)" 		type	integer 		default	{ "2" } 		menu	{ 		    "0"	"No Point Rendering" 		    "1"	"Render Only Points" 		    "2"	"Render Unconnected Points" 		} 		range	{ 0 10 } 		export	none 		parmtag	{ "spare_category" "Geometry" } 	    } 	    parm { 		name	"vm_renderpointsas" 		label	"Render Points As (Mantra)" 		type	integer 		default	{ "0" } 		disablewhen	"{ vm_renderpoints == 0 }" 		menu	{ 		    "0"	"Spheres" 		    "1"	"Circles" 		} 		range	{ 0 10 } 		export	none 		parmtag	{ "spare_category" "Geometry" } 	    } 	    parm { 		name	"vm_usenforpoints" 		label	"Use N For Point Rendering" 		type	toggle 		default	{ "0" } 		disablewhen	"{ vm_renderpoints == 0 }" 		range	{ 0 1 } 		export	none 		parmtag	{ "spare_category" "Geometry" } 	    } 	    parm { 		name	"vm_pointscale" 		label	"Point Scale" 		type	float 		default	{ "1" } 		disablewhen	"{ vm_renderpoints == 0 }" 		range	{ 0! 10 } 		export	none 		parmtag	{ "spare_category" "Geometry" } 	    } 	    parm { 		name	"vm_pscalediameter" 		label	"Treat Point Scale as Diameter Instead of Radius" 		type	toggle 		default	{ "0" } 		range	{ 0 1 } 		export	none 		parmtag	{ "spare_category" "Geometry" } 	    } 	    parm { 		name	"vm_metavolume" 		label	"Metaballs as Volume" 		type	toggle 		default	{ "0" } 		range	{ 0 1 } 		export	none 		parmtag	{ "spare_category" "Geometry" } 	    } 	    parm { 		name	"vm_coving" 		label	"Coving" 		type	integer 		default	{ "1" } 		menu	{ 		    "0"	"Disable Coving" 		    "1"	"Coving for displacement/sub-d" 		    "2"	"Coving for all primitives" 		} 		range	{ 0 10 } 		export	none 		parmtag	{ "spare_category" "Geometry" } 	    } 	    parm { 		name	"vm_materialoverride" 		label	"Material Override" 		type	string 		default	{ "compact" } 		menu	{ 		    "none"	"Disabled" 		    "full"	"Evaluate for Each Primitve/Point" 		    "compact"	"Evaluate Once" 		} 		range	{ 0 1 } 		export	none 		parmtag	{ "spare_category" "Geometry" } 	    } 	    parm { 		name	"vm_computeN" 		label	"Automatically Compute Normals" 		type	toggle 		default	{ "1" } 		range	{ 0 1 } 		export	none 		parmtag	{ "spare_category" "Geometry" } 	    } 	    parm { 		name	"vm_overridedetail" 		label	"Ignore Geometry Attribute Shaders" 		type	toggle 		default	{ "0" } 		range	{ 0 1 } 		export	none 		parmtag	{ "spare_category" "Geometry" } 	    } 	}      }      group { 	name	"stdswitcher5_3" 	label	"Misc"  	parm { 	    name	"use_dcolor" 	    baseparm 	    label	"Set Wireframe Color" 	    export	none 	} 	parm { 	    name	"dcolor" 	    baseparm 	    label	"Wireframe Color" 	    export	none 	} 	parm { 	    name	"picking" 	    baseparm 	    label	"Viewport Selecting Enabled" 	    export	none 	} 	parm { 	    name	"pickscript" 	    baseparm 	    label	"Select Script" 	    export	none 	} 	parm { 	    name	"caching" 	    baseparm 	    label	"Cache Object Transform" 	    export	none 	} 	parm { 	    name	"vport_shadeopen" 	    baseparm 	    label	"Shade Open Curves In Viewport" 	    export	none 	} 	parm { 	    name	"vport_displayassubdiv" 	    baseparm 	    label	"Display as Subdivision in Viewport" 	    invisible 	    export	none 	} 	parm { 	    name	"vport_onionskin" 	    baseparm 	    label	"Onion Skinning" 	    export	none 	}     }  ' liquid
opset -S on liquid
opparm -V 15.0.416 liquid stdswitcher ( 0 0 0 0 ) keeppos ( off ) childcomp ( off ) pre_xform ( clean ) xOrd ( srt ) rOrd ( xyz ) t ( 0 0 0 ) r ( 0 0 0 ) s ( 1 1 1 ) p ( 0 0 0 ) scale ( 1 ) lookatpath ( "" ) lookupobjpath ( "" ) lookup ( on ) pathobjpath ( "" ) roll ( 0 ) pos ( 0 ) uparmtype ( arc ) pathorient ( 1 ) up ( 0 1 0 ) bank ( 0 ) shop_materialpath ( "" ) shop_materialopts ( override ) tdisplay ( off ) display ( 1 ) use_dcolor ( off ) dcolor ( 1 1 1 ) picking ( on ) pickscript ( "" ) caching ( off ) vport_shadeopen ( off ) vport_displayassubdiv ( off ) vport_onionskin ( off ) stdswitcher5 ( 0 0 0 0 ) viewportlod ( full ) vm_rendervisibility ( * ) vm_rendersubd ( off ) vm_subdstyle ( mantra_catclark ) vm_subdgroup ( "" ) folder0 ( 0 0 0 0 ) categories ( "" ) reflectmask ( * ) refractmask ( * ) lightmask ( * ) vm_volumefilter ( box ) vm_volumefilterwidth ( 1 ) vm_matte ( off ) vm_rayshade ( off ) geo_velocityblur ( off ) vm_shadingquality ( 1 ) vm_flatness ( 0.050000000000000003 ) vm_raypredice ( 0 ) vm_curvesurface ( off ) vm_rmbackface ( off ) shop_geometrypath ( "" ) vm_forcegeometry ( on ) vm_rendersubdcurves ( off ) vm_renderpoints ( 2 ) vm_renderpointsas ( 0 ) vm_usenforpoints ( off ) vm_pointscale ( 1 ) vm_pscalediameter ( off ) vm_metavolume ( off ) vm_coving ( 1 ) vm_materialoverride ( compact ) vm_computeN ( on ) vm_overridedetail ( off )
chlock liquid -*
chautoscope liquid -* +tx +ty +tz +rx +ry +rz +sx +sy +sz
opcolor -c 0.80000001192092896 0.80000001192092896 0.80000001192092896 liquid
opset -d off -r off -h off -f off -y off -t off -l off -s off -u off -c off -e on -b off -x off liquid
opexprlanguage -s hscript liquid
opuserdata -n '___Version___' -v '15.0.416' liquid
opcf liquid

# Node volumeVop_curlNoise (Sop/volumevop)
opadd -e -n volumevop volumeVop_curlNoise
oplocate -x -1.07816 -y -4.3942300000000003 volumeVop_curlNoise
opspareds '    groupradio { 	name	"stdswitcher3" 	label	"Vex Setup"  	parm { 	    name	"vexsrc" 	    baseparm 	    label	"Vex Source" 	    export	all 	} 	parm { 	    name	"shoppath" 	    baseparm 	    label	"Shop Path" 	    export	all 	} 	parm { 	    name	"script" 	    baseparm 	    label	"Script" 	    export	all 	} 	parm { 	    name	"clear" 	    baseparm 	    label	"Re-load VEX Functions" 	    export	all 	} 	parm { 	    name	"vop_compiler" 	    baseparm 	    label	"Compiler" 	    export	none 	} 	parm { 	    name	"vop_forcecompile" 	    baseparm 	    label	"Force Compile" 	    export	none 	}     }      groupradio { 	name	"stdswitcher3_1" 	label	"Volume Bindings"  	parm { 	    name	"autobind" 	    baseparm 	    label	"Autobind by Name" 	    export	none 	} 	parm { 	    name	"bindeach" 	    baseparm 	    label	"Bind Each to Density" 	    export	none 	} 	multiparm { 	    name	"bindings" 	    label	"Number of Bindings" 	    baseparm 	    default	0 	    parmtag	{ "multistartoffset" "1" }  	    parm { 		name	"bindprim#" 		baseparm 		label	"Primitive" 		export	none 	    } 	    parm { 		name	"bindname#" 		baseparm 		label	"Name" 		export	none 	    } 	}      }      parm { 	name	"P" 	label	"P" 	type	float 	invisible 	size	3 	default	{ "0" "0" "0" } 	range	{ 0 10 } 	export	none 	parmtag	{ "parmvop" "1" } 	parmtag	{ "shaderparmcontexts" "cvex" }     }     parm { 	name	"ix" 	label	"IX" 	type	integer 	invisible 	default	{ "0" } 	range	{ 0 10 } 	export	none 	parmtag	{ "parmvop" "1" } 	parmtag	{ "shaderparmcontexts" "cvex" }     }     parm { 	name	"iy" 	label	"IY" 	type	integer 	invisible 	default	{ "0" } 	range	{ 0 10 } 	export	none 	parmtag	{ "parmvop" "1" } 	parmtag	{ "shaderparmcontexts" "cvex" }     }     parm { 	name	"iz" 	label	"IZ" 	type	integer 	invisible 	default	{ "0" } 	range	{ 0 10 } 	export	none 	parmtag	{ "parmvop" "1" } 	parmtag	{ "shaderparmcontexts" "cvex" }     }     parm { 	name	"density" 	label	"Density" 	type	float 	invisible 	default	{ "0" } 	range	{ 0 1 } 	export	none 	parmtag	{ "parmvop" "1" } 	parmtag	{ "shaderparmcontexts" "cvex" }     }     parm { 	name	"resx" 	label	"ResX" 	type	integer 	invisible 	default	{ "0" } 	range	{ 0 10 } 	export	none 	parmtag	{ "parmvop" "1" } 	parmtag	{ "shaderparmcontexts" "cvex" }     }     parm { 	name	"resy" 	label	"ResY" 	type	integer 	invisible 	default	{ "0" } 	range	{ 0 10 } 	export	none 	parmtag	{ "parmvop" "1" } 	parmtag	{ "shaderparmcontexts" "cvex" }     }     parm { 	name	"resz" 	label	"ResZ" 	type	integer 	invisible 	default	{ "0" } 	range	{ 0 10 } 	export	none 	parmtag	{ "parmvop" "1" } 	parmtag	{ "shaderparmcontexts" "cvex" }     }     parm { 	name	"dPdx" 	label	"dPdx" 	type	float 	invisible 	size	3 	default	{ "0" "0" "0" } 	range	{ 0 10 } 	export	none 	parmtag	{ "parmvop" "1" } 	parmtag	{ "shaderparmcontexts" "cvex" }     }     parm { 	name	"dPdy" 	label	"dPdy" 	type	float 	invisible 	size	3 	default	{ "0" "0" "0" } 	range	{ 0 10 } 	export	none 	parmtag	{ "parmvop" "1" } 	parmtag	{ "shaderparmcontexts" "cvex" }     }     parm { 	name	"dPdz" 	label	"dPdz" 	type	float 	invisible 	size	3 	default	{ "0" "0" "0" } 	range	{ 0 10 } 	export	none 	parmtag	{ "parmvop" "1" } 	parmtag	{ "shaderparmcontexts" "cvex" }     }     parm { 	name	"center" 	label	"Center" 	type	float 	invisible 	size	3 	default	{ "0" "0" "0" } 	range	{ 0 10 } 	export	none 	parmtag	{ "parmvop" "1" } 	parmtag	{ "shaderparmcontexts" "cvex" }     }     parm { 	name	"Time" 	label	"Time" 	type	float 	invisible 	default	{ "0" } 	range	{ 0 1 } 	export	none 	parmtag	{ "parmvop" "1" } 	parmtag	{ "shaderparmcontexts" "cvex" }     }     parm { 	name	"Timeinc" 	label	"Timeinc" 	type	float 	invisible 	default	{ "0" } 	range	{ 0 1 } 	export	none 	parmtag	{ "parmvop" "1" } 	parmtag	{ "shaderparmcontexts" "cvex" }     }     parm { 	name	"Frame" 	label	"Frame" 	type	float 	invisible 	default	{ "0" } 	range	{ 0 1 } 	export	none 	parmtag	{ "parmvop" "1" } 	parmtag	{ "shaderparmcontexts" "cvex" }     }     parm { 	name	"OpInput2" 	label	"Second Input" 	type	string 	invisible 	default	{ "" } 	range	{ 0 1 } 	export	none 	parmtag	{ "parmvop" "1" } 	parmtag	{ "shaderparmcontexts" "cvex" }     }     parm { 	name	"OpInput3" 	label	"Third Input" 	type	string 	invisible 	default	{ "" } 	range	{ 0 1 } 	export	none 	parmtag	{ "parmvop" "1" } 	parmtag	{ "shaderparmcontexts" "cvex" }     }     parm { 	name	"OpInput4" 	label	"Fourth Input" 	type	string 	invisible 	default	{ "" } 	range	{ 0 1 } 	export	none 	parmtag	{ "parmvop" "1" } 	parmtag	{ "shaderparmcontexts" "cvex" }     }     parm { 	name	"OpInput1" 	label	"First Input" 	type	string 	invisible 	default	{ "" } 	range	{ 0 1 } 	export	none 	parmtag	{ "parmvop" "1" } 	parmtag	{ "shaderparmcontexts" "cvex" }     }     parm { 	name	"vel" 	label	"Velocity" 	type	float 	size	3 	default	{ "0" "0" "0" } 	range	{ 0 10 } 	export	none 	parmtag	{ "parmvop" "1" } 	parmtag	{ "shaderparmcontexts" "cvex" }     }     parm { 	name	"vex_cwdpath" 	baseparm 	label	"Evaluation Node Path" 	export	none     }     parm { 	name	"vex_outputmask" 	baseparm 	label	"Export Parameters" 	export	none     }     parm { 	name	"vex_multithread" 	baseparm 	label	"Enable Multithreading" 	export	none     }     parm { 	name	"vex_geometrygenerator" 	baseparm 	label	"Only Output Created Geometry" 	export	none     }     parm { 	name	"vdb_signedflood" 	baseparm 	label	"Signed-Flood Fill Output SDF VDBs" 	export	none     } ' volumeVop_curlNoise
opparm volumeVop_curlNoise  bindings ( 0 )
opparm -V 15.0.416 volumeVop_curlNoise stdswitcher ( 0 0 ) vexsrc ( myself ) shoppath ( "" ) script ( null ) clear ( 0 ) vop_compiler ( 'vcc -r -q $VOP_INCLUDEPATH -o $VOP_OBJECTFILE -e $VOP_ERRORFILE $VOP_SOURCEFILE' ) vop_forcecompile ( 0 ) vex_cwdpath ( "" ) vex_outputmask ( * ) vex_multithread ( on ) vex_geometrygenerator ( off ) vdb_signedflood ( on ) autobind ( on ) bindeach ( off ) bindings ( 0 ) stdswitcher3 ( 0 0 ) P ( 0 0 0 ) ix ( 0 ) iy ( 0 ) iz ( 0 ) density ( 0 ) resx ( 0 ) resy ( 0 ) resz ( 0 ) dPdx ( 0 0 0 ) dPdy ( 0 0 0 ) dPdz ( 0 0 0 ) center ( 0 0 0 ) Time ( 0 ) Timeinc ( 0 ) Frame ( 0 ) OpInput2 ( "" ) OpInput3 ( "" ) OpInput4 ( "" ) OpInput1 ( "" ) vel ( 0 0 0 )
chlock volumeVop_curlNoise -*
chautoscope volumeVop_curlNoise -*
opcolor -c 0.80000001192092896 0.80000001192092896 0.80000001192092896 volumeVop_curlNoise
opset -d off -r off -h off -f off -y off -t off -l off -s off -u off -c off -e on -b off volumeVop_curlNoise
opexprlanguage -s hscript volumeVop_curlNoise
opuserdata -n '___Version___' -v '15.0.416' volumeVop_curlNoise
opcf volumeVop_curlNoise

# Node volumevopglobal1 (Vop/volumevopglobal)
opadd -e -n volumevopglobal volumevopglobal1
oplocate -x 1.9057900000000001 -y 1.97631 volumevopglobal1
opspareds "" volumevopglobal1
opparm volumevopglobal1
chlock volumevopglobal1 -*
chautoscope volumevopglobal1 -*
opcolor -c 0.80000001192092896 0.80000001192092896 0.80000001192092896 volumevopglobal1
opset -d on -r on -h off -f off -y off -t off -l off -s off -u off -c off -e on -b off -L off -M off -H on volumevopglobal1
opexprlanguage -s hscript volumevopglobal1
opuserdata -n '___Version___' -v '' volumevopglobal1

# Node vel (Vop/parameter)
opadd -e -n parameter vel
oplocate -x 12.126099999999999 -y 4.8003099999999996 vel
opspareds "" vel
opparm -V 15.0.416 vel parmscope ( shaderparm ) parmaccess ( "" ) parmname ( vel ) parmprefix ( "" ) parmpostfix ( "" ) parmlabel ( Velocity ) showlabel ( on ) parmtype ( vector ) parmtypename ( "" ) floatdef ( 0 ) intdef ( 0 ) toggledef ( off ) angledef ( 0 ) logfloatdef ( 0 ) float2def ( 0 0 ) float3def ( 0 0 0 ) vectordef ( 0 0 0 ) normaldef ( 0 0 0 ) pointdef ( 0 0 0 ) directiondef ( 1 0 0 ) float4def ( 0 0 0 0 ) floatm2def ( 1 0 0 1 ) float9def ( 1 0 0 0 1 0 0 0 1 ) float16def ( 1 0 0 0 0 1 0 0 0 0 1 0 0 0 0 1 ) stringdef ( "" ) filedef ( "" ) imagedef ( "" ) geometrydef ( "" ) colordef ( 0 0 0 ) color4def ( 0 0 0 0 ) coshaderdef ( "" ) floatadef ( ) intadef ( ) vector2adef ( ) vectoradef ( ) pointadef ( ) normaladef ( ) coloradef ( ) float4adef ( ) floatm2adef ( ) float9adef ( ) float16adef ( ) stringadef ( ) coshaderadef ( "" ) structdef ( "" ) rangeflt ( 0 1 ) rangeint ( 0 10 ) stringtype ( off ) opfilter ( !!OBJ/LIGHT!! ) parmcomment ( "" ) separator1 ( ) useasparmdefiner ( off ) parmuniform ( on ) usebound ( off ) exportparm ( on ) exportcontext ( cvex ) providemenu ( off ) menuchoices ( "" ) menuscript ( "" ) menuscriptlanguage ( hscript ) separator2 ( ) invisible ( off ) joinnext ( off ) disablewhen ( "" ) hidewhen ( "" ) callback ( "" ) help ( "" )
chlock vel -*
chautoscope vel -*
opcolor -c 0 0.40000000596046448 0 vel
opset -d off -r off -h off -f off -y off -t off -l off -s off -u off -c off -e on -b off -L off -M off -H on vel
opexprlanguage -s hscript vel
opuserdata -n '___Version___' -v '15.0.416' vel

# Node vectorToFloat (Vop/vectofloat)
opadd -e -n vectofloat vectorToFloat
oplocate -x 3.5299499999999999 -y 4.6591100000000001 vectorToFloat
opspareds "" vectorToFloat
opparm vectorToFloat signature ( default ) vec ( 0 0 0 ) vec_p ( 0 0 0 ) vec_n ( 0 0 0 ) vec_c ( 0 0 0 ) vec_uv ( 0 0 0 ) vec_up ( 0 0 0 ) vec_un ( 0 0 0 ) vec_uc ( 0 0 0 )
chlock vectorToFloat -*
chautoscope vectorToFloat -*
opcolor -c 0.80000001192092896 0.80000001192092896 0.80000001192092896 vectorToFloat
opset -d off -r off -h off -f off -y off -t off -l off -s off -u off -c off -e on -b off -L off -M off -H on vectorToFloat
opexprlanguage -s hscript vectorToFloat
opuserdata -n '___Version___' -v '' vectorToFloat

# Node floatToVector (Vop/floattovec)
opadd -e -n floattovec floatToVector
oplocate -x 5.1272700000000002 -y 4.6591100000000001 floatToVector
opspareds "" floatToVector
opparm floatToVector signature ( default ) fval1 ( 0 ) fval2 ( 0 ) fval3 ( 0 ) fval1_uv ( 0 ) fval2_uv ( 0 ) fval3_uv ( 0 )
chlock floatToVector -*
chautoscope floatToVector -*
opcolor -c 0.80000001192092896 0.80000001192092896 0.80000001192092896 floatToVector
opset -d off -r off -h off -f off -y off -t off -l off -s off -u off -c off -e on -b off -L off -M off -H on floatToVector
opexprlanguage -s hscript floatToVector
opuserdata -n '___Version___' -v '' floatToVector

# Node curlnoise2d1 (Vop/curlnoise2d)
opadd -e -n curlnoise2d curlnoise2d1
oplocate -x 6.9259199999999996 -y 3.3883100000000002 curlnoise2d1
opspareds "" curlnoise2d1
chblockbegin
chadd -t 0 0 curlnoise2d1 freq2
chkey -t 0 -v 1 -m 0 -a 0 -A 0 -T a  -F 'ch("freq1")' curlnoise2d1/freq2
chadd -t 0 0 curlnoise2d1 freq3
chkey -t 0 -v 1 -m 0 -a 0 -A 0 -T a  -F 'ch("freq1")' curlnoise2d1/freq3
chblockend
opparm curlnoise2d1 type ( pnoise ) pos ( 0 0 0 ) freq ( 0.10000000000000001 freq2 freq3 ) offset ( 0 0 0 ) amp ( 2 ) rough ( 0.5 ) atten ( 1 ) turb ( 2 ) h ( 0.82299999999999995 ) radius ( 1 ) dist ( 1 ) sdf ( "" )
chlock curlnoise2d1 -*
chautoscope curlnoise2d1 -*
opcolor -c 0.80000001192092896 0.80000001192092896 0.80000001192092896 curlnoise2d1
opset -d off -r off -h off -f off -y off -t off -l off -s off -u off -c off -e on -b off -L off -M off -H on curlnoise2d1
opexprlanguage -s hscript curlnoise2d1
opuserdata -n '___Version___' -v '' curlnoise2d1

# Node vectorToFloat1 (Vop/vectofloat)
opadd -e -n vectofloat vectorToFloat1
oplocate -x 8.7312899999999996 -y 4.6591100000000001 vectorToFloat1
opspareds "" vectorToFloat1
opparm vectorToFloat1 signature ( default ) vec ( 0 0 0 ) vec_p ( 0 0 0 ) vec_n ( 0 0 0 ) vec_c ( 0 0 0 ) vec_uv ( 0 0 0 ) vec_up ( 0 0 0 ) vec_un ( 0 0 0 ) vec_uc ( 0 0 0 )
chlock vectorToFloat1 -*
chautoscope vectorToFloat1 -*
opcolor -c 0.80000001192092896 0.80000001192092896 0.80000001192092896 vectorToFloat1
opset -d off -r off -h off -f off -y off -t off -l off -s off -u off -c off -e on -b off -L off -M off -H on vectorToFloat1
opexprlanguage -s hscript vectorToFloat1
opuserdata -n '___Version___' -v '' vectorToFloat1

# Node floatToVector1 (Vop/floattovec)
opadd -e -n floattovec floatToVector1
oplocate -x 10.3306 -y 4.6591100000000001 floatToVector1
opspareds "" floatToVector1
opparm floatToVector1 signature ( default ) fval1 ( 0 ) fval2 ( 0 ) fval3 ( 0 ) fval1_uv ( 0 ) fval2_uv ( 0 ) fval3_uv ( 0 )
chlock floatToVector1 -*
chautoscope floatToVector1 -*
opcolor -c 0.80000001192092896 0.80000001192092896 0.80000001192092896 floatToVector1
opset -d off -r off -h off -f off -y off -t off -l off -s off -u off -c off -e on -b off -L off -M off -H on floatToVector1
opexprlanguage -s hscript floatToVector1
opuserdata -n '___Version___' -v '' floatToVector1
opcf ..
opcf ..

# Node bubblesCenters (Object/geo)
opadd -e -n geo bubblesCenters
oplocate -x 5.8006599999999997 -y 6.6633800000000001 bubblesCenters
opspareds '    group { 	name	"stdswitcher5" 	label	"Transform"  	parm { 	    name	"keeppos" 	    baseparm 	    label	"Keep Position When Parenting" 	    joinnext 	    export	none 	} 	parm { 	    name	"pre_xform" 	    baseparm 	    label	"Pre-transform" 	    export	none 	} 	parm { 	    name	"xOrd" 	    baseparm 	    label	"Transform Order" 	    joinnext 	    export	none 	} 	parm { 	    name	"rOrd" 	    baseparm 	    label	"Rotate Order" 	    export	none 	} 	parm { 	    name	"t" 	    baseparm 	    label	"Translate" 	    export	all 	} 	parm { 	    name	"r" 	    baseparm 	    label	"Rotate" 	    export	all 	} 	parm { 	    name	"s" 	    baseparm 	    label	"Scale" 	    export	none 	} 	parm { 	    name	"p" 	    baseparm 	    label	"Pivot" 	    export	none 	} 	parm { 	    name	"scale" 	    baseparm 	    label	"Uniform Scale" 	    export	none 	} 	parm { 	    name	"lookatpath" 	    baseparm 	    label	"Look At" 	    export	none 	} 	parm { 	    name	"lookup" 	    baseparm 	    label	"Look At Up Vector" 	    export	none 	} 	parm { 	    name	"pathobjpath" 	    baseparm 	    label	"Path Object" 	    export	none 	} 	parm { 	    name	"roll" 	    baseparm 	    label	"Roll" 	    export	none 	} 	parm { 	    name	"pos" 	    baseparm 	    label	"Position" 	    export	none 	} 	parm { 	    name	"uparmtype" 	    baseparm 	    label	"Parameterization" 	    export	none 	} 	parm { 	    name	"pathorient" 	    baseparm 	    label	"Orient Along Path" 	    export	none 	} 	parm { 	    name	"up" 	    baseparm 	    label	"Orient Up Vector" 	    export	none 	} 	parm { 	    name	"bank" 	    baseparm 	    label	"Auto-Bank factor" 	    export	none 	}     }      group { 	name	"stdswitcher5_1" 	label	"Material"  	parm { 	    name	"shop_materialpath" 	    baseparm 	    label	"Material" 	    joinnext 	    export	none 	} 	parm { 	    name	"shop_materialopts" 	    baseparm 	    label	"Options" 	    export	none 	}     }      group { 	name	"stdswitcher5_2" 	label	"Render"  	parm { 	    name	"tdisplay" 	    baseparm 	    label	"Display" 	    joinnext 	    export	none 	} 	parm { 	    name	"display" 	    baseparm 	    label	"Display" 	    export	none 	} 	parm { 	    name	"viewportlod" 	    label	"Display As" 	    type	ordinal 	    default	{ "full" } 	    help	"Choose how the object\'s geometry should be rendered in the viewport" 	    menu	{ 		"full"	"Full Geometry" 		"points"	"Point Cloud" 		"box"	"Bounding Box" 		"centroid"	"Centroid" 		"hidden"	"Hidden" 		"subd"	"Subdivision Surface" 	    } 	    range	{ 0 1 } 	    export	none 	    parmtag	{ "spare_category" "Render" } 	} 	parm { 	    name	"vm_rendervisibility" 	    label	"Render Visibility" 	    type	string 	    default	{ "*" } 	    menureplace	{ 		"*"	"Visible to all" 		"primary"	"Visible only to primary rays" 		"primary|shadow"	"Visible only to primary and shadow rays" 		"-primary"	"Invisible to primary rays (Phantom)" 		"-diffuse"	"Invisible to diffuse rays" 		"-diffuse&-reflect&-refract"	"Invisible to secondary rays" 		""	"Invisible (Unrenderable)" 	    } 	    range	{ 0 1 } 	    export	none 	    parmtag	{ "spare_category" "Render" } 	} 	parm { 	    name	"vm_rendersubd" 	    label	"Render Polygons As Subdivision (Mantra)" 	    type	toggle 	    default	{ "0" } 	    range	{ 0 1 } 	    export	none 	    parmtag	{ "spare_category" "Geometry" } 	} 	parm { 	    name	"vm_subdstyle" 	    label	"Subdivision Style" 	    type	string 	    default	{ "mantra_catclark" } 	    hidewhen	"{ vm_rendersubd == 0 }" 	    menu	{ 		"mantra_catclark"	"Mantra Catmull-Clark" 		"osd_catclark"	"OpenSubdiv Catmull-Clark" 	    } 	    range	{ 0 1 } 	    export	none 	    parmtag	{ "spare_category" "Geometry" } 	} 	parm { 	    name	"vm_subdgroup" 	    label	"Subdivision Group" 	    type	string 	    default	{ "" } 	    hidewhen	"{ vm_rendersubd == 0 }" 	    range	{ 0 1 } 	    export	none 	    parmtag	{ "spare_category" "Geometry" } 	} 	group { 	    name	"folder0" 	    label	"Shading"  	    parm { 		name	"categories" 		label	"Categories" 		type	string 		default	{ "" } 		help	"A list of tags which can be used to select the object" 		range	{ 0 1 } 		export	none 		parmtag	{ "spare_category" "Shading" } 	    } 	    parm { 		name	"reflectmask" 		label	"Reflection Mask" 		type	oplist 		default	{ "*" } 		help	"Objects that will be reflected on this object." 		range	{ 0 1 } 		export	none 		parmtag	{ "opexpand" "1" } 		parmtag	{ "opfilter" "!!OBJ/GEOMETRY!!" } 		parmtag	{ "oprelative" "/obj" } 		parmtag	{ "spare_category" "Shading" } 	    } 	    parm { 		name	"refractmask" 		label	"Refraction Mask" 		type	oplist 		default	{ "*" } 		help	"Objects that will be refracted on this object." 		range	{ 0 1 } 		export	none 		parmtag	{ "opexpand" "1" } 		parmtag	{ "opfilter" "!!OBJ/GEOMETRY!!" } 		parmtag	{ "oprelative" "/obj" } 		parmtag	{ "spare_category" "Shading" } 	    } 	    parm { 		name	"lightmask" 		label	"Light Mask" 		type	oplist 		default	{ "*" } 		help	"Lights that illuminate this object." 		range	{ 0 1 } 		export	none 		parmtag	{ "opexpand" "1" } 		parmtag	{ "opfilter" "!!OBJ/LIGHT!!" } 		parmtag	{ "oprelative" "/obj" } 		parmtag	{ "spare_category" "Shading" } 	    } 	    parm { 		name	"vm_volumefilter" 		label	"Volume Filter" 		type	string 		default	{ "box" } 		menu	{ 		    "box"	"Box Filter" 		    "gaussian"	"Gaussian" 		    "bartlett"	"Bartlett (triangle)" 		    "catrom"	"Catmull-Rom" 		    "hanning"	"Hanning" 		    "blackman"	"Blackman" 		    "sinc"	"Sinc (sharpening)" 		} 		range	{ 0 1 } 		export	none 		parmtag	{ "spare_category" "Shading" } 	    } 	    parm { 		name	"vm_volumefilterwidth" 		label	"Volume Filter Width" 		type	float 		default	{ "1" } 		range	{ 0.001 5 } 		export	none 		parmtag	{ "spare_category" "Shading" } 	    } 	    parm { 		name	"vm_matte" 		label	"Matte shading" 		type	toggle 		default	{ "0" } 		range	{ 0 1 } 		export	none 		parmtag	{ "spare_category" "Shading" } 	    } 	    parm { 		name	"vm_rayshade" 		label	"Raytrace Shading" 		type	toggle 		default	{ "0" } 		range	{ 0 1 } 		export	none 		parmtag	{ "spare_category" "Shading" } 	    } 	}  	group { 	    name	"folder0_1" 	    label	"Sampling"  	    parm { 		name	"geo_velocityblur" 		label	"Geometry Velocity Blur" 		type	toggle 		default	{ "0" } 		disablewhen	"{ allowmotionblur == 0 }" 		range	{ 0 1 } 		export	none 		parmtag	{ "spare_category" "Sampling" } 	    } 	}  	group { 	    name	"folder0_2" 	    label	"Dicing"  	    parm { 		name	"vm_shadingquality" 		label	"Shading Quality" 		type	float 		default	{ "1" } 		range	{ 0 10 } 		export	none 		parmtag	{ "spare_category" "Dicing" } 	    } 	    parm { 		name	"vm_flatness" 		label	"Dicing Flatness" 		type	float 		default	{ "0.05" } 		range	{ 0 1 } 		export	none 		parmtag	{ "spare_category" "Dicing" } 	    } 	    parm { 		name	"vm_raypredice" 		label	"Ray Predicing" 		type	integer 		default	{ "0" } 		menu	{ 		    "0"	"Disable Predicing" 		    "1"	"Full Predicing" 		    "2"	"Precompute Bounds" 		} 		range	{ 0 10 } 		export	none 		parmtag	{ "spare_category" "Dicing" } 	    } 	    parm { 		name	"vm_curvesurface" 		label	"Shade Curves As Surfaces" 		type	toggle 		default	{ "0" } 		range	{ 0 1 } 		export	none 		parmtag	{ "spare_category" "Dicing" } 	    } 	}  	group { 	    name	"folder0_3" 	    label	"Geometry"  	    parm { 		name	"vm_rmbackface" 		label	"Backface Removal" 		type	toggle 		default	{ "0" } 		range	{ 0 1 } 		export	none 		parmtag	{ "spare_category" "Geometry" } 	    } 	    parm { 		name	"shop_geometrypath" 		label	"Procedural Shader" 		type	oppath 		default	{ "" } 		range	{ 0 1 } 		export	none 		parmtag	{ "opfilter" "!!SHOP/GEOMETRY!!" } 		parmtag	{ "oprelative" "." } 		parmtag	{ "spare_category" "Geometry" } 	    } 	    parm { 		name	"vm_forcegeometry" 		label	"Force Procedural Geometry Output" 		type	toggle 		default	{ "1" } 		range	{ 0 1 } 		export	none 		parmtag	{ "spare_category" "Geometry" } 	    } 	    parm { 		name	"vm_renderpoints" 		label	"Render As Points (Mantra)" 		type	integer 		default	{ "2" } 		menu	{ 		    "0"	"No Point Rendering" 		    "1"	"Render Only Points" 		    "2"	"Render Unconnected Points" 		} 		range	{ 0 10 } 		export	none 		parmtag	{ "spare_category" "Geometry" } 	    } 	    parm { 		name	"vm_renderpointsas" 		label	"Render Points As (Mantra)" 		type	integer 		default	{ "0" } 		disablewhen	"{ vm_renderpoints == 0 }" 		menu	{ 		    "0"	"Spheres" 		    "1"	"Circles" 		} 		range	{ 0 10 } 		export	none 		parmtag	{ "spare_category" "Geometry" } 	    } 	    parm { 		name	"vm_usenforpoints" 		label	"Use N For Point Rendering" 		type	toggle 		default	{ "0" } 		disablewhen	"{ vm_renderpoints == 0 }" 		range	{ 0 1 } 		export	none 		parmtag	{ "spare_category" "Geometry" } 	    } 	    parm { 		name	"vm_pointscale" 		label	"Point Scale" 		type	float 		default	{ "1" } 		disablewhen	"{ vm_renderpoints == 0 }" 		range	{ 0! 10 } 		export	none 		parmtag	{ "spare_category" "Geometry" } 	    } 	    parm { 		name	"vm_pscalediameter" 		label	"Treat Point Scale as Diameter Instead of Radius" 		type	toggle 		default	{ "0" } 		range	{ 0 1 } 		export	none 		parmtag	{ "spare_category" "Geometry" } 	    } 	    parm { 		name	"vm_metavolume" 		label	"Metaballs as Volume" 		type	toggle 		default	{ "0" } 		range	{ 0 1 } 		export	none 		parmtag	{ "spare_category" "Geometry" } 	    } 	    parm { 		name	"vm_coving" 		label	"Coving" 		type	integer 		default	{ "1" } 		menu	{ 		    "0"	"Disable Coving" 		    "1"	"Coving for displacement/sub-d" 		    "2"	"Coving for all primitives" 		} 		range	{ 0 10 } 		export	none 		parmtag	{ "spare_category" "Geometry" } 	    } 	    parm { 		name	"vm_materialoverride" 		label	"Material Override" 		type	string 		default	{ "compact" } 		menu	{ 		    "none"	"Disabled" 		    "full"	"Evaluate for Each Primitve/Point" 		    "compact"	"Evaluate Once" 		} 		range	{ 0 1 } 		export	none 		parmtag	{ "spare_category" "Geometry" } 	    } 	    parm { 		name	"vm_computeN" 		label	"Automatically Compute Normals" 		type	toggle 		default	{ "1" } 		range	{ 0 1 } 		export	none 		parmtag	{ "spare_category" "Geometry" } 	    } 	    parm { 		name	"vm_overridedetail" 		label	"Ignore Geometry Attribute Shaders" 		type	toggle 		default	{ "0" } 		range	{ 0 1 } 		export	none 		parmtag	{ "spare_category" "Geometry" } 	    } 	}      }      group { 	name	"stdswitcher5_3" 	label	"Misc"  	parm { 	    name	"use_dcolor" 	    baseparm 	    label	"Set Wireframe Color" 	    export	none 	} 	parm { 	    name	"dcolor" 	    baseparm 	    label	"Wireframe Color" 	    export	none 	} 	parm { 	    name	"picking" 	    baseparm 	    label	"Viewport Selecting Enabled" 	    export	none 	} 	parm { 	    name	"pickscript" 	    baseparm 	    label	"Select Script" 	    export	none 	} 	parm { 	    name	"caching" 	    baseparm 	    label	"Cache Object Transform" 	    export	none 	} 	parm { 	    name	"vport_shadeopen" 	    baseparm 	    label	"Shade Open Curves In Viewport" 	    export	none 	} 	parm { 	    name	"vport_displayassubdiv" 	    baseparm 	    label	"Display as Subdivision in Viewport" 	    invisible 	    export	none 	}     }      parm { 	name	"childcomp" 	baseparm 	label	"Child Compensation" 	export	none     }     parm { 	name	"lookupobjpath" 	baseparm 	label	"Look Up Object" 	export	none     }     parm { 	name	"vport_onionskin" 	baseparm 	label	"Onion Skinning" 	export	none     } ' bubblesCenters
opset -S on bubblesCenters
opparm -V 15.0.416 bubblesCenters stdswitcher ( 0 0 0 0 ) keeppos ( off ) childcomp ( off ) pre_xform ( clean ) xOrd ( srt ) rOrd ( xyz ) t ( 0 0 0 ) r ( 0 0 0 ) s ( 1 1 1 ) p ( 0 0 0 ) scale ( 1 ) lookatpath ( "" ) lookupobjpath ( "" ) lookup ( on ) pathobjpath ( "" ) roll ( 0 ) pos ( 0 ) uparmtype ( arc ) pathorient ( 1 ) up ( 0 1 0 ) bank ( 0 ) shop_materialpath ( "" ) shop_materialopts ( override ) tdisplay ( off ) display ( 1 ) use_dcolor ( off ) dcolor ( 1 1 1 ) picking ( on ) pickscript ( "" ) caching ( off ) vport_shadeopen ( off ) vport_displayassubdiv ( off ) vport_onionskin ( off ) stdswitcher5 ( 0 0 0 0 ) viewportlod ( full ) vm_rendervisibility ( * ) vm_rendersubd ( off ) vm_subdstyle ( mantra_catclark ) vm_subdgroup ( "" ) folder0 ( 0 0 0 0 ) categories ( "" ) reflectmask ( * ) refractmask ( * ) lightmask ( * ) vm_volumefilter ( box ) vm_volumefilterwidth ( 1 ) vm_matte ( off ) vm_rayshade ( off ) geo_velocityblur ( off ) vm_shadingquality ( 1 ) vm_flatness ( 0.050000000000000003 ) vm_raypredice ( 0 ) vm_curvesurface ( off ) vm_rmbackface ( off ) shop_geometrypath ( "" ) vm_forcegeometry ( on ) vm_renderpoints ( 2 ) vm_renderpointsas ( 0 ) vm_usenforpoints ( off ) vm_pointscale ( 1 ) vm_pscalediameter ( off ) vm_metavolume ( off ) vm_coving ( 1 ) vm_materialoverride ( compact ) vm_computeN ( on ) vm_overridedetail ( off )
chlock bubblesCenters -*
chautoscope bubblesCenters -* +tx +ty +tz +rx +ry +rz +sx +sy +sz
opcolor -c 0.80000001192092896 0.80000001192092896 0.80000001192092896 bubblesCenters
opset -d off -r off -h off -f off -y off -t off -l off -s off -u off -c off -e on -b off -x off bubblesCenters
opexprlanguage -s hscript bubblesCenters
opuserdata -n '___Version___' -v '15.0.416' bubblesCenters
opcf bubblesCenters

# Node attributeWrangle_noOffset (Sop/attribwrangle)
opadd -e -n attribwrangle attributeWrangle_noOffset
oplocate -x -11.973000000000001 -y 6.0169699999999997 attributeWrangle_noOffset
opspareds "" attributeWrangle_noOffset
opparm attributeWrangle_noOffset  bindings ( 0 ) groupbindings ( 0 )
opparm attributeWrangle_noOffset folder0 ( 0 0 ) group ( "" ) grouptype ( guess ) class ( point ) vex_numcount ( 10 ) vex_threadjobsize ( 1024 ) snippet ( 'f@pscale = f@pscale * 2.0 - `chs("../../bubblesShapes/spaceFillingDiagram/filmthickness")`;' ) exportlist ( * ) vex_strict ( off ) autobind ( on ) bindings ( 0 ) groupautobind ( on ) groupbindings ( 0 ) vex_cwdpath ( . ) vex_outputmask ( * ) vex_updatenmls ( off ) vex_matchattrib ( id )
chlock attributeWrangle_noOffset -*
chautoscope attributeWrangle_noOffset -*
opcolor -c 0.80000001192092896 0.80000001192092896 0.80000001192092896 attributeWrangle_noOffset
opset -d off -r off -h off -f off -y off -t off -l off -s off -u off -c off -e on -b off attributeWrangle_noOffset
opexprlanguage -s hscript attributeWrangle_noOffset
opuserdata -n '___Version___' -v '' attributeWrangle_noOffset

# Node attributeWrangle_moveInLiquid (Sop/attribwrangle)
opadd -e -n attribwrangle attributeWrangle_moveInLiquid
oplocate -x -8.1794799999999999 -y 7.6079699999999999 attributeWrangle_moveInLiquid
opspareds "" attributeWrangle_moveInLiquid
opparm attributeWrangle_moveInLiquid  bindings ( 0 ) groupbindings ( 0 )
opparm attributeWrangle_moveInLiquid folder0 ( 0 0 ) group ( "" ) grouptype ( guess ) class ( point ) vex_numcount ( 10 ) vex_threadjobsize ( 1024 ) snippet ( 'v@P.y = v@P.y -f@surfaceOffset - 1.8;' ) exportlist ( * ) vex_strict ( off ) autobind ( on ) bindings ( 0 ) groupautobind ( on ) groupbindings ( 0 ) vex_cwdpath ( . ) vex_outputmask ( * ) vex_updatenmls ( off ) vex_matchattrib ( id )
chlock attributeWrangle_moveInLiquid -*
chautoscope attributeWrangle_moveInLiquid -*
opcolor -c 0.80000001192092896 0.80000001192092896 0.80000001192092896 attributeWrangle_moveInLiquid
opset -d off -r off -h off -f off -y off -t off -l off -s off -u off -c off -e on -b off attributeWrangle_moveInLiquid
opexprlanguage -s hscript attributeWrangle_moveInLiquid
opuserdata -n '___Version___' -v '' attributeWrangle_moveInLiquid

# Sticky Note Bug

python -c 'hou.pwd().createStickyNote("Bug")'

python -c 'hou.pwd().findStickyNote("Bug").setColor(hou.Color([1, 0.969, 0.522]))'

python -c 'hou.pwd().findStickyNote("Bug").setText("The spheres don\'t seem to be affected by the changes of pscale but they are.")'

python -c 'hou.pwd().findStickyNote("Bug").setPosition(hou.Vector2(-8.1058, 3.50321))'

python -c 'hou.pwd().findStickyNote("Bug").setSize(hou.Vector2(2.61745, 1))'

python -c 'hou.pwd().findStickyNote("Bug").setMinimized(False)'
opcf ..

# Sticky Note LICENCE

python -c 'hou.pwd().createStickyNote("LICENCE")'

python -c 'hou.pwd().findStickyNote("LICENCE").setColor(hou.Color([0.36, 0.36, 0.36]))'

python -c 'hou.pwd().findStickyNote("LICENCE").setText("MIT License\n\nCopyright (c) 2016 Nadine Dommanget\n\nPermission is hereby granted, free of charge, to any person obtaining a copy\nof this software and associated documentation files (the \"Software\"), to deal\nin the Software without restriction, including without limitation the rights\nto use, copy, modify, merge, publish, distribute, sublicense, and/or sell\ncopies of the Software, and to permit persons to whom the Software is\nfurnished to do so, subject to the following conditions:\n\nThe above copyright notice and this permission notice shall be included in all\ncopies or substantial portions of the Software.\n\nTHE SOFTWARE IS PROVIDED \"AS IS\", WITHOUT WARRANTY OF ANY KIND, EXPRESS OR\nIMPLIED, INCLUDING BUT NOT LIMITED TO THE WARRANTIES OF MERCHANTABILITY,\nFITNESS FOR A PARTICULAR PURPOSE AND NONINFRINGEMENT. IN NO EVENT SHALL THE\nAUTHORS OR COPYRIGHT HOLDERS BE LIABLE FOR ANY CLAIM, DAMAGES OR OTHER\nLIABILITY, WHETHER IN AN ACTION OF CONTRACT, TORT OR OTHERWISE, ARISING FROM,\nOUT OF OR IN CONNECTION WITH THE SOFTWARE OR THE USE OR OTHER DEALINGS IN THE\nSOFTWARE.")'

python -c 'hou.pwd().findStickyNote("LICENCE").setPosition(hou.Vector2(15.0974, 5.99661))'

python -c 'hou.pwd().findStickyNote("LICENCE").setSize(hou.Vector2(1.25251, 1.00201))'

python -c 'hou.pwd().findStickyNote("LICENCE").setMinimized(False)'
opcf ..

# Node vex (/vex)
opcf obj
opcf bubblesShapes
opcf spaceFillingDiagram
opcf foreach_cell

# Node for (Sop/null)
opadd -e -n null for
oplocate -x 0.61019999999999996 -y 5.2212500000000004 for
opspareds '    parm { 	name	"copyinput" 	baseparm 	label	"Copy Input" 	invisible 	export	none     }     parm { 	name	"cacheinput" 	baseparm 	label	"Cache Input" 	invisible 	export	none     }     parm { 	name	"i" 	label	"i" 	type	integer 	default	{ "0" } 	range	{ 0 10 } 	export	none     }     parm { 	name	"iString" 	label	"i string" 	type	string 	default	{ "0" } 	range	{ 0 10 } 	export	none     } ' for
chblockbegin
chadd -t 0 0 for i
chkey -t 0 -v 0 -m 0 -a 0 -A 0 -T a  -F 'stamp("..", "FORIDXVALUE", 99999)' for/i
chblockend
opparm -V 15.0.416 for copyinput ( on ) cacheinput ( off ) i ( i ) iString ( '`chs("i")`' )
chlock for -*
chautoscope for -*
opcolor -c 0.80000001192092896 0.80000001192092896 0.80000001192092896 for
opset -d off -r off -h off -f off -y off -t off -l off -s off -u off -c off -e on -b off for
opexprlanguage -s hscript for
opuserdata -n '___Version___' -v '15.0.416' for

# Node delete_nonPrimitive (Sop/delete)
opadd -e -n delete delete_nonPrimitive
oplocate -x -1.96539 -y 1.20261 delete_nonPrimitive
opspareds "" delete_nonPrimitive
chblockbegin
chadd -t 0 0 delete_nonPrimitive rangeend
chkey -t 0 -v 0 -m 0 -a 0 -A 0 -T a  -F '$N' delete_nonPrimitive/rangeend
chblockend
opparm -V 15.0.416 delete_nonPrimitive group ( 'cell_`chs("../for/iString")`' ) negate ( keep ) entity ( primitive ) geotype ( all ) stdswitcher ( 0 0 0 0 ) affectnumber ( on ) groupop ( pattern ) filter ( 1 ) pattern ( !* ) range ( 0 rangeend ) select ( 1 2 ) affectvolume ( off ) boundtype ( usebbox ) size ( 1 1 1 ) t ( 0 0 0 ) affectnormal ( off ) dir ( 0 0 1 ) angle ( 180 ) camerapath ( "" ) affectdegenerate ( off ) degenerate ( off ) zaf ( off ) doopen ( off ) tol ( 0.001 ) removegrp ( on ) keeppoints ( off )
chlock delete_nonPrimitive -*
chautoscope delete_nonPrimitive -*
opcolor -c 0.80000001192092896 0.80000001192092896 0.80000001192092896 delete_nonPrimitive
opset -d off -r off -h off -f off -y off -t off -l off -s off -u off -c off -e on -b off delete_nonPrimitive
opexprlanguage -s hscript delete_nonPrimitive
opuserdata -n '___Version___' -v '15.0.416' delete_nonPrimitive

# Node delete_nonPoints (Sop/delete)
opadd -e -n delete delete_nonPoints
oplocate -x 5.2288600000000001 -y 1.8205100000000001 delete_nonPoints
opspareds "" delete_nonPoints
chblockbegin
chadd -t 0 0 delete_nonPoints rangeend
chkey -t 0 -v 0 -m 0 -a 0 -A 0 -T a  -F '$N' delete_nonPoints/rangeend
chblockend
opparm -V 15.0.416 delete_nonPoints group ( 'cell_`chs("../for/iString")`' ) negate ( keep ) entity ( point ) geotype ( all ) stdswitcher ( 0 0 0 0 ) affectnumber ( on ) groupop ( pattern ) filter ( 1 ) pattern ( !* ) range ( 0 rangeend ) select ( 1 2 ) affectvolume ( off ) boundtype ( usebbox ) size ( 1 1 1 ) t ( 0 0 0 ) affectnormal ( off ) dir ( 0 0 1 ) angle ( 180 ) camerapath ( "" ) affectdegenerate ( off ) degenerate ( off ) zaf ( off ) doopen ( off ) tol ( 0.001 ) removegrp ( on ) keeppoints ( off )
chlock delete_nonPoints -*
chautoscope delete_nonPoints -*
opcolor -c 0.80000001192092896 0.80000001192092896 0.80000001192092896 delete_nonPoints
opset -d off -r off -h off -f off -y off -t off -l off -s off -u off -c off -e on -b off delete_nonPoints
opexprlanguage -s hscript delete_nonPoints
opuserdata -n '___Version___' -v '15.0.416' delete_nonPoints

# Node copy_internal (Sop/copy)
opadd -e -n copy copy_internal
oplocate -x 3.03715 -y -0.79818299999999998 copy_internal
opspareds "" copy_internal
opparm -V 15.0.416 copy_internal sourceGrp ( "" ) templateGrp ( "" ) stdswitcher ( 2 2 2 ) ncy ( 1 ) nml ( on ) cum ( on ) xOrd ( srt ) rOrd ( xyz ) t ( 0 0 0 ) r ( 0 0 0 ) s ( 1 1 1 ) shear ( 0 0 0 ) p ( 0 0 0 ) scale ( 1 ) vlength ( on ) newg ( off ) preservegroups ( off ) copyg ( 'copyGroup$CY' ) stamp ( off ) cacheinput ( off ) pack ( off ) pivot ( centroid ) viewportlod ( full ) attribstamps ( "" ) stampswitch ( 0 0 0 0 0 ) param1 ( "" ) val1 ( 0 ) param2 ( "" ) val2 ( 0 ) param3 ( "" ) val3 ( 0 ) param4 ( "" ) val4 ( 0 ) param5 ( "" ) val5 ( 0 ) param6 ( "" ) val6 ( 0 ) param7 ( "" ) val7 ( 0 ) param8 ( "" ) val8 ( 0 ) param9 ( "" ) val9 ( 0 ) param10 ( "" ) val10 ( 0 ) param11 ( "" ) val11 ( 0 ) param12 ( "" ) val12 ( 0 ) param13 ( "" ) val13 ( 0 ) param14 ( "" ) val14 ( 0 ) param15 ( "" ) val15 ( 0 ) param16 ( "" ) val16 ( 0 ) param17 ( "" ) val17 ( 0 ) param18 ( "" ) val18 ( 0 ) param19 ( "" ) val19 ( 0 ) param20 ( "" ) val20 ( 0 ) param21 ( "" ) val21 ( 0 ) param22 ( "" ) val22 ( 0 ) param23 ( "" ) val23 ( 0 ) param24 ( "" ) val24 ( 0 ) param25 ( "" ) val25 ( 0 ) param26 ( "" ) val26 ( 0 ) param27 ( "" ) val27 ( 0 ) param28 ( "" ) val28 ( 0 ) param29 ( "" ) val29 ( 0 ) param30 ( "" ) val30 ( 0 ) param31 ( "" ) val31 ( 0 ) param32 ( "" ) val32 ( 0 ) param33 ( "" ) val33 ( 0 ) param34 ( "" ) val34 ( 0 ) param35 ( "" ) val35 ( 0 ) param36 ( "" ) val36 ( 0 ) param37 ( "" ) val37 ( 0 ) param38 ( "" ) val38 ( 0 ) param39 ( "" ) val39 ( 0 ) param40 ( "" ) val40 ( 0 ) param41 ( "" ) val41 ( 0 ) param42 ( "" ) val42 ( 0 ) param43 ( "" ) val43 ( 0 ) param44 ( "" ) val44 ( 0 ) param45 ( "" ) val45 ( 0 ) param46 ( "" ) val46 ( 0 ) param47 ( "" ) val47 ( 0 ) param48 ( "" ) val48 ( 0 ) param49 ( "" ) val49 ( 0 ) param50 ( "" ) val50 ( 0 ) doattr ( on ) _label_ ( Set Mult Add Sub ) setpt ( *,^v,^Alpha ) mulpt ( Alpha ) addpt ( v ) subpt ( "" ) setprim ( "" ) mulprim ( "" ) addprim ( "" ) subprim ( "" ) setvtx ( "" ) mulvtx ( "" ) addvtx ( "" ) subvtx ( "" ) copyvariable ( on )
chlock copy_internal -*
chautoscope copy_internal -*
opcolor -c 0.80000001192092896 0.80000001192092896 0.80000001192092896 copy_internal
opset -d off -r off -h off -f off -y off -t off -l off -s off -u off -c off -e on -b off copy_internal
opexprlanguage -s hscript copy_internal
opuserdata -n '___Version___' -v '15.0.416' copy_internal

# Node delete_unusedGroups (Sop/delete)
opadd -e -n delete delete_unusedGroups
oplocate -x -1.96539 -y 0.41248600000000002 delete_unusedGroups
opspareds "" delete_unusedGroups
chblockbegin
chadd -t 0 0 delete_unusedGroups rangeend
chkey -t 0 -v 0 -m 0 -a 0 -A 0 -T a  -F '$N' delete_unusedGroups/rangeend
chblockend
opparm -V 15.0.416 delete_unusedGroups group ( "" ) negate ( dele ) entity ( primitive ) geotype ( all ) stdswitcher ( 0 0 0 0 ) affectnumber ( on ) groupop ( pattern ) filter ( 1 ) pattern ( !* ) range ( 0 rangeend ) select ( 1 2 ) affectvolume ( off ) boundtype ( usebbox ) size ( 1 1 1 ) t ( 0 0 0 ) affectnormal ( off ) dir ( 0 0 1 ) angle ( 180 ) camerapath ( "" ) affectdegenerate ( off ) degenerate ( off ) zaf ( off ) doopen ( off ) tol ( 0.001 ) removegrp ( on ) keeppoints ( off )
chlock delete_unusedGroups -*
chautoscope delete_unusedGroups -*
opcolor -c 0.80000001192092896 0.80000001192092896 0.80000001192092896 delete_unusedGroups
opset -d off -r off -h off -f off -y off -t off -l off -s off -u off -c off -e on -b off delete_unusedGroups
opexprlanguage -s hscript delete_unusedGroups
opuserdata -n '___Version___' -v '15.0.416' delete_unusedGroups

# Node attributeCopy_centerR (Sop/attribcopy)
opadd -e -n attribcopy attributeCopy_centerR
oplocate -x -1.16191 -y -1.4636400000000001 attributeCopy_centerR
opspareds "" attributeCopy_centerR
opparm -V 15.0.416 attributeCopy_centerR srcgroup ( 'cell_`chs("../for/iString")`' ) srcgrouptype ( points ) destgroup ( "" ) destgrouptype ( points ) matchbyattribute ( off ) attributetomatch ( piece ) attrib ( otherattrib ) attribname ( centerS ) copyp ( off ) usenewname ( off ) newname ( "" ) class ( guess ) copyvariable ( on )
chlock attributeCopy_centerR -*
chautoscope attributeCopy_centerR -*
opcolor -c 0.80000001192092896 0.80000001192092896 0.80000001192092896 attributeCopy_centerR
opset -d off -r off -h off -f off -y off -t off -l off -s off -u off -c off -e on -b off attributeCopy_centerR
opexprlanguage -s hscript attributeCopy_centerR
opuserdata -n '___Version___' -v '15.0.416' attributeCopy_centerR

# Node attributeCopy_centerP (Sop/attribcopy)
opadd -e -n attribcopy attributeCopy_centerP
oplocate -x -1.5645899999999999 -y -0.59862599999999999 attributeCopy_centerP
opspareds "" attributeCopy_centerP
opparm -V 15.0.416 attributeCopy_centerP srcgroup ( 'cell_`chs("../for/iString")`' ) srcgrouptype ( points ) destgroup ( "" ) destgrouptype ( points ) matchbyattribute ( off ) attributetomatch ( piece ) attrib ( otherattrib ) attribname ( centerP ) copyp ( off ) usenewname ( off ) newname ( "" ) class ( guess ) copyvariable ( on )
chlock attributeCopy_centerP -*
chautoscope attributeCopy_centerP -*
opcolor -c 0.80000001192092896 0.80000001192092896 0.80000001192092896 attributeCopy_centerP
opset -d off -r off -h off -f off -y off -t off -l off -s off -u off -c off -e on -b off attributeCopy_centerP
opexprlanguage -s hscript attributeCopy_centerP
opuserdata -n '___Version___' -v '15.0.416' attributeCopy_centerP

# Node attributeCreate_centerP (Sop/attribcreate::2.0)
opadd -e -n attribcreate::2.0 attributeCreate_centerP
oplocate -x 0.61019999999999996 -y 4.41622 attributeCreate_centerP
opspareds "" attributeCreate_centerP
opparm attributeCreate_centerP  numattr ( 1 )
chblockbegin
chadd -t 0 0 attributeCreate_centerP value1v1
chkey -t 0 -v 0 -m 0 -a 0 -A 0 -T a  -F '$TX' attributeCreate_centerP/value1v1
chadd -t 0 0 attributeCreate_centerP value1v2
chkey -t 0 -v 0 -m 0 -a 0 -A 0 -T a  -F '$TY' attributeCreate_centerP/value1v2
chadd -t 0 0 attributeCreate_centerP value1v3
chkey -t 0 -v 0 -m 0 -a 0 -A 0 -T a  -F '$TZ' attributeCreate_centerP/value1v3
chblockend
opparm -V 15.0.416 attributeCreate_centerP group ( "" ) grouptype ( guess ) numattr ( 1 ) enable1 ( on ) name1 ( centerP ) existing1 ( better ) createvarmap1 ( on ) varname1 ( "" ) class1 ( point ) savetoinfo1 ( off ) type1 ( vector ) typeinfo1 ( guess ) precision1 ( 32 ) size1 ( 1 ) default1v ( 0 0 0 0 ) writevalues1 ( on ) uselocal1 ( on ) value1v ( value1v1 value1v2 value1v3 0 ) string1 ( "" )
chlock attributeCreate_centerP -*
chautoscope attributeCreate_centerP -*
opcolor -c 0.80000001192092896 0.80000001192092896 0.80000001192092896 attributeCreate_centerP
opset -d off -r off -h off -f off -y off -t off -l off -s off -u off -c off -e on -b off attributeCreate_centerP
opexprlanguage -s hscript attributeCreate_centerP
opuserdata -n '___Version___' -v '15.0.416' attributeCreate_centerP

# Node group_neighbours (Sop/group)
opadd -e -n group group_neighbours
oplocate -x 0.61019999999999996 -y 2.82307 group_neighbours
opspareds "" group_neighbours
chblockbegin
chadd -t 0 0 group_neighbours rangeend
chkey -t 0 -v 0 -m 0 -a 0 -A 0 -T a  -F '$N' group_neighbours/rangeend
chblockend
opparm -V 15.0.416 group_neighbours group ( "" ) stdswitcher ( 1 1 1 ) docreategrp ( off ) crname ( neighbours ) entity ( point ) geotype ( all ) mergeop ( replace ) switcher2 ( 3 3 3 3 ) groupnumber ( on ) ordered ( off ) groupop ( grppattern ) filter ( 1 ) pattern ( "" ) range ( 0 rangeend ) select ( 1 2 ) groupbounding ( off ) boundtype ( usebbox ) size ( 1 1 1 ) t ( 0 0 0 ) iso ( 0 ) invertvolume ( off ) includenotwhollycontained ( off ) groupnormal ( off ) dir ( 0 0 1 ) angle ( 180 ) camerapath ( "" ) nonplanar ( off ) nonplanartol ( 0.001 ) groupedges ( off ) dominedgeangle ( off ) minedgeangle ( 20 ) domaxedgeangle ( off ) maxedgeangle ( 20 ) edgeanglebetweenedges ( off ) dominedgelen ( off ) minedgelen ( 0 ) domaxedgelen ( off ) maxedgelen ( 0 ) dodepth ( off ) edgestep ( 0 ) edgeptgrp ( 0 ) unshared ( off ) boundarygroups ( off ) combineentity ( points ) grpequal ( neighbours ) not1 ( on ) grp1 ( 'cell_`chs("../for/iString")`' ) op1 ( none ) not2 ( off ) grp2 ( "" ) op2 ( none ) not3 ( off ) grp3 ( "" ) op3 ( none ) not4 ( off ) grp4 ( "" ) switcher3 ( 0 0 0 ) oldname ( "" ) newname ( "" ) cnvfromtype ( primgroup ) cnvtotype ( ptgroup ) convertg ( "" ) cnvtname ( "" ) preserve ( off ) primswithallpts ( off ) destroyname ( "" ) type ( 1 )
chlock group_neighbours -*
chautoscope group_neighbours -*
opcolor -c 0.80000001192092896 0.80000001192092896 0.80000001192092896 group_neighbours
opset -d off -r off -h on -f off -y off -t off -l off -s off -u off -c off -e on -b off group_neighbours
opexprlanguage -s hscript group_neighbours
opuserdata -n '___Version___' -v '15.0.416' group_neighbours

# Node attributeCreate_centerPscale (Sop/attribcreate::2.0)
opadd -e -n attribcreate::2.0 attributeCreate_centerPscale
oplocate -x 0.61019999999999996 -y 3.6190699999999998 attributeCreate_centerPscale
opspareds "" attributeCreate_centerPscale
opparm attributeCreate_centerPscale  numattr ( 1 )
chblockbegin
chadd -t 0 0 attributeCreate_centerPscale value1v1
chkey -t 0 -v 0 -m 0 -a 0 -A 0 -T a  -F '$PSCALE' attributeCreate_centerPscale/value1v1
chblockend
opparm -V 15.0.416 attributeCreate_centerPscale group ( "" ) grouptype ( guess ) numattr ( 1 ) enable1 ( on ) name1 ( centerS ) existing1 ( better ) createvarmap1 ( on ) varname1 ( "" ) class1 ( point ) savetoinfo1 ( off ) type1 ( float ) typeinfo1 ( guess ) precision1 ( 32 ) size1 ( 1 ) default1v ( 0 0 0 0 ) writevalues1 ( on ) uselocal1 ( on ) value1v ( value1v1 0 0 0 ) string1 ( "" )
chlock attributeCreate_centerPscale -*
chautoscope attributeCreate_centerPscale -*
opcolor -c 0.80000001192092896 0.80000001192092896 0.80000001192092896 attributeCreate_centerPscale
opset -d off -r off -h off -f off -y off -t off -l off -s off -u off -c off -e on -b off attributeCreate_centerPscale
opexprlanguage -s hscript attributeCreate_centerPscale
opuserdata -n '___Version___' -v '15.0.416' attributeCreate_centerPscale

# Node partition_bubbleIdInternal (Sop/partition)
opadd -e -n partition partition_bubbleIdInternal
oplocate -x 5.0229799999999996 -y -8.1305300000000003 partition_bubbleIdInternal
opspareds "" partition_bubbleIdInternal
opparm -V 15.0.416 partition_bubbleIdInternal group ( "" ) entity ( primitive ) geotype ( all ) rule ( 'bubble_$ID' )
chlock partition_bubbleIdInternal -*
chautoscope partition_bubbleIdInternal -*
opcolor -c 0.80000001192092896 0.80000001192092896 0.80000001192092896 partition_bubbleIdInternal
opset -d off -r off -h off -f off -y off -t off -l off -s off -u off -c off -e on -b off partition_bubbleIdInternal
opexprlanguage -s hscript partition_bubbleIdInternal
opuserdata -n '___Version___' -v '15.0.416' partition_bubbleIdInternal

# Node attributePromote_restlength (Sop/attribpromote)
opadd -e -n attribpromote attributePromote_restlength
oplocate -x -1.16191 -y -2.27399 attributePromote_restlength
opspareds "" attributePromote_restlength
opparm -V 15.0.416 attributePromote_restlength inname ( restlength ) inclass ( primitive ) outclass ( point ) method ( first ) useoutname ( off ) outname ( "" ) deletein ( on )
chlock attributePromote_restlength -*
chautoscope attributePromote_restlength -*
opcolor -c 0.80000001192092896 0.80000001192092896 0.80000001192092896 attributePromote_restlength
opset -d off -r off -h off -f off -y off -t off -l off -s off -u off -c off -e on -b off attributePromote_restlength
opexprlanguage -s hscript attributePromote_restlength
opuserdata -n '___Version___' -v '15.0.416' attributePromote_restlength

# Node delete_nonCenter (Sop/delete)
opadd -e -n delete delete_nonCenter
oplocate -x 5.0229799999999996 -y -8.9364699999999999 delete_nonCenter
opspareds "" delete_nonCenter
chblockbegin
chadd -t 0 0 delete_nonCenter rangeend
chkey -t 0 -v 0 -m 0 -a 0 -A 0 -T a  -F '$N' delete_nonCenter/rangeend
chblockend
opparm -V 15.0.416 delete_nonCenter group ( 'bubble_`chs("../for/iString")`' ) negate ( keep ) entity ( primitive ) geotype ( all ) stdswitcher ( 0 0 0 0 ) affectnumber ( on ) groupop ( pattern ) filter ( 1 ) pattern ( !* ) range ( 0 rangeend ) select ( 1 2 ) affectvolume ( off ) boundtype ( usebbox ) size ( 1 1 1 ) t ( 0 0 0 ) affectnormal ( off ) dir ( 0 0 1 ) angle ( 180 ) camerapath ( "" ) affectdegenerate ( off ) degenerate ( off ) zaf ( off ) doopen ( off ) tol ( 0.001 ) removegrp ( on ) keeppoints ( off )
chlock delete_nonCenter -*
chautoscope delete_nonCenter -*
opcolor -c 0.80000001192092896 0.80000001192092896 0.80000001192092896 delete_nonCenter
opset -d off -r off -h off -f off -y off -t off -l off -s off -u off -c off -e on -b off delete_nonCenter
opexprlanguage -s hscript delete_nonCenter
opuserdata -n '___Version___' -v '15.0.416' delete_nonCenter

# Node merge2 (Sop/merge)
opadd -e -n merge merge2
oplocate -x 5.0213700000000001 -y -7.3802199999999996 merge2
opspareds "" merge2
opparm -V 15.0.416 merge2
chlock merge2 -*
chautoscope merge2 -*
opcolor -c 0.80000001192092896 0.80000001192092896 0.80000001192092896 merge2
opset -d off -r off -h off -f off -y off -t off -l off -s off -u off -c off -e on -b off merge2
opexprlanguage -s hscript merge2
opuserdata -n '___Version___' -v '15.0.416' merge2

# Node group_external (Sop/group)
opadd -e -n group group_external
oplocate -x 7.8295500000000002 -y -6.1965300000000001 group_external
opspareds "" group_external
chblockbegin
chadd -t 0 0 group_external rangeend
chkey -t 0 -v 0 -m 0 -a 0 -A 0 -T a  -F '$N' group_external/rangeend
chblockend
opparm -V 15.0.416 group_external group ( "" ) stdswitcher ( 0 0 0 ) docreategrp ( on ) crname ( external ) entity ( primitive ) geotype ( all ) mergeop ( replace ) switcher2 ( 0 0 0 0 ) groupnumber ( on ) ordered ( off ) groupop ( grppattern ) filter ( 1 ) pattern ( "" ) range ( 0 rangeend ) select ( 1 2 ) groupbounding ( off ) boundtype ( usebbox ) size ( 1 1 1 ) t ( 0 0 0 ) iso ( 0 ) invertvolume ( off ) includenotwhollycontained ( off ) groupnormal ( off ) dir ( 0 0 1 ) angle ( 180 ) camerapath ( "" ) nonplanar ( off ) nonplanartol ( 0.001 ) groupedges ( off ) dominedgeangle ( off ) minedgeangle ( 20 ) domaxedgeangle ( off ) maxedgeangle ( 20 ) edgeanglebetweenedges ( off ) dominedgelen ( off ) minedgelen ( 0 ) domaxedgelen ( off ) maxedgelen ( 0 ) dodepth ( off ) edgestep ( 0 ) edgeptgrp ( 0 ) unshared ( off ) boundarygroups ( off ) combineentity ( guess ) grpequal ( "" ) not1 ( off ) grp1 ( "" ) op1 ( none ) not2 ( off ) grp2 ( "" ) op2 ( none ) not3 ( off ) grp3 ( "" ) op3 ( none ) not4 ( off ) grp4 ( "" ) switcher3 ( 0 0 0 ) oldname ( "" ) newname ( "" ) cnvfromtype ( primgroup ) cnvtotype ( ptgroup ) convertg ( "" ) cnvtname ( "" ) preserve ( off ) primswithallpts ( off ) destroyname ( "" ) type ( 1 )
chlock group_external -*
chautoscope group_external -*
opcolor -c 0.80000001192092896 0.80000001192092896 0.80000001192092896 group_external
opset -d off -r off -h on -f off -y off -t off -l off -s off -u off -c off -e on -b off group_external
opexprlanguage -s hscript group_external
opuserdata -n '___Version___' -v '15.0.416' group_external

# Node copy_external (Sop/copy)
opadd -e -n copy copy_external
oplocate -x 7.4343399999999997 -y -0.79818299999999998 copy_external
opspareds "" copy_external
opparm -V 15.0.416 copy_external sourceGrp ( "" ) templateGrp ( "" ) stdswitcher ( 2 2 2 ) ncy ( 1 ) nml ( on ) cum ( on ) xOrd ( srt ) rOrd ( xyz ) t ( 0 0 0 ) r ( 0 0 0 ) s ( 1 1 1 ) shear ( 0 0 0 ) p ( 0 0 0 ) scale ( 1 ) vlength ( on ) newg ( off ) preservegroups ( off ) copyg ( 'copyGroup$CY' ) stamp ( off ) cacheinput ( off ) pack ( off ) pivot ( centroid ) viewportlod ( full ) attribstamps ( "" ) stampswitch ( 0 0 0 0 0 ) param1 ( "" ) val1 ( 0 ) param2 ( "" ) val2 ( 0 ) param3 ( "" ) val3 ( 0 ) param4 ( "" ) val4 ( 0 ) param5 ( "" ) val5 ( 0 ) param6 ( "" ) val6 ( 0 ) param7 ( "" ) val7 ( 0 ) param8 ( "" ) val8 ( 0 ) param9 ( "" ) val9 ( 0 ) param10 ( "" ) val10 ( 0 ) param11 ( "" ) val11 ( 0 ) param12 ( "" ) val12 ( 0 ) param13 ( "" ) val13 ( 0 ) param14 ( "" ) val14 ( 0 ) param15 ( "" ) val15 ( 0 ) param16 ( "" ) val16 ( 0 ) param17 ( "" ) val17 ( 0 ) param18 ( "" ) val18 ( 0 ) param19 ( "" ) val19 ( 0 ) param20 ( "" ) val20 ( 0 ) param21 ( "" ) val21 ( 0 ) param22 ( "" ) val22 ( 0 ) param23 ( "" ) val23 ( 0 ) param24 ( "" ) val24 ( 0 ) param25 ( "" ) val25 ( 0 ) param26 ( "" ) val26 ( 0 ) param27 ( "" ) val27 ( 0 ) param28 ( "" ) val28 ( 0 ) param29 ( "" ) val29 ( 0 ) param30 ( "" ) val30 ( 0 ) param31 ( "" ) val31 ( 0 ) param32 ( "" ) val32 ( 0 ) param33 ( "" ) val33 ( 0 ) param34 ( "" ) val34 ( 0 ) param35 ( "" ) val35 ( 0 ) param36 ( "" ) val36 ( 0 ) param37 ( "" ) val37 ( 0 ) param38 ( "" ) val38 ( 0 ) param39 ( "" ) val39 ( 0 ) param40 ( "" ) val40 ( 0 ) param41 ( "" ) val41 ( 0 ) param42 ( "" ) val42 ( 0 ) param43 ( "" ) val43 ( 0 ) param44 ( "" ) val44 ( 0 ) param45 ( "" ) val45 ( 0 ) param46 ( "" ) val46 ( 0 ) param47 ( "" ) val47 ( 0 ) param48 ( "" ) val48 ( 0 ) param49 ( "" ) val49 ( 0 ) param50 ( "" ) val50 ( 0 ) doattr ( on ) _label_ ( Set Mult Add Sub ) setpt ( *,^v,^Alpha ) mulpt ( Alpha ) addpt ( v ) subpt ( "" ) setprim ( "" ) mulprim ( "" ) addprim ( "" ) subprim ( "" ) setvtx ( "" ) mulvtx ( "" ) addvtx ( "" ) subvtx ( "" ) copyvariable ( on )
chlock copy_external -*
chautoscope copy_external -*
opcolor -c 0.80000001192092896 0.80000001192092896 0.80000001192092896 copy_external
opset -d off -r off -h off -f off -y off -t off -l off -s off -u off -c off -e on -b off copy_external
opexprlanguage -s hscript copy_external
opuserdata -n '___Version___' -v '15.0.416' copy_external

# Node delete_bubbleToBubble (Sop/delete)
opadd -e -n delete delete_bubbleToBubble
oplocate -x 7.8295500000000002 -y -5.3833500000000001 delete_bubbleToBubble
opspareds "" delete_bubbleToBubble
chblockbegin
chadd -t 0 0 delete_bubbleToBubble rangeend
chkey -t 0 -v 0 -m 0 -a 0 -A 0 -T a  -F '$N' delete_bubbleToBubble/rangeend
chblockend
opparm -V 15.0.416 delete_bubbleToBubble group ( airToAir ) negate ( dele ) entity ( primitive ) geotype ( all ) stdswitcher ( 0 0 0 0 ) affectnumber ( on ) groupop ( pattern ) filter ( 1 ) pattern ( !* ) range ( 0 rangeend ) select ( 1 2 ) affectvolume ( off ) boundtype ( usebbox ) size ( 1 1 1 ) t ( 0 0 0 ) affectnormal ( off ) dir ( 0 0 1 ) angle ( 180 ) camerapath ( "" ) affectdegenerate ( off ) degenerate ( off ) zaf ( off ) doopen ( off ) tol ( 0.001 ) removegrp ( on ) keeppoints ( off )
chlock delete_bubbleToBubble -*
chautoscope delete_bubbleToBubble -*
opcolor -c 0.80000001192092896 0.80000001192092896 0.80000001192092896 delete_bubbleToBubble
opset -d off -r off -h off -f off -y off -t off -l off -s off -u off -c off -e on -b off delete_bubbleToBubble
opexprlanguage -s hscript delete_bubbleToBubble
opuserdata -n '___Version___' -v '15.0.416' delete_bubbleToBubble

# Node group_internal (Sop/group)
opadd -e -n group group_internal
oplocate -x 2.2221700000000002 -y -6.1884100000000002 group_internal
opspareds "" group_internal
chblockbegin
chadd -t 0 0 group_internal rangeend
chkey -t 0 -v 0 -m 0 -a 0 -A 0 -T a  -F '$N' group_internal/rangeend
chblockend
opparm -V 15.0.416 group_internal group ( "" ) stdswitcher ( 0 0 0 ) docreategrp ( on ) crname ( internal ) entity ( primitive ) geotype ( all ) mergeop ( replace ) switcher2 ( 0 0 0 0 ) groupnumber ( on ) ordered ( off ) groupop ( grppattern ) filter ( 1 ) pattern ( "" ) range ( 0 rangeend ) select ( 1 2 ) groupbounding ( off ) boundtype ( usebbox ) size ( 1 1 1 ) t ( 0 0 0 ) iso ( 0 ) invertvolume ( off ) includenotwhollycontained ( off ) groupnormal ( off ) dir ( 0 0 1 ) angle ( 180 ) camerapath ( "" ) nonplanar ( off ) nonplanartol ( 0.001 ) groupedges ( off ) dominedgeangle ( off ) minedgeangle ( 20 ) domaxedgeangle ( off ) maxedgeangle ( 20 ) edgeanglebetweenedges ( off ) dominedgelen ( off ) minedgelen ( 0 ) domaxedgelen ( off ) maxedgelen ( 0 ) dodepth ( off ) edgestep ( 0 ) edgeptgrp ( 0 ) unshared ( off ) boundarygroups ( off ) combineentity ( guess ) grpequal ( "" ) not1 ( off ) grp1 ( "" ) op1 ( none ) not2 ( off ) grp2 ( "" ) op2 ( none ) not3 ( off ) grp3 ( "" ) op3 ( none ) not4 ( off ) grp4 ( "" ) switcher3 ( 0 0 0 ) oldname ( "" ) newname ( "" ) cnvfromtype ( primgroup ) cnvtotype ( ptgroup ) convertg ( "" ) cnvtname ( "" ) preserve ( off ) primswithallpts ( off ) destroyname ( "" ) type ( 1 )
chlock group_internal -*
chautoscope group_internal -*
opcolor -c 0.80000001192092896 0.80000001192092896 0.80000001192092896 group_internal
opset -d off -r off -h on -f off -y off -t off -l off -s off -u off -c off -e on -b off group_internal
opexprlanguage -s hscript group_internal
opuserdata -n '___Version___' -v '15.0.416' group_internal

# Node OUT (Sop/null)
opadd -e -n null OUT
oplocate -x 5.0229799999999996 -y -9.7847200000000001 OUT
opspareds "" OUT
opparm -V 15.0.416 OUT copyinput ( on ) cacheinput ( off )
chlock OUT -*
chautoscope OUT -*
opcolor -c 0.80000001192092896 0.80000001192092896 0.80000001192092896 OUT
opset -d on -r on -h off -f off -y off -t off -l off -s off -u off -c off -e on -b off OUT
opexprlanguage -s hscript OUT
opuserdata -n '___Version___' -v '15.0.416' OUT

# Node cookie_internal (Sop/cookie)
opadd -e -n cookie cookie_internal
oplocate -x 3.03715 -y -1.58179 cookie_internal
opspareds "" cookie_internal
opparm -V 15.0.416 cookie_internal groupA ( "" ) groupB ( "" ) tol3d ( 9.9999997473787516e-05 ) convex ( on ) stdswitcher ( 0 0 ) groupswitcher ( 0 0 ) boolop ( AminusB ) insideA ( on ) insideB ( off ) outsideA ( off ) outsideB ( off ) overlapA ( off ) overlapB ( off ) insidetest ( on ) closedA ( off ) closedB ( off ) createGroup ( off ) insideAGroup ( Ain ) insideBGroup ( Bin ) outsideAGroup ( Aout ) outsideBGroup ( Bout ) overlapAGroup ( Aoverlap ) overlapBGroup ( Boverlap ) consolidateedge ( off ) consolidatetol ( 9.9999997473787516e-05 ) keepsource ( off ) autojoin ( on ) dojitter ( off ) seed ( 1 ) jitteramount ( 0.00019999999494757503 )
chlock cookie_internal -*
chautoscope cookie_internal -*
opcolor -c 0.80000001192092896 0.80000001192092896 0.80000001192092896 cookie_internal
opset -d off -r off -h off -f off -y off -t off -l off -s off -u off -c off -e on -b on cookie_internal
opexprlanguage -s hscript cookie_internal
opuserdata -n '___Version___' -v '15.0.416' cookie_internal

# Node cookie_external (Sop/cookie)
opadd -e -n cookie cookie_external
oplocate -x 7.4343399999999997 -y -1.57927 cookie_external
opspareds "" cookie_external
opparm -V 15.0.416 cookie_external groupA ( "" ) groupB ( "" ) tol3d ( 9.9999997473787516e-05 ) convex ( on ) stdswitcher ( 0 0 ) groupswitcher ( 0 0 ) boolop ( AminusB ) insideA ( on ) insideB ( off ) outsideA ( off ) outsideB ( off ) overlapA ( off ) overlapB ( off ) insidetest ( on ) closedA ( off ) closedB ( off ) createGroup ( off ) insideAGroup ( Ain ) insideBGroup ( Bin ) outsideAGroup ( Aout ) outsideBGroup ( Bout ) overlapAGroup ( Aoverlap ) overlapBGroup ( Boverlap ) consolidateedge ( off ) consolidatetol ( 9.9999997473787516e-05 ) keepsource ( off ) autojoin ( on ) dojitter ( off ) seed ( 1 ) jitteramount ( 0.00019999999494757503 )
chlock cookie_external -*
chautoscope cookie_external -*
opcolor -c 0.80000001192092896 0.80000001192092896 0.80000001192092896 cookie_external
opset -d off -r off -h off -f off -y off -t off -l off -s off -u off -c off -e on -b on cookie_external
opexprlanguage -s hscript cookie_external
opuserdata -n '___Version___' -v '15.0.416' cookie_external
oporder -e for delete_nonPrimitive delete_nonPoints voronoiFracture_internal copy_internal delete_unusedGroups attributeCopy_centerR attributeCopy_centerP attributeCreate_centerP attributeWrangle_toFilmInternal group_neighbours attributeCreate_centerPscale partition_bubbleIdInternal attributePromote_restlength attributeWrangle_pscaleInternal voronoiFracture_external delete_nonCenter merge2 group_external attributeWrangle_toFilmExternal attributeWrangle_pscaleExternal copy_external delete_bubbleToBubble group_internal OUT cookie_internal cookie_external 
opcf ..

# Node attributeCreate_id (Sop/attribcreate::2.0)
opadd -e -n attribcreate::2.0 attributeCreate_id
oplocate -x -1.19679 -y 5.5999800000000004 attributeCreate_id
opspareds "" attributeCreate_id
opparm attributeCreate_id  numattr ( 1 )
chblockbegin
chadd -t 0 0 attributeCreate_id value1v1
chkey -t 0 -v 0 -m 0 -a 0 -A 0 -T a  -F '$PT' attributeCreate_id/value1v1
chblockend
opparm -V 15.0.416 attributeCreate_id group ( "" ) grouptype ( guess ) numattr ( 1 ) enable1 ( on ) name1 ( id ) existing1 ( better ) createvarmap1 ( on ) varname1 ( "" ) class1 ( point ) savetoinfo1 ( off ) type1 ( int ) typeinfo1 ( guess ) precision1 ( 32 ) size1 ( 1 ) default1v ( 0 0 0 0 ) writevalues1 ( on ) uselocal1 ( on ) value1v ( value1v1 0 0 0 ) string1 ( "" )
chlock attributeCreate_id -*
chautoscope attributeCreate_id -*
opcolor -c 0.80000001192092896 0.80000001192092896 0.80000001192092896 attributeCreate_id
opset -d off -r off -h off -f off -y off -t off -l off -s off -u off -c off -e on -b off attributeCreate_id
opexprlanguage -s hscript attributeCreate_id
opuserdata -n '___Version___' -v '15.0.416' attributeCreate_id

# Node group_convertCellGroupsToPrimitives (Sop/group)
opadd -e -n group group_convertCellGroupsToPrimitives
oplocate -x -1.19679 -y -5.0120699999999996 group_convertCellGroupsToPrimitives
opspareds "" group_convertCellGroupsToPrimitives
chblockbegin
chadd -t 0 0 group_convertCellGroupsToPrimitives rangeend
chkey -t 0 -v 0 -m 0 -a 0 -A 0 -T a  -F '$N' group_convertCellGroupsToPrimitives/rangeend
chblockend
opparm -V 15.0.416 group_convertCellGroupsToPrimitives group ( "" ) stdswitcher ( 2 2 2 ) docreategrp ( off ) crname ( group8 ) entity ( primitive ) geotype ( all ) mergeop ( replace ) switcher2 ( 3 3 3 3 ) groupnumber ( on ) ordered ( off ) groupop ( grppattern ) filter ( 1 ) pattern ( "" ) range ( 0 rangeend ) select ( 1 2 ) groupbounding ( off ) boundtype ( usebbox ) size ( 1 1 1 ) t ( 0 0 0 ) iso ( 0 ) invertvolume ( off ) includenotwhollycontained ( off ) groupnormal ( off ) dir ( 0 0 1 ) angle ( 180 ) camerapath ( "" ) nonplanar ( off ) nonplanartol ( 0.001 ) groupedges ( off ) dominedgeangle ( off ) minedgeangle ( 20 ) domaxedgeangle ( off ) maxedgeangle ( 20 ) edgeanglebetweenedges ( off ) dominedgelen ( off ) minedgelen ( 0 ) domaxedgelen ( off ) maxedgelen ( 0 ) dodepth ( off ) edgestep ( 0 ) edgeptgrp ( 0 ) unshared ( off ) boundarygroups ( off ) combineentity ( guess ) grpequal ( "" ) not1 ( off ) grp1 ( "" ) op1 ( none ) not2 ( off ) grp2 ( "" ) op2 ( none ) not3 ( off ) grp3 ( "" ) op3 ( none ) not4 ( off ) grp4 ( "" ) switcher3 ( 1 1 1 ) oldname ( "" ) newname ( "" ) cnvfromtype ( ptgroup ) cnvtotype ( primgroup ) convertg ( cell_* ) cnvtname ( cell_* ) preserve ( on ) primswithallpts ( off ) destroyname ( "" ) type ( 1 )
chlock group_convertCellGroupsToPrimitives -*
chautoscope group_convertCellGroupsToPrimitives -*
opcolor -c 0.80000001192092896 0.80000001192092896 0.80000001192092896 group_convertCellGroupsToPrimitives
opset -d off -r off -h on -f off -y off -t off -l off -s off -u off -c off -e on -b off group_convertCellGroupsToPrimitives
opexprlanguage -s hscript group_convertCellGroupsToPrimitives
opuserdata -n '___Version___' -v '15.0.416' group_convertCellGroupsToPrimitives

# Node partition_cellGroupsOnPoints (Sop/partition)
opadd -e -n partition partition_cellGroupsOnPoints
oplocate -x -1.19679 -y -4.2049000000000003 partition_cellGroupsOnPoints
opspareds "" partition_cellGroupsOnPoints
opparm -V 15.0.416 partition_cellGroupsOnPoints group ( "" ) entity ( point ) geotype ( all ) rule ( 'cell_$PT' )
chlock partition_cellGroupsOnPoints -*
chautoscope partition_cellGroupsOnPoints -*
opcolor -c 0.80000001192092896 0.80000001192092896 0.80000001192092896 partition_cellGroupsOnPoints
opset -d off -r off -h off -f off -y off -t off -l off -s off -u off -c off -e on -b off partition_cellGroupsOnPoints
opexprlanguage -s hscript partition_cellGroupsOnPoints
opuserdata -n '___Version___' -v '15.0.416' partition_cellGroupsOnPoints

# Node group_defaultCell (Sop/group)
opadd -e -n group group_defaultCell
oplocate -x -1.19679 -y -5.8116700000000003 group_defaultCell
opspareds "" group_defaultCell
chblockbegin
chadd -t 0 0 group_defaultCell rangeend
chkey -t 0 -v 0 -m 0 -a 0 -A 0 -T a  -F '$N' group_defaultCell/rangeend
chblockend
opparm -V 15.0.416 group_defaultCell group ( "" ) stdswitcher ( 0 0 0 ) docreategrp ( on ) crname ( cell_99999 ) entity ( point ) geotype ( all ) mergeop ( replace ) switcher2 ( 0 0 0 0 ) groupnumber ( on ) ordered ( off ) groupop ( grppattern ) filter ( 1 ) pattern ( !* ) range ( 0 rangeend ) select ( 1 2 ) groupbounding ( off ) boundtype ( usebbox ) size ( 1 1 1 ) t ( 0 0 0 ) iso ( 0 ) invertvolume ( off ) includenotwhollycontained ( off ) groupnormal ( off ) dir ( 0 0 1 ) angle ( 180 ) camerapath ( "" ) nonplanar ( off ) nonplanartol ( 0.001 ) groupedges ( off ) dominedgeangle ( off ) minedgeangle ( 20 ) domaxedgeangle ( off ) maxedgeangle ( 20 ) edgeanglebetweenedges ( off ) dominedgelen ( off ) minedgelen ( 0 ) domaxedgelen ( off ) maxedgelen ( 0 ) dodepth ( off ) edgestep ( 0 ) edgeptgrp ( 0 ) unshared ( off ) boundarygroups ( off ) combineentity ( guess ) grpequal ( "" ) not1 ( off ) grp1 ( "" ) op1 ( none ) not2 ( off ) grp2 ( "" ) op2 ( none ) not3 ( off ) grp3 ( "" ) op3 ( none ) not4 ( off ) grp4 ( "" ) switcher3 ( 0 0 0 ) oldname ( "" ) newname ( "" ) cnvfromtype ( primgroup ) cnvtotype ( ptgroup ) convertg ( "" ) cnvtname ( "" ) preserve ( off ) primswithallpts ( off ) destroyname ( "" ) type ( 1 )
chlock group_defaultCell -*
chautoscope group_defaultCell -*
opcolor -c 0.80000001192092896 0.80000001192092896 0.80000001192092896 group_defaultCell
opset -d off -r off -h on -f off -y off -t off -l off -s off -u off -c off -e on -b off group_defaultCell
opexprlanguage -s hscript group_defaultCell
opuserdata -n '___Version___' -v '15.0.416' group_defaultCell

# Node delete_interiorLink (Sop/delete)
opadd -e -n delete delete_interiorLink
oplocate -x -1.19679 -y -3.4148000000000001 delete_interiorLink
opspareds "" delete_interiorLink
chblockbegin
chadd -t 0 0 delete_interiorLink filter
chkey -t 0 -v 1 -m 0 -a 0 -A 0 -T a  -F '$LENGTH < max($RI, $RJ)' delete_interiorLink/filter
chadd -t 0 0 delete_interiorLink rangeend
chkey -t 0 -v 0 -m 0 -a 0 -A 0 -T a  -F '$N' delete_interiorLink/rangeend
chblockend
opparm -V 15.0.416 delete_interiorLink group ( "" ) negate ( dele ) entity ( primitive ) geotype ( all ) stdswitcher ( 0 0 0 0 ) affectnumber ( on ) groupop ( filter ) filter ( filter ) pattern ( !* ) range ( 0 rangeend ) select ( 1 2 ) affectvolume ( off ) boundtype ( usebbox ) size ( 1 1 1 ) t ( 0 0 0 ) affectnormal ( off ) dir ( 0 0 1 ) angle ( 180 ) camerapath ( "" ) affectdegenerate ( off ) degenerate ( off ) zaf ( off ) doopen ( off ) tol ( 0.001 ) removegrp ( on ) keeppoints ( off )
chlock delete_interiorLink -*
chautoscope delete_interiorLink -*
opcolor -c 0.80000001192092896 0.80000001192092896 0.80000001192092896 delete_interiorLink
opset -d off -r off -h off -f off -y off -t off -l off -s off -u off -c off -e on -b off delete_interiorLink
opexprlanguage -s hscript delete_interiorLink
opuserdata -n '___Version___' -v '15.0.416' delete_interiorLink

# Node attributePromote_ri (Sop/attribpromote)
opadd -e -n attribpromote attributePromote_ri
oplocate -x -1.19679 -y -0.21429599999999999 attributePromote_ri
opspareds "" attributePromote_ri
opparm -V 15.0.416 attributePromote_ri inname ( pscale ) inclass ( point ) outclass ( primitive ) method ( first ) useoutname ( on ) outname ( ri ) deletein ( off )
chlock attributePromote_ri -*
chautoscope attributePromote_ri -*
opcolor -c 0.80000001192092896 0.80000001192092896 0.80000001192092896 attributePromote_ri
opset -d off -r off -h off -f off -y off -t off -l off -s off -u off -c off -e on -b off attributePromote_ri
opexprlanguage -s hscript attributePromote_ri
opuserdata -n '___Version___' -v '15.0.416' attributePromote_ri

# Node attributePromote_rj (Sop/attribpromote)
opadd -e -n attribpromote attributePromote_rj
oplocate -x -1.19679 -y -1.0117 attributePromote_rj
opspareds "" attributePromote_rj
opparm -V 15.0.416 attributePromote_rj inname ( pscale ) inclass ( point ) outclass ( primitive ) method ( last ) useoutname ( on ) outname ( rj ) deletein ( off )
chlock attributePromote_rj -*
chautoscope attributePromote_rj -*
opcolor -c 0.80000001192092896 0.80000001192092896 0.80000001192092896 attributePromote_rj
opset -d off -r off -h off -f off -y off -t off -l off -s off -u off -c off -e on -b off attributePromote_rj
opexprlanguage -s hscript attributePromote_rj
opuserdata -n '___Version___' -v '15.0.416' attributePromote_rj

# Node attributesCreate_lengthRiRj (Sop/attribcreate::2.0)
opadd -e -n attribcreate::2.0 attributesCreate_lengthRiRj
oplocate -x -1.19679 -y 4.8005399999999998 attributesCreate_lengthRiRj
opspareds "" attributesCreate_lengthRiRj
opparm attributesCreate_lengthRiRj  numattr ( 3 )
opparm -V 15.0.416 attributesCreate_lengthRiRj group ( "" ) grouptype ( guess ) numattr ( 3 ) enable1 ( on ) name1 ( length ) existing1 ( better ) createvarmap1 ( on ) varname1 ( "" ) class1 ( primitive ) savetoinfo1 ( off ) type1 ( float ) typeinfo1 ( guess ) precision1 ( 32 ) size1 ( 1 ) default1v ( 0 0 0 0 ) writevalues1 ( on ) uselocal1 ( on ) value1v ( 0 0 0 0 ) string1 ( "" ) enable2 ( on ) name2 ( ri ) existing2 ( better ) createvarmap2 ( on ) varname2 ( "" ) class2 ( primitive ) savetoinfo2 ( off ) type2 ( float ) typeinfo2 ( guess ) precision2 ( 32 ) size2 ( 1 ) default2v ( 0 0 0 0 ) writevalues2 ( on ) uselocal2 ( on ) value2v ( 0 0 0 0 ) string2 ( "" ) enable3 ( on ) name3 ( rj ) existing3 ( better ) createvarmap3 ( on ) varname3 ( "" ) class3 ( primitive ) savetoinfo3 ( off ) type3 ( float ) typeinfo3 ( guess ) precision3 ( 32 ) size3 ( 1 ) default3v ( 0 0 0 0 ) writevalues3 ( on ) uselocal3 ( on ) value3v ( 0 0 0 0 ) string3 ( "" )
chlock attributesCreate_lengthRiRj -*
chautoscope attributesCreate_lengthRiRj -*
opcolor -c 0.80000001192092896 0.80000001192092896 0.80000001192092896 attributesCreate_lengthRiRj
opset -d off -r off -h off -f off -y off -t off -l off -s off -u off -c off -e on -b off attributesCreate_lengthRiRj
opexprlanguage -s hscript attributesCreate_lengthRiRj
opuserdata -n '___Version___' -v '15.0.416' attributesCreate_lengthRiRj

# Node delete_longLinks (Sop/delete)
opadd -e -n delete delete_longLinks
oplocate -x -1.19679 -y -2.61348 delete_longLinks
opspareds "" delete_longLinks
chblockbegin
chadd -t 0 0 delete_longLinks filter
chkey -t 0 -v 1 -m 0 -a 0 -A 0 -T a  -F '$LENGTH < ($RI + $RJ)' delete_longLinks/filter
chadd -t 0 0 delete_longLinks rangeend
chkey -t 0 -v 0 -m 0 -a 0 -A 0 -T a  -F '$N' delete_longLinks/rangeend
chblockend
opparm -V 15.0.416 delete_longLinks group ( "" ) negate ( keep ) entity ( primitive ) geotype ( all ) stdswitcher ( 0 0 0 0 ) affectnumber ( on ) groupop ( filter ) filter ( filter ) pattern ( !* ) range ( 0 rangeend ) select ( 1 2 ) affectvolume ( off ) boundtype ( usebbox ) size ( 1 1 1 ) t ( 0 0 0 ) affectnormal ( off ) dir ( 0 0 1 ) angle ( 180 ) camerapath ( "" ) affectdegenerate ( off ) degenerate ( off ) zaf ( off ) doopen ( off ) tol ( 0.001 ) removegrp ( on ) keeppoints ( on )
chlock delete_longLinks -*
chautoscope delete_longLinks -*
opcolor -c 0.80000001192092896 0.80000001192092896 0.80000001192092896 delete_longLinks
opset -d off -r off -h off -f off -y off -t off -l off -s off -u off -c off -e on -b off delete_longLinks
opexprlanguage -s hscript delete_longLinks
opuserdata -n '___Version___' -v '15.0.416' delete_longLinks

# Node attributeCreate_minLength (Sop/attribcreate::2.0)
opadd -e -n attribcreate::2.0 attributeCreate_minLength
oplocate -x -1.19679 -y 3.19102 attributeCreate_minLength
opspareds "" attributeCreate_minLength
opparm attributeCreate_minLength  numattr ( 1 )
opparm -V 15.0.416 attributeCreate_minLength group ( "" ) grouptype ( guess ) numattr ( 1 ) enable1 ( on ) name1 ( minLength ) existing1 ( better ) createvarmap1 ( on ) varname1 ( "" ) class1 ( point ) savetoinfo1 ( off ) type1 ( float ) typeinfo1 ( guess ) precision1 ( 32 ) size1 ( 1 ) default1v ( 0 0 0 0 ) writevalues1 ( on ) uselocal1 ( on ) value1v ( 0 0 0 0 ) string1 ( "" )
chlock attributeCreate_minLength -*
chautoscope attributeCreate_minLength -*
opcolor -c 0.80000001192092896 0.80000001192092896 0.80000001192092896 attributeCreate_minLength
opset -d off -r off -h off -f off -y off -t off -l off -s off -u off -c off -e on -b off attributeCreate_minLength
opexprlanguage -s hscript attributeCreate_minLength
opuserdata -n '___Version___' -v '15.0.416' attributeCreate_minLength

# Node attributePromote_minLength (Sop/attribpromote)
opadd -e -n attribpromote attributePromote_minLength
oplocate -x -1.19679 -y 2.3899900000000001 attributePromote_minLength
opspareds "" attributePromote_minLength
opparm -V 15.0.416 attributePromote_minLength inname ( restlength ) inclass ( primitive ) outclass ( point ) method ( min ) useoutname ( on ) outname ( minLength ) deletein ( off )
chlock attributePromote_minLength -*
chautoscope attributePromote_minLength -*
opcolor -c 0.80000001192092896 0.80000001192092896 0.80000001192092896 attributePromote_minLength
opset -d off -r off -h off -f off -y off -t off -l off -s off -u off -c off -e on -b off attributePromote_minLength
opexprlanguage -s hscript attributePromote_minLength
opuserdata -n '___Version___' -v '15.0.416' attributePromote_minLength

# Node IN (Sop/null)
opadd -e -n null IN
oplocate -x -1.19679 -y 6.3741300000000001 IN
opspareds "" IN
opparm -V 15.0.416 IN copyinput ( on ) cacheinput ( off )
chlock IN -*
chautoscope IN -*
opcolor -c 0.80000001192092896 0.80000001192092896 0.80000001192092896 IN
opset -d off -r off -h off -f off -y off -t off -l off -s off -u off -c off -e on -b off IN
opexprlanguage -s hscript IN
opuserdata -n '___Version___' -v '15.0.416' IN

# Node OUT (Sop/null)
opadd -e -n null OUT
oplocate -x 2.8137599999999998 -y -13.922000000000001 OUT
opspareds "" OUT
opparm -V 15.0.416 OUT copyinput ( on ) cacheinput ( off )
chlock OUT -*
chautoscope OUT -*
opcolor -c 0.80000001192092896 0.80000001192092896 0.80000001192092896 OUT
opset -d on -r on -h off -f off -y off -t off -l off -s off -u off -c off -e on -b off OUT
opexprlanguage -s hscript OUT
opuserdata -n '___Version___' -v '15.0.416' OUT

# Node switch_correctScale (Sop/switch)
opadd -e -n switch switch_correctScale
oplocate -x -1.19679 -y 0.58377900000000005 switch_correctScale
opspareds "" switch_correctScale
chblockbegin
chadd -t 0 0 switch_correctScale input
chkey -t 0 -v 0 -m 0 -a 0 -A 0 -T a  -F 'ch("../avoidoverlapping")' switch_correctScale/input
chblockend
opparm -V 15.0.416 switch_correctScale input ( input )
chlock switch_correctScale -*
chautoscope switch_correctScale -*
opcolor -c 0.80000001192092896 0.80000001192092896 0.80000001192092896 switch_correctScale
opset -d off -r off -h off -f off -y off -t off -l off -s off -u off -c off -e on -b off switch_correctScale
opexprlanguage -s hscript switch_correctScale
opuserdata -n '___Version___' -v '15.0.416' switch_correctScale

# Node merge_isolatedBubbles (Sop/merge)
opadd -e -n merge merge_isolatedBubbles
oplocate -x 2.8137599999999998 -y -11.941599999999999 merge_isolatedBubbles
opspareds "" merge_isolatedBubbles
opparm -V 15.0.416 merge_isolatedBubbles
chlock merge_isolatedBubbles -*
chautoscope merge_isolatedBubbles -*
opcolor -c 0.80000001192092896 0.80000001192092896 0.80000001192092896 merge_isolatedBubbles
opset -d off -r off -h off -f off -y off -t off -l off -s off -u off -c off -e on -b off merge_isolatedBubbles
opexprlanguage -s hscript merge_isolatedBubbles
opuserdata -n '___Version___' -v '15.0.416' merge_isolatedBubbles

# Node delete_primitives (Sop/delete)
opadd -e -n delete delete_primitives
oplocate -x 7.6245500000000002 -y -6.5861700000000001 delete_primitives
opspareds "" delete_primitives
chblockbegin
chadd -t 0 0 delete_primitives rangeend
chkey -t 0 -v 0 -m 0 -a 0 -A 0 -T a  -F '$N' delete_primitives/rangeend
chblockend
opparm -V 15.0.416 delete_primitives group ( "" ) negate ( dele ) entity ( primitive ) geotype ( all ) stdswitcher ( 0 0 0 0 ) affectnumber ( on ) groupop ( pattern ) filter ( 1 ) pattern ( * ) range ( 0 rangeend ) select ( 1 2 ) affectvolume ( off ) boundtype ( usebbox ) size ( 1 1 1 ) t ( 0 0 0 ) affectnormal ( off ) dir ( 0 0 1 ) angle ( 180 ) camerapath ( "" ) affectdegenerate ( off ) degenerate ( off ) zaf ( off ) doopen ( off ) tol ( 0.001 ) removegrp ( on ) keeppoints ( off )
chlock delete_primitives -*
chautoscope delete_primitives -*
opcolor -c 0.80000001192092896 0.80000001192092896 0.80000001192092896 delete_primitives
opset -d off -r off -h off -f off -y off -t off -l off -s off -u off -c off -e on -b off delete_primitives
opexprlanguage -s hscript delete_primitives
opuserdata -n '___Version___' -v '15.0.416' delete_primitives

# Node copy_internal (Sop/copy)
opadd -e -n copy copy_internal
oplocate -x 5.23611 -y -8.3756900000000005 copy_internal
opspareds "" copy_internal
opparm -V 15.0.416 copy_internal sourceGrp ( "" ) templateGrp ( "" ) stdswitcher ( 0 0 0 ) ncy ( 1 ) nml ( on ) cum ( on ) xOrd ( srt ) rOrd ( xyz ) t ( 0 0 0 ) r ( 0 0 0 ) s ( 1 1 1 ) shear ( 0 0 0 ) p ( 0 0 0 ) scale ( 1 ) vlength ( on ) newg ( on ) preservegroups ( on ) copyg ( 'bubble_$ID' ) stamp ( off ) cacheinput ( off ) pack ( off ) pivot ( centroid ) viewportlod ( full ) attribstamps ( "" ) stampswitch ( 0 0 0 0 0 ) param1 ( "" ) val1 ( 0 ) param2 ( "" ) val2 ( 0 ) param3 ( "" ) val3 ( 0 ) param4 ( "" ) val4 ( 0 ) param5 ( "" ) val5 ( 0 ) param6 ( "" ) val6 ( 0 ) param7 ( "" ) val7 ( 0 ) param8 ( "" ) val8 ( 0 ) param9 ( "" ) val9 ( 0 ) param10 ( "" ) val10 ( 0 ) param11 ( "" ) val11 ( 0 ) param12 ( "" ) val12 ( 0 ) param13 ( "" ) val13 ( 0 ) param14 ( "" ) val14 ( 0 ) param15 ( "" ) val15 ( 0 ) param16 ( "" ) val16 ( 0 ) param17 ( "" ) val17 ( 0 ) param18 ( "" ) val18 ( 0 ) param19 ( "" ) val19 ( 0 ) param20 ( "" ) val20 ( 0 ) param21 ( "" ) val21 ( 0 ) param22 ( "" ) val22 ( 0 ) param23 ( "" ) val23 ( 0 ) param24 ( "" ) val24 ( 0 ) param25 ( "" ) val25 ( 0 ) param26 ( "" ) val26 ( 0 ) param27 ( "" ) val27 ( 0 ) param28 ( "" ) val28 ( 0 ) param29 ( "" ) val29 ( 0 ) param30 ( "" ) val30 ( 0 ) param31 ( "" ) val31 ( 0 ) param32 ( "" ) val32 ( 0 ) param33 ( "" ) val33 ( 0 ) param34 ( "" ) val34 ( 0 ) param35 ( "" ) val35 ( 0 ) param36 ( "" ) val36 ( 0 ) param37 ( "" ) val37 ( 0 ) param38 ( "" ) val38 ( 0 ) param39 ( "" ) val39 ( 0 ) param40 ( "" ) val40 ( 0 ) param41 ( "" ) val41 ( 0 ) param42 ( "" ) val42 ( 0 ) param43 ( "" ) val43 ( 0 ) param44 ( "" ) val44 ( 0 ) param45 ( "" ) val45 ( 0 ) param46 ( "" ) val46 ( 0 ) param47 ( "" ) val47 ( 0 ) param48 ( "" ) val48 ( 0 ) param49 ( "" ) val49 ( 0 ) param50 ( "" ) val50 ( 0 ) doattr ( on ) _label_ ( Set Mult Add Sub ) setpt ( *,^v,^Alpha ) mulpt ( Alpha ) addpt ( v ) subpt ( "" ) setprim ( "" ) mulprim ( "" ) addprim ( "" ) subprim ( "" ) setvtx ( "" ) mulvtx ( "" ) addvtx ( "" ) subvtx ( "" ) copyvariable ( on )
chlock copy_internal -*
chautoscope copy_internal -*
opcolor -c 0.80000001192092896 0.80000001192092896 0.80000001192092896 copy_internal
opset -d off -r off -h off -f off -y off -t off -l off -s off -u off -c off -e on -b off copy_internal
opexprlanguage -s hscript copy_internal
opuserdata -n '___Version___' -v '15.0.416' copy_internal

# Node copy_external (Sop/copy)
opadd -e -n copy copy_external
oplocate -x 9.6333000000000002 -y -8.3756900000000005 copy_external
opspareds "" copy_external
opparm -V 15.0.416 copy_external sourceGrp ( "" ) templateGrp ( "" ) stdswitcher ( 0 0 0 ) ncy ( 1 ) nml ( on ) cum ( on ) xOrd ( srt ) rOrd ( xyz ) t ( 0 0 0 ) r ( 0 0 0 ) s ( 1 1 1 ) shear ( 0 0 0 ) p ( 0 0 0 ) scale ( 1 ) vlength ( on ) newg ( on ) preservegroups ( on ) copyg ( 'bubble_$ID' ) stamp ( off ) cacheinput ( off ) pack ( off ) pivot ( centroid ) viewportlod ( full ) attribstamps ( "" ) stampswitch ( 0 0 0 0 0 ) param1 ( "" ) val1 ( 0 ) param2 ( "" ) val2 ( 0 ) param3 ( "" ) val3 ( 0 ) param4 ( "" ) val4 ( 0 ) param5 ( "" ) val5 ( 0 ) param6 ( "" ) val6 ( 0 ) param7 ( "" ) val7 ( 0 ) param8 ( "" ) val8 ( 0 ) param9 ( "" ) val9 ( 0 ) param10 ( "" ) val10 ( 0 ) param11 ( "" ) val11 ( 0 ) param12 ( "" ) val12 ( 0 ) param13 ( "" ) val13 ( 0 ) param14 ( "" ) val14 ( 0 ) param15 ( "" ) val15 ( 0 ) param16 ( "" ) val16 ( 0 ) param17 ( "" ) val17 ( 0 ) param18 ( "" ) val18 ( 0 ) param19 ( "" ) val19 ( 0 ) param20 ( "" ) val20 ( 0 ) param21 ( "" ) val21 ( 0 ) param22 ( "" ) val22 ( 0 ) param23 ( "" ) val23 ( 0 ) param24 ( "" ) val24 ( 0 ) param25 ( "" ) val25 ( 0 ) param26 ( "" ) val26 ( 0 ) param27 ( "" ) val27 ( 0 ) param28 ( "" ) val28 ( 0 ) param29 ( "" ) val29 ( 0 ) param30 ( "" ) val30 ( 0 ) param31 ( "" ) val31 ( 0 ) param32 ( "" ) val32 ( 0 ) param33 ( "" ) val33 ( 0 ) param34 ( "" ) val34 ( 0 ) param35 ( "" ) val35 ( 0 ) param36 ( "" ) val36 ( 0 ) param37 ( "" ) val37 ( 0 ) param38 ( "" ) val38 ( 0 ) param39 ( "" ) val39 ( 0 ) param40 ( "" ) val40 ( 0 ) param41 ( "" ) val41 ( 0 ) param42 ( "" ) val42 ( 0 ) param43 ( "" ) val43 ( 0 ) param44 ( "" ) val44 ( 0 ) param45 ( "" ) val45 ( 0 ) param46 ( "" ) val46 ( 0 ) param47 ( "" ) val47 ( 0 ) param48 ( "" ) val48 ( 0 ) param49 ( "" ) val49 ( 0 ) param50 ( "" ) val50 ( 0 ) doattr ( on ) _label_ ( Set Mult Add Sub ) setpt ( *,^v,^Alpha ) mulpt ( Alpha ) addpt ( v ) subpt ( "" ) setprim ( "" ) mulprim ( "" ) addprim ( "" ) subprim ( "" ) setvtx ( "" ) mulvtx ( "" ) addvtx ( "" ) subvtx ( "" ) copyvariable ( on )
chlock copy_external -*
chautoscope copy_external -*
opcolor -c 0.80000001192092896 0.80000001192092896 0.80000001192092896 copy_external
opset -d off -r off -h off -f off -y off -t off -l off -s off -u off -c off -e on -b off copy_external
opexprlanguage -s hscript copy_external
opuserdata -n '___Version___' -v '15.0.416' copy_external

# Node group_external (Sop/group)
opadd -e -n group group_external
oplocate -x 9.6333000000000002 -y -10.906700000000001 group_external
opspareds "" group_external
chblockbegin
chadd -t 0 0 group_external rangeend
chkey -t 0 -v 0 -m 0 -a 0 -A 0 -T a  -F '$N' group_external/rangeend
chblockend
opparm -V 15.0.416 group_external group ( "" ) stdswitcher ( 0 0 0 ) docreategrp ( on ) crname ( external ) entity ( primitive ) geotype ( all ) mergeop ( replace ) switcher2 ( 0 0 0 0 ) groupnumber ( on ) ordered ( off ) groupop ( grppattern ) filter ( 1 ) pattern ( "" ) range ( 0 rangeend ) select ( 1 2 ) groupbounding ( off ) boundtype ( usebbox ) size ( 1 1 1 ) t ( 0 0 0 ) iso ( 0 ) invertvolume ( off ) includenotwhollycontained ( off ) groupnormal ( off ) dir ( 0 0 1 ) angle ( 180 ) camerapath ( "" ) nonplanar ( off ) nonplanartol ( 0.001 ) groupedges ( off ) dominedgeangle ( off ) minedgeangle ( 20 ) domaxedgeangle ( off ) maxedgeangle ( 20 ) edgeanglebetweenedges ( off ) dominedgelen ( off ) minedgelen ( 0 ) domaxedgelen ( off ) maxedgelen ( 0 ) dodepth ( off ) edgestep ( 0 ) edgeptgrp ( 0 ) unshared ( off ) boundarygroups ( off ) combineentity ( guess ) grpequal ( "" ) not1 ( off ) grp1 ( "" ) op1 ( none ) not2 ( off ) grp2 ( "" ) op2 ( none ) not3 ( off ) grp3 ( "" ) op3 ( none ) not4 ( off ) grp4 ( "" ) switcher3 ( 0 0 0 ) oldname ( "" ) newname ( "" ) cnvfromtype ( primgroup ) cnvtotype ( ptgroup ) convertg ( "" ) cnvtname ( "" ) preserve ( off ) primswithallpts ( off ) destroyname ( "" ) type ( 1 )
chlock group_external -*
chautoscope group_external -*
opcolor -c 0.80000001192092896 0.80000001192092896 0.80000001192092896 group_external
opset -d off -r off -h on -f off -y off -t off -l off -s off -u off -c off -e on -b off group_external
opexprlanguage -s hscript group_external
opuserdata -n '___Version___' -v '15.0.416' group_external

# Node group_internal (Sop/group)
opadd -e -n group group_internal
oplocate -x 5.23611 -y -10.9023 group_internal
opspareds "" group_internal
chblockbegin
chadd -t 0 0 group_internal rangeend
chkey -t 0 -v 0 -m 0 -a 0 -A 0 -T a  -F '$N' group_internal/rangeend
chblockend
opparm -V 15.0.416 group_internal group ( "" ) stdswitcher ( 0 0 0 ) docreategrp ( on ) crname ( internal ) entity ( primitive ) geotype ( all ) mergeop ( replace ) switcher2 ( 0 0 0 0 ) groupnumber ( on ) ordered ( off ) groupop ( grppattern ) filter ( 1 ) pattern ( "" ) range ( 0 rangeend ) select ( 1 2 ) groupbounding ( off ) boundtype ( usebbox ) size ( 1 1 1 ) t ( 0 0 0 ) iso ( 0 ) invertvolume ( off ) includenotwhollycontained ( off ) groupnormal ( off ) dir ( 0 0 1 ) angle ( 180 ) camerapath ( "" ) nonplanar ( off ) nonplanartol ( 0.001 ) groupedges ( off ) dominedgeangle ( off ) minedgeangle ( 20 ) domaxedgeangle ( off ) maxedgeangle ( 20 ) edgeanglebetweenedges ( off ) dominedgelen ( off ) minedgelen ( 0 ) domaxedgelen ( off ) maxedgelen ( 0 ) dodepth ( off ) edgestep ( 0 ) edgeptgrp ( 0 ) unshared ( off ) boundarygroups ( off ) combineentity ( guess ) grpequal ( "" ) not1 ( off ) grp1 ( "" ) op1 ( none ) not2 ( off ) grp2 ( "" ) op2 ( none ) not3 ( off ) grp3 ( "" ) op3 ( none ) not4 ( off ) grp4 ( "" ) switcher3 ( 0 0 0 ) oldname ( "" ) newname ( "" ) cnvfromtype ( primgroup ) cnvtotype ( ptgroup ) convertg ( "" ) cnvtname ( "" ) preserve ( off ) primswithallpts ( off ) destroyname ( "" ) type ( 1 )
chlock group_internal -*
chautoscope group_internal -*
opcolor -c 0.80000001192092896 0.80000001192092896 0.80000001192092896 group_internal
opset -d off -r off -h on -f off -y off -t off -l off -s off -u off -c off -e on -b off group_internal
opexprlanguage -s hscript group_internal
opuserdata -n '___Version___' -v '15.0.416' group_internal

# Node group_airToLiquid (Sop/group)
opadd -e -n group group_airToLiquid
oplocate -x 5.23611 -y -9.9871400000000001 group_airToLiquid
opspareds "" group_airToLiquid
chblockbegin
chadd -t 0 0 group_airToLiquid rangeend
chkey -t 0 -v 0 -m 0 -a 0 -A 0 -T a  -F '$N' group_airToLiquid/rangeend
chblockend
opparm -V 15.0.416 group_airToLiquid group ( "" ) stdswitcher ( 0 0 0 ) docreategrp ( on ) crname ( airToLiquid ) entity ( primitive ) geotype ( all ) mergeop ( replace ) switcher2 ( 0 0 0 0 ) groupnumber ( on ) ordered ( off ) groupop ( grppattern ) filter ( 1 ) pattern ( "" ) range ( 0 rangeend ) select ( 1 2 ) groupbounding ( off ) boundtype ( usebbox ) size ( 1 1 1 ) t ( 0 0 0 ) iso ( 0 ) invertvolume ( off ) includenotwhollycontained ( off ) groupnormal ( off ) dir ( 0 0 1 ) angle ( 180 ) camerapath ( "" ) nonplanar ( off ) nonplanartol ( 0.001 ) groupedges ( off ) dominedgeangle ( off ) minedgeangle ( 20 ) domaxedgeangle ( off ) maxedgeangle ( 20 ) edgeanglebetweenedges ( off ) dominedgelen ( off ) minedgelen ( 0 ) domaxedgelen ( off ) maxedgelen ( 0 ) dodepth ( off ) edgestep ( 0 ) edgeptgrp ( 0 ) unshared ( off ) boundarygroups ( off ) combineentity ( guess ) grpequal ( "" ) not1 ( off ) grp1 ( "" ) op1 ( none ) not2 ( off ) grp2 ( "" ) op2 ( none ) not3 ( off ) grp3 ( "" ) op3 ( none ) not4 ( off ) grp4 ( "" ) switcher3 ( 0 0 0 ) oldname ( "" ) newname ( "" ) cnvfromtype ( primgroup ) cnvtotype ( ptgroup ) convertg ( "" ) cnvtname ( "" ) preserve ( off ) primswithallpts ( off ) destroyname ( "" ) type ( 1 )
chlock group_airToLiquid -*
chautoscope group_airToLiquid -*
opcolor -c 0.80000001192092896 0.80000001192092896 0.80000001192092896 group_airToLiquid
opset -d off -r off -h on -f off -y off -t off -l off -s off -u off -c off -e on -b off group_airToLiquid
opexprlanguage -s hscript group_airToLiquid
opuserdata -n '___Version___' -v '15.0.416' group_airToLiquid

# Node attributeRename_remove (Sop/attribute)
opadd -e -n attribute attributeRename_remove
oplocate -x 2.8137599999999998 -y -12.920500000000001 attributeRename_remove
opspareds "" attributeRename_remove
opparm -V 15.0.416 attributeRename_remove stdswitcher ( 2 2 2 2 2 ) _label1_ ( From To ) frompt0 ( "" ) topt0 ( "" ) frompt1 ( "" ) topt1 ( "" ) frompt2 ( "" ) topt2 ( "" ) frompt3 ( "" ) topt3 ( "" ) frompt4 ( "" ) topt4 ( "" ) ptdel ( 'centerP centerS minLength' ) ptkeep ( * ) _label2_ ( From To ) fromvtx0 ( "" ) tovtx0 ( "" ) fromvtx1 ( "" ) tovtx1 ( "" ) fromvtx2 ( "" ) tovtx2 ( "" ) fromvtx3 ( "" ) tovtx3 ( "" ) fromvtx4 ( "" ) tovtx4 ( "" ) vtxdel ( "" ) vtxkeep ( * ) _label3_ ( From To ) frompr0 ( "" ) topr0 ( "" ) frompr1 ( "" ) topr1 ( "" ) frompr2 ( "" ) topr2 ( "" ) frompr3 ( "" ) topr3 ( "" ) frompr4 ( "" ) topr4 ( "" ) primdel ( id ) primkeep ( * ) _label4_ ( From To ) fromdtl0 ( "" ) todtl0 ( "" ) fromdtl1 ( "" ) todtl1 ( "" ) fromdtl2 ( "" ) todtl2 ( "" ) fromdtl3 ( "" ) todtl3 ( "" ) fromdtl4 ( "" ) todtl4 ( "" ) dtldel ( "" ) dtlkeep ( * ) _label5_ ( RiName RiType Offset "" ) hname0 ( "" ) riname0 ( "" ) ritype0 ( vtx_float ) rioff0 ( 0 ) hname1 ( "" ) riname1 ( "" ) ritype1 ( vtx_float ) rioff1 ( 0 ) hname2 ( "" ) riname2 ( "" ) ritype2 ( vtx_float ) rioff2 ( 0 ) hname3 ( "" ) riname3 ( "" ) ritype3 ( vtx_float ) rioff3 ( 0 ) hname4 ( "" ) riname4 ( "" ) ritype4 ( vtx_float ) rioff4 ( 0 ) ridefault ( off ) updatevar ( on ) overwrite ( off )
chlock attributeRename_remove -*
chautoscope attributeRename_remove -*
opcolor -c 0.80000001192092896 0.80000001192092896 0.80000001192092896 attributeRename_remove
opset -d off -r off -h off -f off -y off -t off -l off -s off -u off -c off -e on -b off attributeRename_remove
opexprlanguage -s hscript attributeRename_remove
opuserdata -n '___Version___' -v '15.0.416' attributeRename_remove

# Node cookie_internal (Sop/cookie)
opadd -e -n cookie cookie_internal
oplocate -x 5.23611 -y -9.1837400000000002 cookie_internal
opspareds "" cookie_internal
opparm -V 15.0.416 cookie_internal groupA ( "" ) groupB ( "" ) tol3d ( 9.9999997473787516e-05 ) convex ( on ) stdswitcher ( 0 0 ) groupswitcher ( 0 0 ) boolop ( AminusB ) insideA ( on ) insideB ( off ) outsideA ( off ) outsideB ( off ) overlapA ( off ) overlapB ( off ) insidetest ( on ) closedA ( off ) closedB ( off ) createGroup ( off ) insideAGroup ( Ain ) insideBGroup ( Bin ) outsideAGroup ( Aout ) outsideBGroup ( Bout ) overlapAGroup ( Aoverlap ) overlapBGroup ( Boverlap ) consolidateedge ( off ) consolidatetol ( 9.9999997473787516e-05 ) keepsource ( off ) autojoin ( on ) dojitter ( off ) seed ( 1 ) jitteramount ( 0.00019999999494757503 )
chlock cookie_internal -*
chautoscope cookie_internal -*
opcolor -c 0.80000001192092896 0.80000001192092896 0.80000001192092896 cookie_internal
opset -d off -r off -h off -f off -y off -t off -l off -s off -u off -c off -e on -b on cookie_internal
opexprlanguage -s hscript cookie_internal
opuserdata -n '___Version___' -v '15.0.416' cookie_internal

# Node cookie_external (Sop/cookie)
opadd -e -n cookie cookie_external
oplocate -x 9.6333000000000002 -y -9.1837400000000002 cookie_external
opspareds "" cookie_external
opparm -V 15.0.416 cookie_external groupA ( "" ) groupB ( "" ) tol3d ( 9.9999997473787516e-05 ) convex ( on ) stdswitcher ( 0 0 ) groupswitcher ( 0 0 ) boolop ( AminusB ) insideA ( on ) insideB ( off ) outsideA ( off ) outsideB ( off ) overlapA ( off ) overlapB ( off ) insidetest ( on ) closedA ( off ) closedB ( off ) createGroup ( off ) insideAGroup ( Ain ) insideBGroup ( Bin ) outsideAGroup ( Aout ) outsideBGroup ( Bout ) overlapAGroup ( Aoverlap ) overlapBGroup ( Boverlap ) consolidateedge ( off ) consolidatetol ( 9.9999997473787516e-05 ) keepsource ( off ) autojoin ( on ) dojitter ( off ) seed ( 1 ) jitteramount ( 0.00019999999494757503 )
chlock cookie_external -*
chautoscope cookie_external -*
opcolor -c 0.80000001192092896 0.80000001192092896 0.80000001192092896 cookie_external
opset -d off -r off -h off -f off -y off -t off -l off -s off -u off -c off -e on -b on cookie_external
opexprlanguage -s hscript cookie_external
opuserdata -n '___Version___' -v '15.0.416' cookie_external
oporder -e connectadjacentpieces foreach_cell attributeCreate_id group_convertCellGroupsToPrimitives partition_cellGroupsOnPoints group_defaultCell delete_interiorLink attributeWrangle_updateLengthRiRj attributePromote_ri attributePromote_rj attributesCreate_lengthRiRj delete_longLinks attributeCreate_minLength attributePromote_minLength attributeWrangle_correctScale IN OUT switch_correctScale merge_isolatedBubbles delete_primitives attributeWrangle_pscaleInternal attributeWrangle_pscaleExternal copy_internal copy_external group_external group_internal group_airToLiquid attributeRename_remove cookie_internal cookie_external 
opcf ..

# Node objectMerge_internalBubblesCenters (Sop/object_merge)
opadd -e -n object_merge objectMerge_internalBubblesCenters
oplocate -x -7.7830899999999996 -y 7.01898 objectMerge_internalBubblesCenters
opspareds "" objectMerge_internalBubblesCenters
opparm objectMerge_internalBubblesCenters  numobj ( 1 )
opparm -V 15.0.416 objectMerge_internalBubblesCenters numobj ( 1 ) _separator ( ) xformtype ( object ) xformpath ( "" ) invertxform ( off ) createptgroups ( off ) ptgroupprefix ( _ptgrp_ ) createprimgroups ( off ) primgroupprefix ( _primgrp_ ) verbosegroups ( off ) suffixfirstgroup ( on ) createptstring ( off ) createprimstring ( off ) pathattrib ( objname ) pack ( off ) pivot ( centroid ) viewportlod ( full ) addpath ( on ) enable1 ( on ) objpath1 ( /obj/bubblesCenters/OUT_bubblesInternalCenters ) group1 ( "" ) expand1 ( off )
chlock objectMerge_internalBubblesCenters -*
chautoscope objectMerge_internalBubblesCenters -*
opcolor -c 0.80000001192092896 0.80000001192092896 0.80000001192092896 objectMerge_internalBubblesCenters
opset -d off -r off -h off -f off -y off -t off -l off -s off -u off -c off -e on -b off objectMerge_internalBubblesCenters
opexprlanguage -s hscript objectMerge_internalBubblesCenters
opuserdata -n '___Version___' -v '15.0.416' objectMerge_internalBubblesCenters

# Node subdivide (Sop/subdivide)
opadd -e -n subdivide subdivide
oplocate -x -3.3157299999999998 -y 9.1216399999999993 subdivide
opspareds "" subdivide
opparm -V 15.0.416 subdivide subdivide ( "" ) creases ( "" ) algorithm ( osdcc ) iterations ( 3 ) overridecrease ( off ) creaseweight ( 0 ) outputcrease ( off ) outcreasegroup ( creases ) closeholes ( pull ) surroundpoly ( edges ) bias ( 1 ) updatenmls ( on ) smoothvertex ( on ) consisttopology ( off ) linearcreases ( off ) buildpolysoups ( off ) indepcurves ( off ) interpolateboundary ( corner ) vertexinterpolateboundary ( corner )
chlock subdivide -*
chautoscope subdivide -*
opcolor -c 0.80000001192092896 0.80000001192092896 0.80000001192092896 subdivide
opset -d off -r off -h off -f off -y off -t off -l off -s off -u off -c off -e on -b off subdivide
opexprlanguage -s hscript subdivide
opuserdata -n '___Version___' -v '15.0.416' subdivide

# Node sphere (Sop/sphere)
opadd -e -n sphere sphere
oplocate -x -3.3157299999999998 -y 9.81236 sphere
opspareds "" sphere
opparm -V 15.0.416 sphere type ( poly ) surftype ( quads ) rad ( 1 1 1 ) t ( 0 0 0 ) scale ( 0.5 ) orient ( y ) freq ( 1 ) rows ( 10 ) cols ( 18 ) orderu ( 4 ) orderv ( 4 ) imperfect ( on ) upole ( off ) accurate ( on ) triangularpoles ( on )
chlock sphere -*
chautoscope sphere -*
opcolor -c 0.80000001192092896 0.80000001192092896 0.80000001192092896 sphere
opset -d off -r off -h off -f off -y off -t off -l off -s off -u off -c off -e on -b off sphere
opexprlanguage -s hscript sphere
opuserdata -n '___Version___' -v '15.0.416' sphere

# Node transform_scaleBackTo1 (Sop/xform)
opadd -e -n xform transform_scaleBackTo1
oplocate -x -3.3157299999999998 -y 8.3611599999999999 transform_scaleBackTo1
opspareds "" transform_scaleBackTo1
chblockbegin
chadd -t 0 0 transform_scaleBackTo1 scale
chkey -t 0 -v 1 -m 0 -a 0 -A 0 -T a  -F '1.0/bbox("../subdivide", 6)' transform_scaleBackTo1/scale
chblockend
opparm -V 15.0.416 transform_scaleBackTo1 group ( "" ) grouptype ( guess ) xOrd ( srt ) rOrd ( xyz ) t ( 0 0 0 ) r ( 0 0 0 ) s ( 1 1 1 ) shear ( 0 0 0 ) p ( 0 0 0 ) scale ( scale ) movecentroid ( 0 ) attribs ( * ) updatenmls ( off ) updateaffectednmls ( on ) vlength ( on ) invertxform ( off )
chlock transform_scaleBackTo1 -*
chautoscope transform_scaleBackTo1 -*
opcolor -c 0.80000001192092896 0.80000001192092896 0.80000001192092896 transform_scaleBackTo1
opset -d off -r off -h off -f off -y off -t off -l off -s off -u off -c off -e on -b off transform_scaleBackTo1
opexprlanguage -s hscript transform_scaleBackTo1
opuserdata -n '___Version___' -v '15.0.416' transform_scaleBackTo1

# Node copy_instances (Sop/copy)
opadd -e -n copy copy_instances
oplocate -x -2.22953 -y 5.91981 copy_instances
opspareds "" copy_instances
opparm -V 15.0.416 copy_instances sourceGrp ( "" ) templateGrp ( "" ) stdswitcher ( 0 0 0 ) ncy ( 1 ) nml ( on ) cum ( on ) xOrd ( srt ) rOrd ( xyz ) t ( 0 0 0 ) r ( 0 0 0 ) s ( 1 1 1 ) shear ( 0 0 0 ) p ( 0 0 0 ) scale ( 1 ) vlength ( on ) newg ( off ) preservegroups ( off ) copyg ( 'copyGroup$CY' ) stamp ( off ) cacheinput ( off ) pack ( off ) pivot ( centroid ) viewportlod ( full ) attribstamps ( "" ) stampswitch ( 0 0 0 0 0 ) param1 ( "" ) val1 ( 0 ) param2 ( "" ) val2 ( 0 ) param3 ( "" ) val3 ( 0 ) param4 ( "" ) val4 ( 0 ) param5 ( "" ) val5 ( 0 ) param6 ( "" ) val6 ( 0 ) param7 ( "" ) val7 ( 0 ) param8 ( "" ) val8 ( 0 ) param9 ( "" ) val9 ( 0 ) param10 ( "" ) val10 ( 0 ) param11 ( "" ) val11 ( 0 ) param12 ( "" ) val12 ( 0 ) param13 ( "" ) val13 ( 0 ) param14 ( "" ) val14 ( 0 ) param15 ( "" ) val15 ( 0 ) param16 ( "" ) val16 ( 0 ) param17 ( "" ) val17 ( 0 ) param18 ( "" ) val18 ( 0 ) param19 ( "" ) val19 ( 0 ) param20 ( "" ) val20 ( 0 ) param21 ( "" ) val21 ( 0 ) param22 ( "" ) val22 ( 0 ) param23 ( "" ) val23 ( 0 ) param24 ( "" ) val24 ( 0 ) param25 ( "" ) val25 ( 0 ) param26 ( "" ) val26 ( 0 ) param27 ( "" ) val27 ( 0 ) param28 ( "" ) val28 ( 0 ) param29 ( "" ) val29 ( 0 ) param30 ( "" ) val30 ( 0 ) param31 ( "" ) val31 ( 0 ) param32 ( "" ) val32 ( 0 ) param33 ( "" ) val33 ( 0 ) param34 ( "" ) val34 ( 0 ) param35 ( "" ) val35 ( 0 ) param36 ( "" ) val36 ( 0 ) param37 ( "" ) val37 ( 0 ) param38 ( "" ) val38 ( 0 ) param39 ( "" ) val39 ( 0 ) param40 ( "" ) val40 ( 0 ) param41 ( "" ) val41 ( 0 ) param42 ( "" ) val42 ( 0 ) param43 ( "" ) val43 ( 0 ) param44 ( "" ) val44 ( 0 ) param45 ( "" ) val45 ( 0 ) param46 ( "" ) val46 ( 0 ) param47 ( "" ) val47 ( 0 ) param48 ( "" ) val48 ( 0 ) param49 ( "" ) val49 ( 0 ) param50 ( "" ) val50 ( 0 ) doattr ( on ) _label_ ( Set Mult Add Sub ) setpt ( *,^v,^Alpha ) mulpt ( Alpha ) addpt ( v ) subpt ( "" ) setprim ( "" ) mulprim ( "" ) addprim ( "" ) subprim ( "" ) setvtx ( "" ) mulvtx ( "" ) addvtx ( "" ) subvtx ( "" ) copyvariable ( on )
chlock copy_instances -*
chautoscope copy_instances -*
opcolor -c 0.80000001192092896 0.80000001192092896 0.80000001192092896 copy_instances
opset -d off -r off -h off -f off -y off -t off -l off -s off -u off -c off -e on -b off copy_instances
opexprlanguage -s hscript copy_instances
opuserdata -n '___Version___' -v '15.0.416' copy_instances

# Node delete_nonAirToLiquid (Sop/delete)
opadd -e -n delete delete_nonAirToLiquid
oplocate -x 2.61504 -y 1.3929100000000001 delete_nonAirToLiquid
opspareds "" delete_nonAirToLiquid
chblockbegin
chadd -t 0 0 delete_nonAirToLiquid rangeend
chkey -t 0 -v 0 -m 0 -a 0 -A 0 -T a  -F '$N' delete_nonAirToLiquid/rangeend
chblockend
opparm -V 15.0.416 delete_nonAirToLiquid group ( airToLiquid ) negate ( keep ) entity ( primitive ) geotype ( all ) stdswitcher ( 0 0 0 0 ) affectnumber ( on ) groupop ( pattern ) filter ( 1 ) pattern ( !* ) range ( 0 rangeend ) select ( 1 2 ) affectvolume ( off ) boundtype ( usebbox ) size ( 1 1 1 ) t ( 0 0 0 ) affectnormal ( off ) dir ( 0 0 1 ) angle ( 180 ) camerapath ( "" ) affectdegenerate ( off ) degenerate ( off ) zaf ( off ) doopen ( off ) tol ( 0.001 ) removegrp ( on ) keeppoints ( off )
chlock delete_nonAirToLiquid -*
chautoscope delete_nonAirToLiquid -*
opcolor -c 0.80000001192092896 0.80000001192092896 0.80000001192092896 delete_nonAirToLiquid
opset -d off -r off -h off -f off -y off -t off -l off -s off -u off -c off -e on -b off delete_nonAirToLiquid
opexprlanguage -s hscript delete_nonAirToLiquid
opuserdata -n '___Version___' -v '15.0.416' delete_nonAirToLiquid

# Node delete_nonAirToAir (Sop/delete)
opadd -e -n delete delete_nonAirToAir
oplocate -x -0.188386 -y 1.3929100000000001 delete_nonAirToAir
opspareds "" delete_nonAirToAir
chblockbegin
chadd -t 0 0 delete_nonAirToAir rangeend
chkey -t 0 -v 0 -m 0 -a 0 -A 0 -T a  -F '$N' delete_nonAirToAir/rangeend
chblockend
opparm -V 15.0.416 delete_nonAirToAir group ( airToAir ) negate ( keep ) entity ( primitive ) geotype ( all ) stdswitcher ( 0 0 0 0 ) affectnumber ( on ) groupop ( pattern ) filter ( 1 ) pattern ( !* ) range ( 0 rangeend ) select ( 1 2 ) affectvolume ( off ) boundtype ( usebbox ) size ( 1 1 1 ) t ( 0 0 0 ) affectnormal ( off ) dir ( 0 0 1 ) angle ( 180 ) camerapath ( "" ) affectdegenerate ( off ) degenerate ( off ) zaf ( off ) doopen ( off ) tol ( 0.001 ) removegrp ( on ) keeppoints ( off )
chlock delete_nonAirToAir -*
chautoscope delete_nonAirToAir -*
opcolor -c 0.80000001192092896 0.80000001192092896 0.80000001192092896 delete_nonAirToAir
opset -d off -r off -h off -f off -y off -t off -l off -s off -u off -c off -e on -b off delete_nonAirToAir
opexprlanguage -s hscript delete_nonAirToAir
opuserdata -n '___Version___' -v '15.0.416' delete_nonAirToAir

# Node delete_nonExternal (Sop/delete)
opadd -e -n delete delete_nonExternal
oplocate -x -5.98149 -y 1.38778 delete_nonExternal
opspareds "" delete_nonExternal
chblockbegin
chadd -t 0 0 delete_nonExternal rangeend
chkey -t 0 -v 0 -m 0 -a 0 -A 0 -T a  -F '$N' delete_nonExternal/rangeend
chblockend
opparm -V 15.0.416 delete_nonExternal group ( external ) negate ( keep ) entity ( primitive ) geotype ( all ) stdswitcher ( 0 0 0 0 ) affectnumber ( on ) groupop ( pattern ) filter ( 1 ) pattern ( !* ) range ( 0 rangeend ) select ( 1 2 ) affectvolume ( off ) boundtype ( usebbox ) size ( 1 1 1 ) t ( 0 0 0 ) affectnormal ( off ) dir ( 0 0 1 ) angle ( 180 ) camerapath ( "" ) affectdegenerate ( off ) degenerate ( off ) zaf ( off ) doopen ( off ) tol ( 0.001 ) removegrp ( on ) keeppoints ( off )
chlock delete_nonExternal -*
chautoscope delete_nonExternal -*
opcolor -c 0.80000001192092896 0.80000001192092896 0.80000001192092896 delete_nonExternal
opset -d off -r off -h off -f off -y off -t off -l off -s off -u off -c off -e on -b off delete_nonExternal
opexprlanguage -s hscript delete_nonExternal
opuserdata -n '___Version___' -v '15.0.416' delete_nonExternal

# Node delete_nonInternal (Sop/delete)
opadd -e -n delete delete_nonInternal
oplocate -x -0.18741099999999999 -y 2.39337 delete_nonInternal
opspareds "" delete_nonInternal
chblockbegin
chadd -t 0 0 delete_nonInternal rangeend
chkey -t 0 -v 0 -m 0 -a 0 -A 0 -T a  -F '$N' delete_nonInternal/rangeend
chblockend
opparm -V 15.0.416 delete_nonInternal group ( internal ) negate ( keep ) entity ( primitive ) geotype ( all ) stdswitcher ( 0 0 0 0 ) affectnumber ( on ) groupop ( pattern ) filter ( 1 ) pattern ( !* ) range ( 0 rangeend ) select ( 1 2 ) affectvolume ( off ) boundtype ( usebbox ) size ( 1 1 1 ) t ( 0 0 0 ) affectnormal ( off ) dir ( 0 0 1 ) angle ( 180 ) camerapath ( "" ) affectdegenerate ( off ) degenerate ( off ) zaf ( off ) doopen ( off ) tol ( 0.001 ) removegrp ( on ) keeppoints ( off )
chlock delete_nonInternal -*
chautoscope delete_nonInternal -*
opcolor -c 0.80000001192092896 0.80000001192092896 0.80000001192092896 delete_nonInternal
opset -d off -r off -h off -f off -y off -t off -l off -s off -u off -c off -e on -b off delete_nonInternal
opexprlanguage -s hscript delete_nonInternal
opuserdata -n '___Version___' -v '15.0.416' delete_nonInternal

# Node OUT_all (Sop/null)
opadd -e -n null OUT_all
oplocate -x -8.5786499999999997 -y 0.021181599999999998 OUT_all
opspareds "" OUT_all
opparm -V 15.0.416 OUT_all copyinput ( on ) cacheinput ( off )
chlock OUT_all -*
chautoscope OUT_all -*
opcolor -c 0.80000001192092896 0.80000001192092896 0.80000001192092896 OUT_all
opset -d off -r off -h off -f off -y off -t off -l off -s off -u off -c off -e on -b off OUT_all
opexprlanguage -s hscript OUT_all
opuserdata -n '___Version___' -v '15.0.416' OUT_all

# Node polyExtrude_creaseToSubdivide (Sop/polyextrude::2.0)
opadd -e -n polyextrude::2.0 polyExtrude_creaseToSubdivide
oplocate -x -1.9757199999999999 -y -0.98516000000000004 polyExtrude_creaseToSubdivide
opspareds "" polyExtrude_creaseToSubdivide
opparm polyExtrude_creaseToSubdivide  thicknessramp ( 2 ) twistramp ( 2 )
opparm -V 15.0.416 polyExtrude_creaseToSubdivide group ( airToAir ) splittype ( components ) usesplitgroup ( off ) splitgroup ( "" ) extrusionmode ( primnormal ) dist ( 9.9999999999999995e-07 ) inset ( 0 ) twist ( 0 ) divs ( 2 ) spinetype ( straight ) stdswitcher ( 0 0 0 ) xformsection ( 0 ) xformfront ( off ) xformspace ( local ) rst ( srt ) xyz ( xyz ) translate ( 0 0 0 ) rotate ( 0 0 0 ) scale ( 1 1 1 ) shear ( 0 0 0 ) pivot ( 0 0 0 ) outputsection ( 0 ) outputfront ( on ) outputfrontgrp ( off ) frontgrp ( extrudeFront ) outputback ( off ) outputbackgrp ( off ) backgrp ( extrudeBack ) outputside ( on ) outputsidegrp ( off ) sidegrp ( extrudeSide ) preservegroups ( on ) insettingsection ( 0 ) limitinset ( on ) commonlimit ( on ) normalsection ( 0 ) addvertexnomrals ( off ) cuspangle ( 60 ) cuspfront ( on ) cuspback ( on ) shapecontrolsection ( 0 ) frontmagnitude ( 1 ) backmagnitude ( 1 ) frontstiffness ( 0 ) backstiffness ( 0 ) interpolation ( rotatingframe ) spacing ( arclengthuniform ) externalspinesection ( 0 ) reversespinedirection ( off ) axialrotation ( 0 ) frontblend ( 0.10000000000000001 ) backblend ( 0.10000000000000001 ) thicknesssection ( 0 ) thicknessscale ( 1 ) usethicknessattrib ( on ) thicknessattrib ( thickness ) usethicknessramp ( on ) thicknessramp ( 2 ) twistsection ( 0 ) usetwistattrib ( on ) twistattrib ( twist ) usetwistramp ( on ) twistramp ( 2 ) twistscale ( 180 ) localattribs ( 0 ) uselocalzscaleattrib ( off ) localzscaleattrib ( zscale ) uselocalinsetscaleattrib ( off ) localinsetscaleattrib ( insetscale ) uselocaltwistattrib ( off ) localtwistscaleattrib ( twistscale ) uselocaldivsattrib ( off ) locadivscaleattrib ( divsscale ) localframeattribs ( 0 ) uselocalxattrib ( off ) localxattrib ( localx ) uselocalzattirb ( off ) localzattirb ( localz ) uselocalctrattrib ( off ) localctrattrib ( localctr ) thicknessramp1pos ( 0 ) thicknessramp1value ( 1 ) thicknessramp1interp ( catmull-rom ) thicknessramp2pos ( 1 ) thicknessramp2value ( 1 ) thicknessramp2interp ( catmull-rom ) twistramp1pos ( 0 ) twistramp1value ( 0.5 ) twistramp1interp ( catmull-rom ) twistramp2pos ( 1 ) twistramp2value ( 0.5 ) twistramp2interp ( catmull-rom )
chlock polyExtrude_creaseToSubdivide -*
chautoscope polyExtrude_creaseToSubdivide -*
opcolor -c 0.80000001192092896 0.80000001192092896 0.80000001192092896 polyExtrude_creaseToSubdivide
opset -d off -r off -h off -f off -y off -t off -l off -s off -u off -c off -e on -b off polyExtrude_creaseToSubdivide
opexprlanguage -s hscript polyExtrude_creaseToSubdivide
opuserdata -n '___Version___' -v '15.0.416' polyExtrude_creaseToSubdivide

# Node OUT_internalRender (Sop/null)
opadd -e -n null OUT_internalRender
oplocate -x -1.9757199999999999 -y -1.7844599999999999 OUT_internalRender
opspareds "" OUT_internalRender
opparm -V 15.0.416 OUT_internalRender copyinput ( on ) cacheinput ( off )
chlock OUT_internalRender -*
chautoscope OUT_internalRender -*
opcolor -c 0.80000001192092896 0.80000001192092896 0.80000001192092896 OUT_internalRender
opset -d off -r off -h off -f off -y off -t off -l off -s off -u off -c off -e on -b off OUT_internalRender
opexprlanguage -s hscript OUT_internalRender
opuserdata -n '___Version___' -v '15.0.416' OUT_internalRender

# Node OUT_external (Sop/null)
opadd -e -n null OUT_external
oplocate -x -5.98149 -y -0.0086379100000000004 OUT_external
opspareds "" OUT_external
opparm -V 15.0.416 OUT_external copyinput ( on ) cacheinput ( off )
chlock OUT_external -*
chautoscope OUT_external -*
opcolor -c 0.80000001192092896 0.80000001192092896 0.80000001192092896 OUT_external
opset -d off -r off -h off -f off -y off -t off -l off -s off -u off -c off -e on -b off OUT_external
opexprlanguage -s hscript OUT_external
opuserdata -n '___Version___' -v '15.0.416' OUT_external

# Node OUT_internal (Sop/null)
opadd -e -n null OUT_internal
oplocate -x -2.98468 -y -0.00090599099999999998 OUT_internal
opspareds "" OUT_internal
opparm -V 15.0.416 OUT_internal copyinput ( on ) cacheinput ( off )
chlock OUT_internal -*
chautoscope OUT_internal -*
opcolor -c 0.80000001192092896 0.80000001192092896 0.80000001192092896 OUT_internal
opset -d off -r off -h off -f off -y off -t off -l off -s off -u off -c off -e on -b off OUT_internal
opexprlanguage -s hscript OUT_internal
opuserdata -n '___Version___' -v '15.0.416' OUT_internal

# Node OUT_airToAir (Sop/null)
opadd -e -n null OUT_airToAir
oplocate -x -0.16905700000000001 -y -0.010571000000000001 OUT_airToAir
opspareds "" OUT_airToAir
opparm -V 15.0.416 OUT_airToAir copyinput ( on ) cacheinput ( off )
chlock OUT_airToAir -*
chautoscope OUT_airToAir -*
opcolor -c 0.80000001192092896 0.80000001192092896 0.80000001192092896 OUT_airToAir
opset -d off -r off -h off -f off -y off -t off -l off -s off -u off -c off -e on -b off OUT_airToAir
opexprlanguage -s hscript OUT_airToAir
opuserdata -n '___Version___' -v '15.0.416' OUT_airToAir

# Node OUT_airToLiquid (Sop/null)
opadd -e -n null OUT_airToLiquid
oplocate -x 2.61504 -y -0.0144362 OUT_airToLiquid
opspareds "" OUT_airToLiquid
opparm -V 15.0.416 OUT_airToLiquid copyinput ( on ) cacheinput ( off )
chlock OUT_airToLiquid -*
chautoscope OUT_airToLiquid -*
opcolor -c 0.80000001192092896 0.80000001192092896 0.80000001192092896 OUT_airToLiquid
opset -d off -r off -h off -f off -y off -t off -l off -s off -u off -c off -e on -b off OUT_airToLiquid
opexprlanguage -s hscript OUT_airToLiquid
opuserdata -n '___Version___' -v '15.0.416' OUT_airToLiquid

# Node subdivide_crease (Sop/subdivide)
opadd -e -n subdivide subdivide_crease
oplocate -x -1.95902 -y -3.78424 subdivide_crease
opspareds "" subdivide_crease
opparm -V 15.0.416 subdivide_crease subdivide ( "" ) creases ( "" ) algorithm ( osdcc ) iterations ( 2 ) overridecrease ( off ) creaseweight ( 0 ) outputcrease ( off ) outcreasegroup ( creases ) closeholes ( pull ) surroundpoly ( edges ) bias ( 1 ) updatenmls ( on ) smoothvertex ( on ) consisttopology ( off ) linearcreases ( off ) buildpolysoups ( off ) indepcurves ( off ) interpolateboundary ( corner ) vertexinterpolateboundary ( corner )
chlock subdivide_crease -*
chautoscope subdivide_crease -*
opcolor -c 0.80000001192092896 0.80000001192092896 0.80000001192092896 subdivide_crease
opset -d off -r off -h off -f off -y off -t off -l off -s off -u off -c off -e on -b off subdivide_crease
opexprlanguage -s hscript subdivide_crease
opuserdata -n '___Version___' -v '15.0.416' subdivide_crease

# Node subdivide_noCrease (Sop/subdivide)
opadd -e -n subdivide subdivide_noCrease
oplocate -x -3.9658799999999998 -y -3.79312 subdivide_noCrease
opspareds "" subdivide_noCrease
opparm -V 15.0.416 subdivide_noCrease subdivide ( "" ) creases ( "" ) algorithm ( houdini ) iterations ( 2 ) overridecrease ( off ) creaseweight ( 0 ) outputcrease ( off ) outcreasegroup ( creases ) closeholes ( pull ) surroundpoly ( edges ) bias ( 1 ) updatenmls ( on ) smoothvertex ( on ) consisttopology ( off ) linearcreases ( off ) buildpolysoups ( off ) indepcurves ( off ) interpolateboundary ( corner ) vertexinterpolateboundary ( corner )
chlock subdivide_noCrease -*
chautoscope subdivide_noCrease -*
opcolor -c 0.80000001192092896 0.80000001192092896 0.80000001192092896 subdivide_noCrease
opset -d off -r off -h off -f off -y off -t off -l off -s off -u off -c off -e on -b off subdivide_noCrease
opexprlanguage -s hscript subdivide_noCrease
opuserdata -n '___Version___' -v '15.0.416' subdivide_noCrease

# Node facet_normals (Sop/facet)
opadd -e -n facet facet_normals
oplocate -x -3.3157299999999998 -y 7.6208 facet_normals
opspareds "" facet_normals
opparm -V 15.0.416 facet_normals group ( "" ) prenml ( off ) unit ( off ) unique ( off ) cons ( none ) dist ( 0.001 ) accurate ( on ) inline ( off ) inlinedist ( 0.001 ) orientPolys ( off ) cusp ( off ) angle ( 20 ) remove ( off ) mkplanar ( off ) postnml ( on ) reversenml ( off )
chlock facet_normals -*
chautoscope facet_normals -*
opcolor -c 0.80000001192092896 0.80000001192092896 0.80000001192092896 facet_normals
opset -d off -r off -h off -f off -y off -t off -l off -s off -u off -c off -e on -b off facet_normals
opexprlanguage -s hscript facet_normals
opuserdata -n '___Version___' -v '15.0.416' facet_normals

# Node VDBFromParticles_externalSDF (Sop/vdbfromparticles)
opadd -e -n vdbfromparticles VDBFromParticles_externalSDF
oplocate -x 8.8244799999999994 -y 3.5930900000000001 VDBFromParticles_externalSDF
opspareds "" VDBFromParticles_externalSDF
opparm VDBFromParticles_externalSDF  numattrib ( 0 )
opparm -V 15.0.416 VDBFromParticles_externalSDF voxelsize ( 0.5 ) group ( "" ) builddistance ( on ) distancename ( surface ) buildfog ( off ) fogname ( density ) buildmask ( off ) maskname ( mask ) radiusscale ( 1 ) minvoxelradius ( 1.5 ) prune ( off ) maskwidth ( 0.25 ) useworldspaceunits ( off ) bandwidthvoxels ( 3 ) bandwidth ( 1 ) writeintoref ( off ) footprint ( sphere ) velscale ( 1 ) velspace ( 1 ) numattrib ( 0 )
chlock VDBFromParticles_externalSDF -*
chautoscope VDBFromParticles_externalSDF -*
opcolor -c 0.80000001192092896 0.80000001192092896 0.80000001192092896 VDBFromParticles_externalSDF
opset -d off -r off -h off -f off -y off -t off -l off -s off -u off -c off -e on -b off VDBFromParticles_externalSDF
opexprlanguage -s hscript VDBFromParticles_externalSDF
opuserdata -n '___Version___' -v '15.0.416' VDBFromParticles_externalSDF

# Node vdbcombine_SDFUnion (Sop/vdbcombine)
opadd -e -n vdbcombine vdbcombine_SDFUnion
oplocate -x 11.2113 -y 2.5825300000000002 vdbcombine_SDFUnion
opspareds "" vdbcombine_SDFUnion
opparm -V 15.0.416 vdbcombine_SDFUnion agroup ( "" ) bgroup ( "" ) flatten ( off ) pairs ( on ) operation ( sdfunion ) amult ( 1 ) bmult ( 1 ) resample ( btoa ) resampleinterp ( linear ) deactivate ( off ) bgtolerance ( 0 ) prune ( on ) tolerance ( 0 ) flood ( off )
chlock vdbcombine_SDFUnion -*
chautoscope vdbcombine_SDFUnion -*
opcolor -c 0.80000001192092896 0.80000001192092896 0.80000001192092896 vdbcombine_SDFUnion
opset -d off -r off -h off -f off -y off -t off -l off -s off -u off -c off -e on -b off vdbcombine_SDFUnion
opexprlanguage -s hscript vdbcombine_SDFUnion
opuserdata -n '___Version___' -v '15.0.416' vdbcombine_SDFUnion

# Node objectMerge_liquidSDF (Sop/object_merge)
opadd -e -n object_merge objectMerge_liquidSDF
oplocate -x 13.021000000000001 -y 3.5999500000000002 objectMerge_liquidSDF
opspareds "" objectMerge_liquidSDF
opparm objectMerge_liquidSDF  numobj ( 1 )
opparm -V 15.0.416 objectMerge_liquidSDF numobj ( 1 ) _separator ( ) xformtype ( object ) xformpath ( "" ) invertxform ( off ) createptgroups ( off ) ptgroupprefix ( _ptgrp_ ) createprimgroups ( off ) primgroupprefix ( _primgrp_ ) verbosegroups ( off ) suffixfirstgroup ( on ) createptstring ( off ) createprimstring ( off ) pathattrib ( objname ) pack ( off ) pivot ( centroid ) viewportlod ( full ) addpath ( on ) enable1 ( on ) objpath1 ( /obj/liquid/OUT_SDF ) group1 ( "" ) expand1 ( off )
chlock objectMerge_liquidSDF -*
chautoscope objectMerge_liquidSDF -*
opcolor -c 0.80000001192092896 0.80000001192092896 0.80000001192092896 objectMerge_liquidSDF
opset -d off -r off -h off -f off -y off -t off -l off -s off -u off -c off -e on -b off objectMerge_liquidSDF
opexprlanguage -s hscript objectMerge_liquidSDF
opuserdata -n '___Version___' -v '15.0.416' objectMerge_liquidSDF

# Node convertVDB_toPolygons (Sop/convertvdb)
opadd -e -n convertvdb convertVDB_toPolygons
oplocate -x 9.0159199999999995 -y 0.60649500000000001 convertVDB_toPolygons
opspareds "" convertVDB_toPolygons
opparm -V 15.0.416 convertVDB_toPolygons group ( "" ) conversion ( poly ) vdbclass ( none ) splitdisjointvolumes ( off ) isovalue ( 0 ) fogisovalue ( 0.5 ) adaptivity ( 0 ) computenormals ( off ) automaticpartitions ( 1 ) activepart ( 0 ) internaladaptivity ( 0 ) transferattributes ( off ) sharpenfeatures ( off ) edgetolerance ( 0.5 ) surfacegroup ( surface_polygons ) interiorgroup ( interior_polygons ) seamlinegroup ( seam_polygons ) seampoints ( seam_points ) surfacemask ( on ) surfacemaskname ( "" ) surfacemaskoffset ( 0 ) invertmask ( off ) adaptivityfield ( off ) adaptivityfieldname ( "" ) prune ( on ) tolerance ( 0 ) flood ( on ) activateinsidesdf ( on )
chlock convertVDB_toPolygons -*
chautoscope convertVDB_toPolygons -*
opcolor -c 0.80000001192092896 0.80000001192092896 0.80000001192092896 convertVDB_toPolygons
opset -d off -r off -h off -f off -y off -t off -l off -s off -u off -c off -e on -b off convertVDB_toPolygons
opexprlanguage -s hscript convertVDB_toPolygons
opuserdata -n '___Version___' -v '15.0.416' convertVDB_toPolygons

# Node OUT_surfaceExternal (Sop/null)
opadd -e -n null OUT_surfaceExternal
oplocate -x 9.0159199999999995 -y -1.78518 OUT_surfaceExternal
opspareds "" OUT_surfaceExternal
opparm -V 15.0.416 OUT_surfaceExternal copyinput ( on ) cacheinput ( off )
chlock OUT_surfaceExternal -*
chautoscope OUT_surfaceExternal -*
opcolor -c 0.80000001192092896 0.80000001192092896 0.80000001192092896 OUT_surfaceExternal
opset -d off -r off -h off -f off -y off -t off -l off -s off -u off -c off -e on -b off OUT_surfaceExternal
opexprlanguage -s hscript OUT_surfaceExternal
opuserdata -n '___Version___' -v '15.0.416' OUT_surfaceExternal

# Node vdbcombine_SDFIntersectionBubbles (Sop/vdbcombine)
opadd -e -n vdbcombine vdbcombine_SDFIntersectionBubbles
oplocate -x 9.0159199999999995 -y 1.40299 vdbcombine_SDFIntersectionBubbles
opspareds "" vdbcombine_SDFIntersectionBubbles
opparm -V 15.0.416 vdbcombine_SDFIntersectionBubbles agroup ( "" ) bgroup ( "" ) flatten ( off ) pairs ( on ) operation ( sdfintersect ) amult ( 1 ) bmult ( 1 ) resample ( btoa ) resampleinterp ( linear ) deactivate ( off ) bgtolerance ( 0 ) prune ( on ) tolerance ( 0 ) flood ( off )
chlock vdbcombine_SDFIntersectionBubbles -*
chautoscope vdbcombine_SDFIntersectionBubbles -*
opcolor -c 0.80000001192092896 0.80000001192092896 0.80000001192092896 vdbcombine_SDFIntersectionBubbles
opset -d off -r off -h off -f off -y off -t off -l off -s off -u off -c off -e on -b off vdbcombine_SDFIntersectionBubbles
opexprlanguage -s hscript vdbcombine_SDFIntersectionBubbles
opuserdata -n '___Version___' -v '15.0.416' vdbcombine_SDFIntersectionBubbles

# Node objectMerge_containerSDFHighRes (Sop/object_merge)
opadd -e -n object_merge objectMerge_containerSDFHighRes
oplocate -x 6.8144499999999999 -y 2.5998199999999998 objectMerge_containerSDFHighRes
opspareds "" objectMerge_containerSDFHighRes
opparm objectMerge_containerSDFHighRes  numobj ( 1 )
opparm -V 15.0.416 objectMerge_containerSDFHighRes numobj ( 1 ) _separator ( ) xformtype ( object ) xformpath ( "" ) invertxform ( off ) createptgroups ( off ) ptgroupprefix ( _ptgrp_ ) createprimgroups ( off ) primgroupprefix ( _primgrp_ ) verbosegroups ( off ) suffixfirstgroup ( on ) createptstring ( off ) createprimstring ( off ) pathattrib ( objname ) pack ( off ) pivot ( centroid ) viewportlod ( full ) addpath ( on ) enable1 ( on ) objpath1 ( /obj/container/OUT_SDFHighRes ) group1 ( "" ) expand1 ( off )
chlock objectMerge_containerSDFHighRes -*
chautoscope objectMerge_containerSDFHighRes -*
opcolor -c 0.80000001192092896 0.80000001192092896 0.80000001192092896 objectMerge_containerSDFHighRes
opset -d off -r off -h off -f off -y off -t off -l off -s off -u off -c off -e on -b off objectMerge_containerSDFHighRes
opexprlanguage -s hscript objectMerge_containerSDFHighRes
opuserdata -n '___Version___' -v '15.0.416' objectMerge_containerSDFHighRes

# Node objectMerge_externalBubblesCenters (Sop/object_merge)
opadd -e -n object_merge objectMerge_externalBubblesCenters
oplocate -x 8.8244799999999994 -y 4.4001099999999997 objectMerge_externalBubblesCenters
opspareds "" objectMerge_externalBubblesCenters
opparm objectMerge_externalBubblesCenters  numobj ( 1 )
opparm -V 15.0.416 objectMerge_externalBubblesCenters numobj ( 1 ) _separator ( ) xformtype ( object ) xformpath ( "" ) invertxform ( off ) createptgroups ( off ) ptgroupprefix ( _ptgrp_ ) createprimgroups ( off ) primgroupprefix ( _primgrp_ ) verbosegroups ( off ) suffixfirstgroup ( on ) createptstring ( off ) createprimstring ( off ) pathattrib ( objname ) pack ( off ) pivot ( centroid ) viewportlod ( full ) addpath ( on ) enable1 ( on ) objpath1 ( /obj/bubblesCenters/OUT_bubblesExternalSpheres ) group1 ( "" ) expand1 ( off )
chlock objectMerge_externalBubblesCenters -*
chautoscope objectMerge_externalBubblesCenters -*
opcolor -c 0.80000001192092896 0.80000001192092896 0.80000001192092896 objectMerge_externalBubblesCenters
opset -d off -r off -h off -f off -y off -t off -l off -s off -u off -c off -e on -b off objectMerge_externalBubblesCenters
opexprlanguage -s hscript objectMerge_externalBubblesCenters
opuserdata -n '___Version___' -v '15.0.416' objectMerge_externalBubblesCenters

# Node merge_all (Sop/merge)
opadd -e -n merge merge_all
oplocate -x 3.22838 -y -2.9964 merge_all
opspareds "" merge_all
opparm -V 15.0.416 merge_all
chlock merge_all -*
chautoscope merge_all -*
opcolor -c 0.80000001192092896 0.80000001192092896 0.80000001192092896 merge_all
opset -d off -r off -h off -f off -y off -t off -l off -s off -u off -c off -e on -b off merge_all
opexprlanguage -s hscript merge_all
opuserdata -n '___Version___' -v '15.0.416' merge_all

# Node facet_normalsSurfaceExternal (Sop/facet)
opadd -e -n facet facet_normalsSurfaceExternal
oplocate -x 9.0159199999999995 -y -0.180809 facet_normalsSurfaceExternal
opspareds "" facet_normalsSurfaceExternal
opparm -V 15.0.416 facet_normalsSurfaceExternal group ( "" ) prenml ( off ) unit ( off ) unique ( off ) cons ( none ) dist ( 0.001 ) accurate ( on ) inline ( off ) inlinedist ( 0.001 ) orientPolys ( off ) cusp ( off ) angle ( 20 ) remove ( off ) mkplanar ( off ) postnml ( on ) reversenml ( off )
chlock facet_normalsSurfaceExternal -*
chautoscope facet_normalsSurfaceExternal -*
opcolor -c 0.80000001192092896 0.80000001192092896 0.80000001192092896 facet_normalsSurfaceExternal
opset -d off -r off -h off -f off -y off -t off -l off -s off -u off -c off -e on -b off facet_normalsSurfaceExternal
opexprlanguage -s hscript facet_normalsSurfaceExternal
opuserdata -n '___Version___' -v '15.0.416' facet_normalsSurfaceExternal

# Node subdivide_surfaceExternal (Sop/subdivide)
opadd -e -n subdivide subdivide_surfaceExternal
oplocate -x 9.0159199999999995 -y -0.98295500000000002 subdivide_surfaceExternal
opspareds "" subdivide_surfaceExternal
opparm -V 15.0.416 subdivide_surfaceExternal subdivide ( "" ) creases ( "" ) algorithm ( osdcc ) iterations ( 1 ) overridecrease ( off ) creaseweight ( 0 ) outputcrease ( off ) outcreasegroup ( creases ) closeholes ( pull ) surroundpoly ( edges ) bias ( 1 ) updatenmls ( on ) smoothvertex ( on ) consisttopology ( off ) linearcreases ( off ) buildpolysoups ( off ) indepcurves ( off ) interpolateboundary ( corner ) vertexinterpolateboundary ( corner )
chlock subdivide_surfaceExternal -*
chautoscope subdivide_surfaceExternal -*
opcolor -c 0.80000001192092896 0.80000001192092896 0.80000001192092896 subdivide_surfaceExternal
opset -d off -r off -h off -f off -y off -t off -l off -s off -u off -c off -e on -b off subdivide_surfaceExternal
opexprlanguage -s hscript subdivide_surfaceExternal
opuserdata -n '___Version___' -v '15.0.416' subdivide_surfaceExternal

# Node objectMerge_containerMesh (Sop/object_merge)
opadd -e -n object_merge objectMerge_containerMesh
oplocate -x -2.1799200000000001 -y 5.2154199999999999 objectMerge_containerMesh
opspareds "" objectMerge_containerMesh
opparm objectMerge_containerMesh  numobj ( 1 )
opparm -V 15.0.416 objectMerge_containerMesh numobj ( 1 ) _separator ( ) xformtype ( object ) xformpath ( "" ) invertxform ( off ) createptgroups ( off ) ptgroupprefix ( _ptgrp_ ) createprimgroups ( off ) primgroupprefix ( _primgrp_ ) verbosegroups ( off ) suffixfirstgroup ( on ) createptstring ( off ) createprimstring ( off ) pathattrib ( objname ) pack ( off ) pivot ( centroid ) viewportlod ( full ) addpath ( on ) enable1 ( on ) objpath1 ( /obj/container/OUT_volume ) group1 ( "" ) expand1 ( off )
chlock objectMerge_containerMesh -*
chautoscope objectMerge_containerMesh -*
opcolor -c 0.80000001192092896 0.80000001192092896 0.80000001192092896 objectMerge_containerMesh
opset -d off -r off -h off -f off -y off -t off -l off -s off -u off -c off -e on -b off objectMerge_containerMesh
opexprlanguage -s hscript objectMerge_containerMesh
opuserdata -n '___Version___' -v '15.0.416' objectMerge_containerMesh

# Node OUT (Sop/null)
opadd -e -n null OUT
oplocate -x 3.22838 -y -3.78403 OUT
opspareds "" OUT
opparm -V 15.0.416 OUT copyinput ( on ) cacheinput ( off )
chlock OUT -*
chautoscope OUT -*
opcolor -c 0.80000001192092896 0.80000001192092896 0.80000001192092896 OUT
opset -d off -r off -h off -f off -y off -t off -l off -s off -u off -c off -e on -b off OUT
opexprlanguage -s hscript OUT
opuserdata -n '___Version___' -v '15.0.416' OUT

# Node point_alpha (Sop/point)
opadd -e -n point point_alpha
oplocate -x 3.31589 -y -5.2578500000000004 point_alpha
opspareds "" point_alpha
opparm point_alpha  numcustom ( 1 )
chblockbegin
chadd -t 0 0 point_alpha tx
chkey -t 0 -v 0 -m 0 -a 0 -A 0 -T a  -F @P.x point_alpha/tx
chadd -t 0 0 point_alpha ty
chkey -t 0 -v 0 -m 0 -a 0 -A 0 -T a  -F @P.y point_alpha/ty
chadd -t 0 0 point_alpha tz
chkey -t 0 -v 0 -m 0 -a 0 -A 0 -T a  -F @P.z point_alpha/tz
chadd -t 0 0 point_alpha weight
chkey -t 0 -v 1 -m 0 -a 0 -A 0 -T a  -F @P.w point_alpha/weight
chadd -t 0 0 point_alpha diffr
chkey -t 0 -v 1 -m 0 -a 0 -A 0 -T a  -F @Cd.r point_alpha/diffr
chadd -t 0 0 point_alpha diffg
chkey -t 0 -v 1 -m 0 -a 0 -A 0 -T a  -F @Cd.g point_alpha/diffg
chadd -t 0 0 point_alpha diffb
chkey -t 0 -v 1 -m 0 -a 0 -A 0 -T a  -F @Cd.b point_alpha/diffb
chadd -t 0 0 point_alpha nx
chkey -t 0 -v 0 -m 0 -a 0 -A 0 -T a  -F @N.x point_alpha/nx
chadd -t 0 0 point_alpha ny
chkey -t 0 -v 0 -m 0 -a 0 -A 0 -T a  -F @N.y point_alpha/ny
chadd -t 0 0 point_alpha nz
chkey -t 0 -v 0 -m 0 -a 0 -A 0 -T a  -F @N.z point_alpha/nz
chadd -t 0 0 point_alpha mapu
chkey -t 0 -v 0 -m 0 -a 0 -A 0 -T a  -F @uv.x point_alpha/mapu
chadd -t 0 0 point_alpha mapv
chkey -t 0 -v 0 -m 0 -a 0 -A 0 -T a  -F @uv.y point_alpha/mapv
chadd -t 0 0 point_alpha mapw
chkey -t 0 -v 0 -m 0 -a 0 -A 0 -T a  -F @uv.z point_alpha/mapw
chadd -t 0 0 point_alpha tension
chkey -t 0 -v 1 -m 0 -a 0 -A 0 -T a  -F @tension point_alpha/tension
chadd -t 0 0 point_alpha springk
chkey -t 0 -v 30 -m 0 -a 0 -A 0 -T a  -F @springk point_alpha/springk
chadd -t 0 0 point_alpha vx
chkey -t 0 -v 0 -m 0 -a 0 -A 0 -T a  -F @v.x point_alpha/vx
chadd -t 0 0 point_alpha vy
chkey -t 0 -v 0 -m 0 -a 0 -A 0 -T a  -F @v.y point_alpha/vy
chadd -t 0 0 point_alpha vz
chkey -t 0 -v 0 -m 0 -a 0 -A 0 -T a  -F @v.z point_alpha/vz
chadd -t 0 0 point_alpha upx
chkey -t 0 -v 0 -m 0 -a 0 -A 0 -T a  -F @up.x point_alpha/upx
chadd -t 0 0 point_alpha upy
chkey -t 0 -v 0 -m 0 -a 0 -A 0 -T a  -F @up.y point_alpha/upy
chadd -t 0 0 point_alpha upz
chkey -t 0 -v 0 -m 0 -a 0 -A 0 -T a  -F @up.z point_alpha/upz
chadd -t 0 0 point_alpha pscale
chkey -t 0 -v 1 -m 0 -a 0 -A 0 -T a  -F @pscale point_alpha/pscale
chblockend
opparm -V 15.0.416 point_alpha group ( "" ) matchbyattribute ( off ) attributetomatch ( id ) stdswitcher ( 0 0 0 0 ) t ( tx ty tz ) doweight ( off ) weight ( weight ) doclr ( off ) diff ( diffr diffg diffb ) doalpha ( on ) alpha ( 0.5 ) donml ( off ) n ( nx ny nz ) douvw ( off ) map ( mapu mapv mapw ) domass ( off ) mass ( 1 ) drag ( 1 ) dotension ( off ) tension ( tension ) dospringk ( off ) springk ( springk ) dovel ( off ) v ( vx vy vz ) doup ( off ) up ( upx upy upz ) dopscale ( off ) pscale ( pscale ) doinstance ( off ) instancepath ( "" ) doradius ( off ) radiusf ( 1 ) doscale ( off ) scalef ( 1 ) doradialf ( off ) radialf ( 0 ) donormalf ( off ) normalf ( 0 ) doedgef ( off ) edgef ( 0 ) dodirf ( off ) dirf ( 0 0 0 ) numcustom ( 1 ) apply1 ( on ) name1 ( "" ) val1i ( 0 0 0 0 ) sval1 ( "" )
chlock point_alpha -*
chautoscope point_alpha -*
opcolor -c 0.80000001192092896 0.80000001192092896 0.80000001192092896 point_alpha
opset -d on -r on -h off -f off -y off -t off -l off -s off -u off -c off -e on -b off point_alpha
opexprlanguage -s hscript point_alpha
opuserdata -n '___Version___' -v '15.0.416' point_alpha
oporder -e spaceFillingDiagram objectMerge_internalBubblesCenters subdivide sphere transform_scaleBackTo1 copy_instances delete_nonAirToLiquid delete_nonAirToAir delete_nonExternal delete_nonInternal OUT_all polyExtrude_creaseToSubdivide OUT_internalRender OUT_external OUT_internal OUT_airToAir OUT_airToLiquid subdivide_crease subdivide_noCrease facet_normals VDBFromParticles_externalSDF vdbcombine_SDFUnion objectMerge_liquidSDF convertVDB_toPolygons OUT_surfaceExternal vdbcombine_SDFIntersectionBubbles objectMerge_containerSDFHighRes objectMerge_externalBubblesCenters merge_all facet_normalsSurfaceExternal subdivide_surfaceExternal objectMerge_containerMesh OUT point_alpha 
opcf ..
opcf liquid

# Node mountain_liquidSurface (Sop/mountain)
opadd -e -n mountain mountain_liquidSurface
oplocate -x -5.3769499999999999 -y -0.97987500000000005 mountain_liquidSurface
opspareds "" mountain_liquidSurface
chblockbegin
chadd -t 0 0 mountain_liquidSurface height
chkey -t 0 -v 15 -m 0 -a 0 -A 0 -T a  -F 'ch("../controls/waveamplitude")' mountain_liquidSurface/height
chadd -t 0 0 mountain_liquidSurface freq1
chkey -t 0 -v 1 -m 0 -a 0 -A 0 -T a  -F 0.02 mountain_liquidSurface/freq1
chadd -t 0 0 mountain_liquidSurface freq2
chkey -t 0 -v 1 -m 0 -a 0 -A 0 -T a  -F 'ch("freq1")' mountain_liquidSurface/freq2
chadd -t 0 0 mountain_liquidSurface freq3
chkey -t 0 -v 1 -m 0 -a 0 -A 0 -T a  -F 'ch("freq1")' mountain_liquidSurface/freq3
chadd -t 0 0 mountain_liquidSurface offset1
chkey -t 0 -v 0 -m 0 -a 0 -A 0 -T a  -F '$F/30.0' mountain_liquidSurface/offset1
chadd -t 0 0 mountain_liquidSurface offset2
chkey -t 0 -v 0 -m 0 -a 0 -A 0 -T a  -F '$F/80.0' mountain_liquidSurface/offset2
chadd -t 0 0 mountain_liquidSurface offset3
chkey -t 0 -v 0 -m 0 -a 0 -A 0 -T a  -F '$F/50.0' mountain_liquidSurface/offset3
chblockend
opparm mountain_liquidSurface vex_group ( "" ) vex_numthreads ( 1perproc ) vex_edit ( 0 ) vex_reload ( 0 ) frac_depth ( 5 ) rough ( 0.40000000000000002 ) height ( height ) freq ( freq1 freq2 freq3 ) offset ( offset1 offset2 offset3 ) ntype ( perlin ) do_color ( off ) clr_off ( 0.40000000000000002 ) clr_scale ( 1 )
chlock mountain_liquidSurface -*
chautoscope mountain_liquidSurface -*
opcolor -c 0.80000001192092896 0.80000001192092896 0.80000001192092896 mountain_liquidSurface
opset -d off -r off -h off -f off -y off -t off -l off -s off -u off -c off -e on -b off mountain_liquidSurface
opexprlanguage -s hscript mountain_liquidSurface
opuserdata -n '___Version___' -v '' mountain_liquidSurface

# Node grid (Sop/grid)
opadd -e -n grid grid
oplocate -x -5.3769499999999999 -y 0.021705599999999999 grid
opspareds "" grid
chblockbegin
chadd -t 0 0 grid sizex
chkey -t 0 -v 100 -m 0 -a 0 -A 0 -T a  -F 'ch("../controls/containerwidth")' grid/sizex
chadd -t 0 0 grid sizey
chkey -t 0 -v 100 -m 0 -a 0 -A 0 -T a  -F 'ch("../controls/containerwidth")' grid/sizey
chblockend
opparm -V 15.0.416 grid type ( poly ) surftype ( quads ) orient ( zx ) size ( sizex sizey ) t ( 0 0 0 ) rows ( 200 ) cols ( 200 ) orderu ( 4 ) orderv ( 4 ) interpu ( on ) interpv ( on )
chlock grid -*
chautoscope grid -*
opcolor -c 0.80000001192092896 0.80000001192092896 0.80000001192092896 grid
opset -d off -r off -h off -f off -y off -t off -l off -s off -u off -c off -e on -b off grid
opexprlanguage -s hscript grid
opuserdata -n '___Version___' -v '15.0.416' grid

# Node trail (Sop/trail)
opadd -e -n trail trail
oplocate -x -5.3769499999999999 -y -1.7766599999999999 trail
opspareds "" trail
opparm -V 15.0.416 trail result ( velocity ) length ( 2 ) inc ( 1 ) cache ( 2 ) clear ( 0 ) evalframe ( on ) surftype ( quads ) close ( on ) velscale ( 1 ) velapproximation ( "Backward Difference" ) computeangular ( off ) matchbyattribute ( off ) attributetomatch ( id )
chlock trail -*
chautoscope trail -*
opcolor -c 0.80000001192092896 0.80000001192092896 0.80000001192092896 trail
opset -d off -r off -h off -f off -y off -t off -l off -s off -u off -c off -e on -b off trail
opexprlanguage -s hscript trail
opuserdata -n '___Version___' -v '15.0.416' trail

# Node OUT_isosurface (Sop/null)
opadd -e -n null OUT_isosurface
oplocate -x -9.1797900000000006 -y -9.5793199999999992 OUT_isosurface
opspareds "" OUT_isosurface
opparm -V 15.0.416 OUT_isosurface copyinput ( on ) cacheinput ( off )
chlock OUT_isosurface -*
chautoscope OUT_isosurface -*
opcolor -c 0.80000001192092896 0.80000001192092896 0.80000001192092896 OUT_isosurface
opset -d on -r on -h off -f off -y off -t off -l off -s off -u off -c off -e on -b off OUT_isosurface
opexprlanguage -s hscript OUT_isosurface
opuserdata -n '___Version___' -v '15.0.416' OUT_isosurface
opcf volumeVop_curlNoise
oporder -e volumevopglobal1 vel vectorToFloat floatToVector curlnoise2d1 vectorToFloat1 floatToVector1 
opcf ..

# Node OUT_SDF (Sop/null)
opadd -e -n null OUT_SDF
oplocate -x -12.1838 -y -9.5791199999999996 OUT_SDF
opspareds "" OUT_SDF
opparm -V 15.0.416 OUT_SDF copyinput ( on ) cacheinput ( off )
chlock OUT_SDF -*
chautoscope OUT_SDF -*
opcolor -c 0.80000001192092896 0.80000001192092896 0.80000001192092896 OUT_SDF
opset -d off -r off -h off -f off -y off -t off -l off -s off -u off -c off -e on -b off OUT_SDF
opexprlanguage -s hscript OUT_SDF
opuserdata -n '___Version___' -v '15.0.416' OUT_SDF

# Node polyextrude_addDepth (Sop/polyextrude::2.0)
opadd -e -n polyextrude::2.0 polyextrude_addDepth
oplocate -x -8.6819100000000002 -y -3.39486 polyextrude_addDepth
opspareds "" polyextrude_addDepth
opparm polyextrude_addDepth  thicknessramp ( 2 ) twistramp ( 2 )
opparm -V 15.0.416 polyextrude_addDepth group ( "" ) splittype ( components ) usesplitgroup ( off ) splitgroup ( "" ) extrusionmode ( pointnormal ) dist ( 0 ) inset ( 0 ) twist ( 0 ) divs ( 1 ) spinetype ( straight ) stdswitcher ( 0 0 0 ) xformsection ( 0 ) xformfront ( on ) xformspace ( local ) rst ( srt ) xyz ( xyz ) translate ( 0 0 -10 ) rotate ( 0 0 0 ) scale ( 1 1 1 ) shear ( 0 0 0 ) pivot ( 0 0 0 ) outputsection ( 0 ) outputfront ( on ) outputfrontgrp ( on ) frontgrp ( containerFloor ) outputback ( on ) outputbackgrp ( off ) backgrp ( extrudeBack ) outputside ( on ) outputsidegrp ( off ) sidegrp ( extrudeSide ) preservegroups ( on ) insettingsection ( 0 ) limitinset ( on ) commonlimit ( on ) normalsection ( 0 ) addvertexnomrals ( off ) cuspangle ( 60 ) cuspfront ( on ) cuspback ( on ) shapecontrolsection ( 0 ) frontmagnitude ( 1 ) backmagnitude ( 1 ) frontstiffness ( 0 ) backstiffness ( 0 ) interpolation ( rotatingframe ) spacing ( arclengthuniform ) externalspinesection ( 0 ) reversespinedirection ( off ) axialrotation ( 0 ) frontblend ( 0.10000000000000001 ) backblend ( 0.10000000000000001 ) thicknesssection ( 0 ) thicknessscale ( 1 ) usethicknessattrib ( on ) thicknessattrib ( thickness ) usethicknessramp ( on ) thicknessramp ( 2 ) twistsection ( 0 ) usetwistattrib ( on ) twistattrib ( twist ) usetwistramp ( on ) twistramp ( 2 ) twistscale ( 180 ) localattribs ( 0 ) uselocalzscaleattrib ( off ) localzscaleattrib ( zscale ) uselocalinsetscaleattrib ( off ) localinsetscaleattrib ( insetscale ) uselocaltwistattrib ( off ) localtwistscaleattrib ( twistscale ) uselocaldivsattrib ( off ) locadivscaleattrib ( divsscale ) localframeattribs ( 0 ) uselocalxattrib ( off ) localxattrib ( localx ) uselocalzattirb ( off ) localzattirb ( localz ) uselocalctrattrib ( off ) localctrattrib ( localctr ) thicknessramp1pos ( 0 ) thicknessramp1value ( 1 ) thicknessramp1interp ( catmull-rom ) thicknessramp2pos ( 1 ) thicknessramp2value ( 1 ) thicknessramp2interp ( catmull-rom ) twistramp1pos ( 0 ) twistramp1value ( 0.5 ) twistramp1interp ( catmull-rom ) twistramp2pos ( 1 ) twistramp2value ( 0.5 ) twistramp2interp ( catmull-rom )
chlock polyextrude_addDepth -*
chautoscope polyextrude_addDepth -*
opcolor -c 0.80000001192092896 0.80000001192092896 0.80000001192092896 polyextrude_addDepth
opset -d off -r off -h off -f off -y off -t off -l off -s off -u off -c off -e on -b off polyextrude_addDepth
opexprlanguage -s hscript polyextrude_addDepth
opuserdata -n '___Version___' -v '15.0.416' polyextrude_addDepth

# Node point_floorDepth (Sop/point)
opadd -e -n point point_floorDepth
oplocate -x -8.6819100000000002 -y -4.5945299999999998 point_floorDepth
opspareds "" point_floorDepth
opparm point_floorDepth  numcustom ( 1 )
chblockbegin
chadd -t 0 0 point_floorDepth tx
chkey -t 0 -v 0 -m 0 -a 0 -A 0 -T a  -F '$TX' point_floorDepth/tx
chadd -t 0 0 point_floorDepth ty
chkey -t 0 -v -50 -m 0 -a 0 -A 0 -T a  -F '-ch("../controls/containerdepth")' point_floorDepth/ty
chadd -t 0 0 point_floorDepth tz
chkey -t 0 -v 0 -m 0 -a 0 -A 0 -T a  -F '$TZ' point_floorDepth/tz
chadd -t 0 0 point_floorDepth weight
chkey -t 0 -v 1 -m 0 -a 0 -A 0 -T a  -F @P.w point_floorDepth/weight
chadd -t 0 0 point_floorDepth diffr
chkey -t 0 -v 1 -m 0 -a 0 -A 0 -T a  -F @Cd.r point_floorDepth/diffr
chadd -t 0 0 point_floorDepth diffg
chkey -t 0 -v 1 -m 0 -a 0 -A 0 -T a  -F @Cd.g point_floorDepth/diffg
chadd -t 0 0 point_floorDepth diffb
chkey -t 0 -v 1 -m 0 -a 0 -A 0 -T a  -F @Cd.b point_floorDepth/diffb
chadd -t 0 0 point_floorDepth alpha
chkey -t 0 -v 1 -m 0 -a 0 -A 0 -T a  -F @Alpha point_floorDepth/alpha
chadd -t 0 0 point_floorDepth nx
chkey -t 0 -v 0 -m 0 -a 0 -A 0 -T a  -F @N.x point_floorDepth/nx
chadd -t 0 0 point_floorDepth ny
chkey -t 0 -v 0 -m 0 -a 0 -A 0 -T a  -F @N.y point_floorDepth/ny
chadd -t 0 0 point_floorDepth nz
chkey -t 0 -v 0 -m 0 -a 0 -A 0 -T a  -F @N.z point_floorDepth/nz
chadd -t 0 0 point_floorDepth mapu
chkey -t 0 -v 0 -m 0 -a 0 -A 0 -T a  -F @uv.x point_floorDepth/mapu
chadd -t 0 0 point_floorDepth mapv
chkey -t 0 -v 0 -m 0 -a 0 -A 0 -T a  -F @uv.y point_floorDepth/mapv
chadd -t 0 0 point_floorDepth mapw
chkey -t 0 -v 0 -m 0 -a 0 -A 0 -T a  -F @uv.z point_floorDepth/mapw
chadd -t 0 0 point_floorDepth tension
chkey -t 0 -v 1 -m 0 -a 0 -A 0 -T a  -F @tension point_floorDepth/tension
chadd -t 0 0 point_floorDepth springk
chkey -t 0 -v 30 -m 0 -a 0 -A 0 -T a  -F @springk point_floorDepth/springk
chadd -t 0 0 point_floorDepth vx
chkey -t 0 -v 0 -m 0 -a 0 -A 0 -T a  -F @v.x point_floorDepth/vx
chadd -t 0 0 point_floorDepth vy
chkey -t 0 -v 0 -m 0 -a 0 -A 0 -T a  -F @v.y point_floorDepth/vy
chadd -t 0 0 point_floorDepth vz
chkey -t 0 -v 0 -m 0 -a 0 -A 0 -T a  -F @v.z point_floorDepth/vz
chadd -t 0 0 point_floorDepth upx
chkey -t 0 -v 0 -m 0 -a 0 -A 0 -T a  -F @up.x point_floorDepth/upx
chadd -t 0 0 point_floorDepth upy
chkey -t 0 -v 0 -m 0 -a 0 -A 0 -T a  -F @up.y point_floorDepth/upy
chadd -t 0 0 point_floorDepth upz
chkey -t 0 -v 0 -m 0 -a 0 -A 0 -T a  -F @up.z point_floorDepth/upz
chadd -t 0 0 point_floorDepth pscale
chkey -t 0 -v 1 -m 0 -a 0 -A 0 -T a  -F @pscale point_floorDepth/pscale
chblockend
opparm -V 15.0.416 point_floorDepth group ( containerFloor ) matchbyattribute ( off ) attributetomatch ( id ) stdswitcher ( 0 0 0 0 ) t ( tx ty tz ) doweight ( off ) weight ( weight ) doclr ( off ) diff ( diffr diffg diffb ) doalpha ( off ) alpha ( alpha ) donml ( off ) n ( nx ny nz ) douvw ( off ) map ( mapu mapv mapw ) domass ( off ) mass ( 1 ) drag ( 1 ) dotension ( off ) tension ( tension ) dospringk ( off ) springk ( springk ) dovel ( off ) v ( vx vy vz ) doup ( off ) up ( upx upy upz ) dopscale ( off ) pscale ( pscale ) doinstance ( off ) instancepath ( "" ) doradius ( off ) radiusf ( 1 ) doscale ( off ) scalef ( 1 ) doradialf ( off ) radialf ( 0 ) donormalf ( off ) normalf ( 0 ) doedgef ( off ) edgef ( 0 ) dodirf ( off ) dirf ( 0 0 0 ) numcustom ( 1 ) apply1 ( on ) name1 ( "" ) val1i ( 0 0 0 0 ) sval1 ( "" )
chlock point_floorDepth -*
chautoscope point_floorDepth -*
opcolor -c 0.80000001192092896 0.80000001192092896 0.80000001192092896 point_floorDepth
opset -d off -r off -h off -f off -y off -t off -l off -s off -u off -c off -e on -b off point_floorDepth
opexprlanguage -s hscript point_floorDepth
opuserdata -n '___Version___' -v '15.0.416' point_floorDepth

# Node containerFloor (Sop/group)
opadd -e -n group containerFloor
oplocate -x -8.6819100000000002 -y -3.9960900000000001 containerFloor
opspareds "" containerFloor
chblockbegin
chadd -t 0 0 containerFloor rangeend
chkey -t 0 -v 0 -m 0 -a 0 -A 0 -T a  -F '$N' containerFloor/rangeend
chblockend
opparm -V 15.0.416 containerFloor group ( "" ) stdswitcher ( 2 2 2 ) docreategrp ( off ) crname ( group1 ) entity ( point ) geotype ( all ) mergeop ( replace ) switcher2 ( 0 0 0 0 ) groupnumber ( on ) ordered ( off ) groupop ( grppattern ) filter ( 1 ) pattern ( "" ) range ( 0 rangeend ) select ( 1 2 ) groupbounding ( off ) boundtype ( usebbox ) size ( 1 1 1 ) t ( 0 0 0 ) iso ( 0 ) invertvolume ( off ) includenotwhollycontained ( off ) groupnormal ( off ) dir ( 0 0 1 ) angle ( 180 ) camerapath ( "" ) nonplanar ( off ) nonplanartol ( 0.001 ) groupedges ( off ) dominedgeangle ( off ) minedgeangle ( 20 ) domaxedgeangle ( off ) maxedgeangle ( 20 ) edgeanglebetweenedges ( off ) dominedgelen ( off ) minedgelen ( 0 ) domaxedgelen ( off ) maxedgelen ( 0 ) dodepth ( off ) edgestep ( 0 ) edgeptgrp ( 0 ) unshared ( off ) boundarygroups ( off ) combineentity ( guess ) grpequal ( "" ) not1 ( off ) grp1 ( "" ) op1 ( none ) not2 ( off ) grp2 ( "" ) op2 ( none ) not3 ( off ) grp3 ( "" ) op3 ( none ) not4 ( off ) grp4 ( "" ) switcher3 ( 1 1 1 ) oldname ( "" ) newname ( "" ) cnvfromtype ( primgroup ) cnvtotype ( ptgroup ) convertg ( containerFloor ) cnvtname ( "" ) preserve ( off ) primswithallpts ( off ) destroyname ( "" ) type ( 1 )
chlock containerFloor -*
chautoscope containerFloor -*
opcolor -c 0.80000001192092896 0.80000001192092896 0.80000001192092896 containerFloor
opset -d off -r off -h on -f off -y off -t off -l off -s off -u off -c off -e on -b off containerFloor
opexprlanguage -s hscript containerFloor
opuserdata -n '___Version___' -v '15.0.416' containerFloor

# Node vdbfrompolygons_surfaceSDF (Sop/vdbfrompolygons)
opadd -e -n vdbfrompolygons vdbfrompolygons_surfaceSDF
oplocate -x -8.6819100000000002 -y -5.1959 vdbfrompolygons_surfaceSDF
opspareds "" vdbfrompolygons_surfaceSDF
opparm vdbfrompolygons_surfaceSDF  numattrib ( 0 )
opparm -V 15.0.416 vdbfrompolygons_surfaceSDF voxelsize ( 2 ) group ( "" ) builddistance ( on ) distancename ( surface ) buildfog ( off ) fogname ( density ) useworldspaceunits ( off ) exteriorbandvoxels ( 3 ) interiorbandvoxels ( 3 ) exteriorband ( 1 ) interiorband ( 1 ) fillinterior ( off ) unsigneddist ( off ) numattrib ( 0 )
chlock vdbfrompolygons_surfaceSDF -*
chautoscope vdbfrompolygons_surfaceSDF -*
opcolor -c 0.80000001192092896 0.80000001192092896 0.80000001192092896 vdbfrompolygons_surfaceSDF
opset -d off -r off -h off -f off -y off -t off -l off -s off -u off -c off -e on -b off vdbfrompolygons_surfaceSDF
opexprlanguage -s hscript vdbfrompolygons_surfaceSDF
opuserdata -n '___Version___' -v '15.0.416' vdbfrompolygons_surfaceSDF

# Node controls (Sop/null)
opadd -e -n null controls
oplocate -x -10.575900000000001 -y -0.38196600000000003 controls
opspareds '    parm { 	name	"copyinput" 	baseparm 	label	"Copy Input" 	invisible 	export	none     }     parm { 	name	"cacheinput" 	baseparm 	label	"Cache Input" 	invisible 	export	none     }     parm { 	name	"waveamplitude" 	label	"Wave Amplitude" 	type	float 	default	{ "0" } 	range	{ 0! 20 } 	export	none     }     parm { 	name	"containerwidth" 	label	"Container Width" 	type	float 	default	{ "0" } 	range	{ 1! 100 } 	export	none     }     parm { 	name	"containerdepth" 	label	"Container Depth" 	type	float 	default	{ "0" } 	range	{ 1! 50 } 	export	none     } ' controls
opparm -V 15.0.416 controls copyinput ( on ) cacheinput ( off ) waveamplitude ( 15 ) containerwidth ( 100 ) containerdepth ( 50 )
chlock controls -*
chautoscope controls -*
opcolor -c 0.66699999570846558 0 0 controls
opset -d off -r off -h off -f off -y off -t off -l off -s off -u off -c off -e on -b off controls
opexprlanguage -s hscript controls
opuserdata -n '___Version___' -v '15.0.416' controls

# Node volumetrail1 (Sop/volumetrail)
opadd -e -n volumetrail volumetrail1
oplocate -x 2.7154600000000002 -y -5.7906899999999997 volumetrail1
opspareds "" volumetrail1
opparm -V 15.0.416 volumetrail1 group ( "" ) velfield ( "" ) advectionchoice ( advectbytime ) traillen ( 20 ) usecfl ( on ) cfl ( 0.27700000000000002 ) numsteps ( 10 ) usemaxsteps ( on ) maxsteps ( 1229 ) keep ( off ) separator ( ) visenable ( on ) detectrange ( off ) vismax ( 5.8600000000000003 ) visramp ( false )
chlock volumetrail1 -*
chautoscope volumetrail1 -*
opcolor -c 0.80000001192092896 0.80000001192092896 0.80000001192092896 volumetrail1
opset -d off -r off -h off -f off -y off -t off -l off -s off -u off -c off -e on -b off volumetrail1
opexprlanguage -s hscript volumetrail1
opuserdata -n '___Version___' -v '15.0.416' volumetrail1

# Node volumeslice2 (Sop/volumeslice)
opadd -e -n volumeslice volumeslice2
oplocate -x 0.91849700000000001 -y -5.1927399999999997 volumeslice2
opspareds "" volumeslice2
opparm -V 15.0.416 volumeslice2 group ( "" ) method ( mesh ) plane ( zx ) planeoffset ( 0.40500000000000003 ) attrib ( density ) lvar ( "" ) visualize ( on ) vismode ( false ) visrange ( 0 1 ) keep ( off )
chlock volumeslice2 -*
chautoscope volumeslice2 -*
opcolor -c 0.80000001192092896 0.80000001192092896 0.80000001192092896 volumeslice2
opset -d off -r off -h off -f off -y off -t off -l off -s off -u off -c off -e on -b off volumeslice2
opexprlanguage -s hscript volumeslice2
opuserdata -n '___Version___' -v '15.0.416' volumeslice2

# Node volume_liquidVelocity (Sop/volume)
opadd -e -n volume volume_liquidVelocity
oplocate -x -1.0794999999999999 -y -3.7972299999999999 volume_liquidVelocity
opspareds "" volume_liquidVelocity
chblockbegin
chadd -t 0 0 volume_liquidVelocity sizex
chkey -t 0 -v 1 -m 0 -a 0 -A 0 -T a  -F 'ch("../Controls/containerwidth")' volume_liquidVelocity/sizex
chadd -t 0 0 volume_liquidVelocity sizey
chkey -t 0 -v 1 -m 0 -a 0 -A 0 -T a  -F '2.0 * ch("../Controls/containerdepth")' volume_liquidVelocity/sizey
chadd -t 0 0 volume_liquidVelocity sizez
chkey -t 0 -v 1 -m 0 -a 0 -A 0 -T a  -F 'ch("../Controls/containerwidth")' volume_liquidVelocity/sizez
chadd -t 0 0 volume_liquidVelocity divsize
chkey -t 0 -v 0.10000000000000001 -m 0 -a 0 -A 0 -T a  -F 'ch("../Controls/voxelsize")' volume_liquidVelocity/divsize
chblockend
opparm -V 15.0.416 volume_liquidVelocity rank ( vector ) name ( vel ) initialval ( 10 0 0 ) stdswitcher ( 0 0 ) dimensionsource ( 0 0 ) size ( sizex sizey sizez ) t ( 0 0 0 ) taper ( 1 1 ) twod ( off ) voxelplane ( xy ) camera ( "" ) zmin ( 1 ) zmax ( 2 ) usecamwindow ( on ) winx ( 0 1 ) winy ( 0 1 ) uniformsamples ( size ) samplediv ( 100 ) divs ( 10 10 10 ) divsize ( divsize ) zscale ( 1 ) volborder ( constant ) volborderval ( 0 0 0 ) voltol ( 0 ) quantizetol ( 0 ) dither ( ordered ) usefp16 ( off ) volvis ( smoke ) volvisiso ( 0 ) volvisdensity ( 1 )
chlock volume_liquidVelocity -*
chautoscope volume_liquidVelocity -*
opcolor -c 0.80000001192092896 0.80000001192092896 0.80000001192092896 volume_liquidVelocity
opset -d off -r off -h off -f off -y off -t off -l off -s off -u off -c off -e on -b off volume_liquidVelocity
opexprlanguage -s hscript volume_liquidVelocity
opuserdata -n '___Version___' -v '15.0.416' volume_liquidVelocity

# Node OUT_velocity (Sop/null)
opadd -e -n null OUT_velocity
oplocate -x -1.07816 -y -9.5823999999999998 OUT_velocity
opspareds "" OUT_velocity
opparm -V 15.0.416 OUT_velocity copyinput ( on ) cacheinput ( off )
chlock OUT_velocity -*
chautoscope OUT_velocity -*
opcolor -c 0.80000001192092896 0.80000001192092896 0.80000001192092896 OUT_velocity
opset -d off -r off -h off -f off -y off -t off -l off -s off -u off -c off -e on -b off OUT_velocity
opexprlanguage -s hscript OUT_velocity
opuserdata -n '___Version___' -v '15.0.416' OUT_velocity

# Node objectMerge_containerSDF (Sop/object_merge)
opadd -e -n object_merge objectMerge_containerSDF
oplocate -x -12.5839 -y -5.1814299999999998 objectMerge_containerSDF
opspareds "" objectMerge_containerSDF
opparm objectMerge_containerSDF  numobj ( 1 )
opparm -V 15.0.416 objectMerge_containerSDF numobj ( 1 ) _separator ( ) xformtype ( object ) xformpath ( "" ) invertxform ( off ) createptgroups ( off ) ptgroupprefix ( _ptgrp_ ) createprimgroups ( off ) primgroupprefix ( _primgrp_ ) verbosegroups ( off ) suffixfirstgroup ( on ) createptstring ( off ) createprimstring ( off ) pathattrib ( objname ) pack ( off ) pivot ( centroid ) viewportlod ( full ) addpath ( on ) enable1 ( on ) objpath1 ( /obj/container/OUT_SDFLowRes ) group1 ( "" ) expand1 ( off )
chlock objectMerge_containerSDF -*
chautoscope objectMerge_containerSDF -*
opcolor -c 0.80000001192092896 0.80000001192092896 0.80000001192092896 objectMerge_containerSDF
opset -d off -r off -h off -f off -y off -t off -l off -s off -u off -c off -e on -b off objectMerge_containerSDF
opexprlanguage -s hscript objectMerge_containerSDF
opuserdata -n '___Version___' -v '15.0.416' objectMerge_containerSDF

# Node vdbcombine_SDFIntersection (Sop/vdbcombine)
opadd -e -n vdbcombine vdbcombine_SDFIntersection
oplocate -x -10.782500000000001 -y -7.1792600000000002 vdbcombine_SDFIntersection
opspareds "" vdbcombine_SDFIntersection
opparm -V 15.0.416 vdbcombine_SDFIntersection agroup ( "" ) bgroup ( "" ) flatten ( off ) pairs ( on ) operation ( sdfintersect ) amult ( 1 ) bmult ( 1 ) resample ( btoa ) resampleinterp ( linear ) deactivate ( off ) bgtolerance ( 0 ) prune ( on ) tolerance ( 0 ) flood ( off )
chlock vdbcombine_SDFIntersection -*
chautoscope vdbcombine_SDFIntersection -*
opcolor -c 0.80000001192092896 0.80000001192092896 0.80000001192092896 vdbcombine_SDFIntersection
opset -d off -r off -h off -f off -y off -t off -l off -s off -u off -c off -e on -b off vdbcombine_SDFIntersection
opexprlanguage -s hscript vdbcombine_SDFIntersection
opuserdata -n '___Version___' -v '15.0.416' vdbcombine_SDFIntersection

# Node convertVDB_toPolygons (Sop/convertvdb)
opadd -e -n convertvdb convertVDB_toPolygons
oplocate -x -9.1797900000000006 -y -8.5802800000000001 convertVDB_toPolygons
opspareds "" convertVDB_toPolygons
opparm -V 15.0.416 convertVDB_toPolygons group ( "" ) conversion ( poly ) vdbclass ( none ) splitdisjointvolumes ( off ) isovalue ( 0 ) fogisovalue ( 0.5 ) adaptivity ( 0 ) computenormals ( off ) automaticpartitions ( 1 ) activepart ( 0 ) internaladaptivity ( 0 ) transferattributes ( off ) sharpenfeatures ( off ) edgetolerance ( 0.5 ) surfacegroup ( surface_polygons ) interiorgroup ( interior_polygons ) seamlinegroup ( seam_polygons ) seampoints ( seam_points ) surfacemask ( on ) surfacemaskname ( "" ) surfacemaskoffset ( 0 ) invertmask ( off ) adaptivityfield ( off ) adaptivityfieldname ( "" ) prune ( on ) tolerance ( 0 ) flood ( on ) activateinsidesdf ( on )
chlock convertVDB_toPolygons -*
chautoscope convertVDB_toPolygons -*
opcolor -c 0.80000001192092896 0.80000001192092896 0.80000001192092896 convertVDB_toPolygons
opset -d off -r off -h off -f off -y off -t off -l off -s off -u off -c off -e on -b off convertVDB_toPolygons
opexprlanguage -s hscript convertVDB_toPolygons
opuserdata -n '___Version___' -v '15.0.416' convertVDB_toPolygons

# Node OUT_surface (Sop/null)
opadd -e -n null OUT_surface
oplocate -x -5.3769499999999999 -y -9.5958199999999998 OUT_surface
opspareds "" OUT_surface
opparm -V 15.0.416 OUT_surface copyinput ( on ) cacheinput ( off )
chlock OUT_surface -*
chautoscope OUT_surface -*
opcolor -c 0.80000001192092896 0.80000001192092896 0.80000001192092896 OUT_surface
opset -d off -r off -h off -f off -y off -t off -l off -s off -u off -c off -e on -b off OUT_surface
opexprlanguage -s hscript OUT_surface
opuserdata -n '___Version___' -v '15.0.416' OUT_surface

# Node OUT_grid (Sop/null)
opadd -e -n null OUT_grid
oplocate -x -1.97512 -y 0.021705599999999999 OUT_grid
opspareds "" OUT_grid
opparm -V 15.0.416 OUT_grid copyinput ( on ) cacheinput ( off )
chlock OUT_grid -*
chautoscope OUT_grid -*
opcolor -c 0.80000001192092896 0.80000001192092896 0.80000001192092896 OUT_grid
opset -d off -r off -h off -f off -y off -t off -l off -s off -u off -c off -e on -b off OUT_grid
opexprlanguage -s hscript OUT_grid
opuserdata -n '___Version___' -v '15.0.416' OUT_grid
oporder -e mountain_liquidSurface grid trail OUT_isosurface volumeVop_curlNoise OUT_SDF polyextrude_addDepth point_floorDepth containerFloor vdbfrompolygons_surfaceSDF controls volumetrail1 volumeslice2 volume_liquidVelocity OUT_velocity objectMerge_containerSDF vdbcombine_SDFIntersection convertVDB_toPolygons OUT_surface OUT_grid 
opcf ..
opcf bubblesCenters

# Node objectMerge_liquidGrid (Sop/object_merge)
opadd -e -n object_merge objectMerge_liquidGrid
oplocate -x -7.9846599999999999 -y 19.618200000000002 objectMerge_liquidGrid
opspareds "" objectMerge_liquidGrid
opparm objectMerge_liquidGrid  numobj ( 1 )
opparm -V 15.0.416 objectMerge_liquidGrid numobj ( 1 ) _separator ( ) xformtype ( object ) xformpath ( "" ) invertxform ( off ) createptgroups ( off ) ptgroupprefix ( _ptgrp_ ) createprimgroups ( off ) primgroupprefix ( _primgrp_ ) verbosegroups ( off ) suffixfirstgroup ( on ) createptstring ( off ) createprimstring ( off ) pathattrib ( objname ) pack ( off ) pivot ( centroid ) viewportlod ( full ) addpath ( on ) enable1 ( on ) objpath1 ( /obj/liquid/OUT_grid ) group1 ( "" ) expand1 ( off )
chlock objectMerge_liquidGrid -*
chautoscope objectMerge_liquidGrid -*
opcolor -c 0.80000001192092896 0.80000001192092896 0.80000001192092896 objectMerge_liquidGrid
opset -d off -r off -h off -f off -y off -t off -l off -s off -u off -c off -e on -b off objectMerge_liquidGrid
opexprlanguage -s hscript objectMerge_liquidGrid
opuserdata -n '___Version___' -v '15.0.416' objectMerge_liquidGrid

# Node polyextrude_foamVolume (Sop/polyextrude::2.0)
opadd -e -n polyextrude::2.0 polyextrude_foamVolume
oplocate -x -7.9846599999999999 -y 15.6172 polyextrude_foamVolume
opspareds "" polyextrude_foamVolume
opparm polyextrude_foamVolume  thicknessramp ( 2 ) twistramp ( 2 )
opparm -V 15.0.416 polyextrude_foamVolume group ( "" ) splittype ( components ) usesplitgroup ( off ) splitgroup ( "" ) extrusionmode ( primnormal ) dist ( 0 ) inset ( 0 ) twist ( 0 ) divs ( 1 ) spinetype ( straight ) stdswitcher ( 0 0 0 ) xformsection ( 0 ) xformfront ( on ) xformspace ( local ) rst ( srt ) xyz ( xyz ) translate ( 0 0 5 ) rotate ( 0 0 0 ) scale ( 1 1 1 ) shear ( 0 0 0 ) pivot ( 0 0 0 ) outputsection ( 0 ) outputfront ( on ) outputfrontgrp ( off ) frontgrp ( extrudeFront ) outputback ( on ) outputbackgrp ( on ) backgrp ( extrudeBack ) outputside ( on ) outputsidegrp ( off ) sidegrp ( extrudeSide ) preservegroups ( on ) insettingsection ( 0 ) limitinset ( on ) commonlimit ( on ) normalsection ( 0 ) addvertexnomrals ( off ) cuspangle ( 60 ) cuspfront ( on ) cuspback ( on ) shapecontrolsection ( 0 ) frontmagnitude ( 1 ) backmagnitude ( 1 ) frontstiffness ( 0 ) backstiffness ( 0 ) interpolation ( rotatingframe ) spacing ( arclengthuniform ) externalspinesection ( 0 ) reversespinedirection ( off ) axialrotation ( 0 ) frontblend ( 0.10000000000000001 ) backblend ( 0.10000000000000001 ) thicknesssection ( 0 ) thicknessscale ( 1 ) usethicknessattrib ( on ) thicknessattrib ( thickness ) usethicknessramp ( on ) thicknessramp ( 2 ) twistsection ( 0 ) usetwistattrib ( on ) twistattrib ( twist ) usetwistramp ( on ) twistramp ( 2 ) twistscale ( 180 ) localattribs ( 0 ) uselocalzscaleattrib ( off ) localzscaleattrib ( zscale ) uselocalinsetscaleattrib ( off ) localinsetscaleattrib ( insetscale ) uselocaltwistattrib ( off ) localtwistscaleattrib ( twistscale ) uselocaldivsattrib ( off ) locadivscaleattrib ( divsscale ) localframeattribs ( 0 ) uselocalxattrib ( off ) localxattrib ( localx ) uselocalzattirb ( off ) localzattirb ( localz ) uselocalctrattrib ( off ) localctrattrib ( localctr ) thicknessramp1pos ( 0 ) thicknessramp1value ( 1 ) thicknessramp1interp ( catmull-rom ) thicknessramp2pos ( 1 ) thicknessramp2value ( 1 ) thicknessramp2interp ( catmull-rom ) twistramp1pos ( 0 ) twistramp1value ( 0.5 ) twistramp1interp ( catmull-rom ) twistramp2pos ( 1 ) twistramp2value ( 0.5 ) twistramp2interp ( catmull-rom )
chlock polyextrude_foamVolume -*
chautoscope polyextrude_foamVolume -*
opcolor -c 0.80000001192092896 0.80000001192092896 0.80000001192092896 polyextrude_foamVolume
opset -d off -r off -h off -f off -y off -t off -l off -s off -u off -c off -e on -b off polyextrude_foamVolume
opexprlanguage -s hscript polyextrude_foamVolume
opuserdata -n '___Version___' -v '15.0.416' polyextrude_foamVolume

# Node mountain_liquidSurface (Sop/mountain)
opadd -e -n mountain mountain_liquidSurface
oplocate -x -7.9846599999999999 -y 18.819800000000001 mountain_liquidSurface
opspareds "" mountain_liquidSurface
chblockbegin
chadd -t 0 0 mountain_liquidSurface freq2
chkey -t 0 -v 1 -m 0 -a 0 -A 0 -T a  -F 'ch("freq1")' mountain_liquidSurface/freq2
chadd -t 0 0 mountain_liquidSurface freq3
chkey -t 0 -v 1 -m 0 -a 0 -A 0 -T a  -F 'ch("freq1")' mountain_liquidSurface/freq3
chblockend
opparm mountain_liquidSurface vex_group ( "" ) vex_numthreads ( 1perproc ) vex_edit ( 0 ) vex_reload ( 0 ) frac_depth ( 2 ) rough ( 1 ) height ( 15 ) freq ( 0.02 freq2 freq3 ) offset ( 10 0 10 ) ntype ( perlin ) do_color ( off ) clr_off ( 0.40000000000000002 ) clr_scale ( 1 )
chlock mountain_liquidSurface -*
chautoscope mountain_liquidSurface -*
opcolor -c 0.80000001192092896 0.80000001192092896 0.80000001192092896 mountain_liquidSurface
opset -d off -r off -h off -f off -y off -t off -l off -s off -u off -c off -e on -b off mountain_liquidSurface
opexprlanguage -s hscript mountain_liquidSurface
opuserdata -n '___Version___' -v '' mountain_liquidSurface

# Node group_extrudeFrontToPoint (Sop/group)
opadd -e -n group group_extrudeFrontToPoint
oplocate -x -7.9846599999999999 -y 14.8184 group_extrudeFrontToPoint
opspareds "" group_extrudeFrontToPoint
chblockbegin
chadd -t 0 0 group_extrudeFrontToPoint rangeend
chkey -t 0 -v 0 -m 0 -a 0 -A 0 -T a  -F '$N' group_extrudeFrontToPoint/rangeend
chblockend
opparm -V 15.0.416 group_extrudeFrontToPoint group ( "" ) stdswitcher ( 2 2 2 ) docreategrp ( off ) crname ( group1 ) entity ( primitive ) geotype ( all ) mergeop ( replace ) switcher2 ( 0 0 0 0 ) groupnumber ( on ) ordered ( off ) groupop ( grppattern ) filter ( 1 ) pattern ( "" ) range ( 0 rangeend ) select ( 1 2 ) groupbounding ( off ) boundtype ( usebbox ) size ( 1 1 1 ) t ( 0 0 0 ) iso ( 0 ) invertvolume ( off ) includenotwhollycontained ( off ) groupnormal ( off ) dir ( 0 0 1 ) angle ( 180 ) camerapath ( "" ) nonplanar ( off ) nonplanartol ( 0.001 ) groupedges ( off ) dominedgeangle ( off ) minedgeangle ( 20 ) domaxedgeangle ( off ) maxedgeangle ( 20 ) edgeanglebetweenedges ( off ) dominedgelen ( off ) minedgelen ( 0 ) domaxedgelen ( off ) maxedgelen ( 0 ) dodepth ( off ) edgestep ( 0 ) edgeptgrp ( 0 ) unshared ( off ) boundarygroups ( off ) combineentity ( guess ) grpequal ( "" ) not1 ( off ) grp1 ( "" ) op1 ( none ) not2 ( off ) grp2 ( "" ) op2 ( none ) not3 ( off ) grp3 ( "" ) op3 ( none ) not4 ( off ) grp4 ( "" ) switcher3 ( 1 1 1 ) oldname ( "" ) newname ( "" ) cnvfromtype ( primgroup ) cnvtotype ( ptgroup ) convertg ( extrudeBack ) cnvtname ( foamBottom ) preserve ( off ) primswithallpts ( off ) destroyname ( "" ) type ( 1 )
chlock group_extrudeFrontToPoint -*
chautoscope group_extrudeFrontToPoint -*
opcolor -c 0.80000001192092896 0.80000001192092896 0.80000001192092896 group_extrudeFrontToPoint
opset -d off -r off -h on -f off -y off -t off -l off -s off -u off -c off -e on -b off group_extrudeFrontToPoint
opexprlanguage -s hscript group_extrudeFrontToPoint
opuserdata -n '___Version___' -v '15.0.416' group_extrudeFrontToPoint

# Node OUT_foamVolume (Sop/null)
opadd -e -n null OUT_foamVolume
oplocate -x -3.5685199999999999 -y 13.6203 OUT_foamVolume
opspareds "" OUT_foamVolume
opparm -V 15.0.416 OUT_foamVolume copyinput ( on ) cacheinput ( off )
chlock OUT_foamVolume -*
chautoscope OUT_foamVolume -*
opcolor -c 0.80000001192092896 0.80000001192092896 0.80000001192092896 OUT_foamVolume
opset -d off -r off -h off -f off -y off -t off -l off -s off -u off -c off -e on -b off OUT_foamVolume
opexprlanguage -s hscript OUT_foamVolume
opuserdata -n '___Version___' -v '15.0.416' OUT_foamVolume

# Node vdbfrompolygons_foamVolumeSDF (Sop/vdbfrompolygons)
opadd -e -n vdbfrompolygons vdbfrompolygons_foamVolumeSDF
oplocate -x -7.97872 -y 12.808299999999999 vdbfrompolygons_foamVolumeSDF
opspareds "" vdbfrompolygons_foamVolumeSDF
opparm vdbfrompolygons_foamVolumeSDF  numattrib ( 1 )
opparm -V 15.0.416 vdbfrompolygons_foamVolumeSDF voxelsize ( 2 ) group ( "" ) builddistance ( on ) distancename ( surface ) buildfog ( off ) fogname ( density ) useworldspaceunits ( off ) exteriorbandvoxels ( 3 ) interiorbandvoxels ( 3 ) exteriorband ( 1 ) interiorband ( 1 ) fillinterior ( on ) unsigneddist ( off ) numattrib ( 1 ) attribute1 ( point.surfaceOffset ) attributevdbname1 ( surfaceOffset ) vectype1 ( invariant )
chlock vdbfrompolygons_foamVolumeSDF -*
chautoscope vdbfrompolygons_foamVolumeSDF -*
opcolor -c 0.80000001192092896 0.80000001192092896 0.80000001192092896 vdbfrompolygons_foamVolumeSDF
opset -d off -r off -h off -f off -y off -t off -l off -s off -u off -c off -e on -b off vdbfrompolygons_foamVolumeSDF
opexprlanguage -s hscript vdbfrompolygons_foamVolumeSDF
opuserdata -n '___Version___' -v '15.0.416' vdbfrompolygons_foamVolumeSDF

# Node objectMerge_containerSDFLowRes (Sop/object_merge)
opadd -e -n object_merge objectMerge_containerSDFLowRes
oplocate -x -11.7685 -y 12.198700000000001 objectMerge_containerSDFLowRes
opspareds "" objectMerge_containerSDFLowRes
opparm objectMerge_containerSDFLowRes  numobj ( 1 )
opparm -V 15.0.416 objectMerge_containerSDFLowRes numobj ( 1 ) _separator ( ) xformtype ( object ) xformpath ( "" ) invertxform ( off ) createptgroups ( off ) ptgroupprefix ( _ptgrp_ ) createprimgroups ( off ) primgroupprefix ( _primgrp_ ) verbosegroups ( off ) suffixfirstgroup ( on ) createptstring ( off ) createprimstring ( off ) pathattrib ( objname ) pack ( off ) pivot ( centroid ) viewportlod ( full ) addpath ( on ) enable1 ( on ) objpath1 ( /obj/container/OUT_SDFLowRes ) group1 ( "" ) expand1 ( off )
chlock objectMerge_containerSDFLowRes -*
chautoscope objectMerge_containerSDFLowRes -*
opcolor -c 0.80000001192092896 0.80000001192092896 0.80000001192092896 objectMerge_containerSDFLowRes
opset -d off -r off -h off -f off -y off -t off -l off -s off -u off -c off -e on -b off objectMerge_containerSDFLowRes
opexprlanguage -s hscript objectMerge_containerSDFLowRes
opuserdata -n '___Version___' -v '15.0.416' objectMerge_containerSDFLowRes

# Node vdbcombine_SDFIntersection (Sop/vdbcombine)
opadd -e -n vdbcombine vdbcombine_SDFIntersection
oplocate -x -9.9739199999999997 -y 10.7852 vdbcombine_SDFIntersection
opspareds "" vdbcombine_SDFIntersection
opparm -V 15.0.416 vdbcombine_SDFIntersection agroup ( "" ) bgroup ( "" ) flatten ( off ) pairs ( on ) operation ( sdfintersect ) amult ( 1 ) bmult ( 1 ) resample ( btoa ) resampleinterp ( linear ) deactivate ( off ) bgtolerance ( 0 ) prune ( on ) tolerance ( 0 ) flood ( off )
chlock vdbcombine_SDFIntersection -*
chautoscope vdbcombine_SDFIntersection -*
opcolor -c 0.80000001192092896 0.80000001192092896 0.80000001192092896 vdbcombine_SDFIntersection
opset -d off -r off -h off -f off -y off -t off -l off -s off -u off -c off -e on -b off vdbcombine_SDFIntersection
opexprlanguage -s hscript vdbcombine_SDFIntersection
opuserdata -n '___Version___' -v '15.0.416' vdbcombine_SDFIntersection

# Node VDBToSpheres (Sop/vdbtospheres)
opadd -e -n vdbtospheres VDBToSpheres
oplocate -x -9.9770599999999998 -y 9.9846500000000002 VDBToSpheres
opspareds "" VDBToSpheres
chblockbegin
chadd -t 0 0 VDBToSpheres spheres
chkey -t 0 -v 150 -m 0 -a 0 -A 0 -T a  -F 'ch("../../controls/number")' VDBToSpheres/spheres
chblockend
opparm -V 15.0.416 VDBToSpheres group ( "" ) isovalue ( 0 ) minradius ( 1 ) maxradius ( 3.4028234663852886e+38 ) spheres ( spheres ) scatter ( 10000 ) overlapping ( on ) preserve ( on ) doid ( off )
chlock VDBToSpheres -*
chautoscope VDBToSpheres -*
opcolor -c 0.80000001192092896 0.80000001192092896 0.80000001192092896 VDBToSpheres
opset -d off -r off -h off -f off -y off -t off -l off -s off -u off -c off -e on -b off VDBToSpheres
opexprlanguage -s hscript VDBToSpheres
opuserdata -n '___Version___' -v '15.0.416' VDBToSpheres

# Node foreach_primitive (Sop/foreach)
opadd -e -n foreach foreach_primitive
oplocate -x -9.9770599999999998 -y 9.2094199999999997 foreach_primitive
opspareds "" foreach_primitive
opparm -V 15.0.416 foreach_primitive fortype ( prim ) forstamp ( FORVALUE ) foridxstamp ( FORIDXVALUE ) groupmask ( "" ) attrib ( "" ) attribtol ( 0.0010000000474974513 ) numrange ( 1 10 1 ) usemaxiter ( off ) maxiter ( 10 ) mergeresults ( on ) eachpoint ( off ) stopcondition ( 0 )
chlock foreach_primitive -*
chautoscope foreach_primitive -*
opcolor -c 0.80000001192092896 0.80000001192092896 0.80000001192092896 foreach_primitive
opset -d off -r off -h off -f off -y off -t off -l off -s off -u off -c off -e on -b off foreach_primitive
opexprlanguage -s hscript foreach_primitive
opuserdata -n '___Version___' -v '15.0.416' foreach_primitive
opcf foreach_primitive

# Node each (Sop/each)
opadd -e -n each each
oplocate -x 0.61019999999999996 -y 4.6204499999999999 each
opspareds "" each
chblockbegin
chadd -t 0 0 each feedback
chkey -t 0 -v 0 -m 0 -a 0 -A 0 -T a  -F '!ch("../mergeresults")' each/feedback
chadd -t 0 0 each group
chkey -t 0 -v 0 -m 0 -a 0 -A 0 -T a  -F 'ifs(ch("feedback") || (strcmp(chs("../fortype"), "group") && strcmp(chs("../fortype"), "prim")), "", stamps("..", chs("../forstamp"), ""))' each/group
chadd -t 0 0 each attrib
chkey -t 0 -v 0 -m 0 -a 0 -A 0 -T a  -F 'ifs(ch("feedback") || strcmp(chs("../fortype"), "attrib"), "", chs("../attrib"))' each/attrib
chadd -t 0 0 each attribval1
chkey -t 0 -v 0 -m 0 -a 0 -A 0 -T a  -F 'stamp("..", chs("../forstamp") + "1", 0)' each/attribval1
chadd -t 0 0 each attribval2
chkey -t 0 -v 0 -m 0 -a 0 -A 0 -T a  -F 'stamp("..", chs("../forstamp") + "2", 0)' each/attribval2
chadd -t 0 0 each attribval3
chkey -t 0 -v 0 -m 0 -a 0 -A 0 -T a  -F 'stamp("..", chs("../forstamp") + "3", 0)' each/attribval3
chadd -t 0 0 each attribtol
chkey -t 0 -v 0.001 -m 0 -a 0 -A 0 -T a  -F 'ch("../attribtol")' each/attribtol
chadd -t 0 0 each eachpoint
chkey -t 0 -v 0 -m 0 -a 0 -A 0 -T a  -F 'ch("../eachpoint")' each/eachpoint
chblockend
opparm -V 15.0.416 each feedback ( feedback ) forpath ( .. ) group ( group ) attrib ( attrib ) attribval ( attribval1 attribval2 attribval3 ) attribtol ( attribtol ) eachpoint ( eachpoint )
chlock each -*
chautoscope each -*
opcolor -c 0.80000001192092896 0.80000001192092896 0.80000001192092896 each
opset -d off -r off -h off -f off -y off -t off -l off -s off -u off -c off -e on -b off each
opexprlanguage -s hscript each
opuserdata -n '___Version___' -v '15.0.416' each

# Node attributeCreate (Sop/attribcreate::2.0)
opadd -e -n attribcreate::2.0 attributeCreate
oplocate -x 0.61019999999999996 -y 3.6164299999999998 attributeCreate
opspareds "" attributeCreate
opparm attributeCreate  numattr ( 1 )
chblockbegin
chadd -t 0 0 attributeCreate value1v1
chkey -t 0 -v 0 -m 0 -a 0 -A 0 -T a  -F 'bbox("../each", 6)/2.0' attributeCreate/value1v1
chblockend
opparm -V 15.0.416 attributeCreate group ( "" ) grouptype ( guess ) numattr ( 1 ) enable1 ( on ) name1 ( pscale ) existing1 ( better ) createvarmap1 ( off ) varname1 ( "" ) class1 ( point ) savetoinfo1 ( off ) type1 ( float ) typeinfo1 ( guess ) precision1 ( 32 ) size1 ( 1 ) default1v ( 0 0 0 0 ) writevalues1 ( on ) uselocal1 ( on ) value1v ( value1v1 0 0 0 ) string1 ( "" )
chlock attributeCreate -*
chautoscope attributeCreate -*
opcolor -c 0.80000001192092896 0.80000001192092896 0.80000001192092896 attributeCreate
opset -d on -r on -h off -f off -y off -t off -l off -s off -u off -c off -e on -b off attributeCreate
opexprlanguage -s hscript attributeCreate
opuserdata -n '___Version___' -v '15.0.416' attributeCreate
oporder -e each attributeCreate 
opcf ..

# Node VDBReshapeSDF (Sop/vdbreshapesdf)
opadd -e -n vdbreshapesdf VDBReshapeSDF
oplocate -x -11.7685 -y 11.3993 VDBReshapeSDF
opspareds "" VDBReshapeSDF
opparm -V 15.0.416 VDBReshapeSDF group ( "" ) mask ( on ) maskname ( "" ) operation ( dilate ) radius ( 1 ) iterations ( 4 ) halfwidth ( 3 ) useworldspaceunits ( off ) voxeloffset ( 1 ) accuracy ( 'upwind first' ) invert ( off ) minmask ( 0 ) maxmask ( 1 )
chlock VDBReshapeSDF -*
chautoscope VDBReshapeSDF -*
opcolor -c 0.80000001192092896 0.80000001192092896 0.80000001192092896 VDBReshapeSDF
opset -d off -r off -h off -f off -y off -t off -l off -s off -u off -c off -e on -b off VDBReshapeSDF
opexprlanguage -s hscript VDBReshapeSDF
opuserdata -n '___Version___' -v '15.0.416' VDBReshapeSDF

# Node point_copySurfaceOffset (Sop/point)
opadd -e -n point point_copySurfaceOffset
oplocate -x -7.9846599999999999 -y 16.4148 point_copySurfaceOffset
opspareds "" point_copySurfaceOffset
opparm point_copySurfaceOffset  numcustom ( 1 )
chblockbegin
chadd -t 0 0 point_copySurfaceOffset tx
chkey -t 0 -v 0 -m 0 -a 0 -A 0 -T a  -F @P.x point_copySurfaceOffset/tx
chadd -t 0 0 point_copySurfaceOffset ty
chkey -t 0 -v 0 -m 0 -a 0 -A 0 -T a  -F @P.y point_copySurfaceOffset/ty
chadd -t 0 0 point_copySurfaceOffset tz
chkey -t 0 -v 0 -m 0 -a 0 -A 0 -T a  -F @P.z point_copySurfaceOffset/tz
chadd -t 0 0 point_copySurfaceOffset weight
chkey -t 0 -v 1 -m 0 -a 0 -A 0 -T a  -F @P.w point_copySurfaceOffset/weight
chadd -t 0 0 point_copySurfaceOffset diffr
chkey -t 0 -v 1 -m 0 -a 0 -A 0 -T a  -F @Cd.r point_copySurfaceOffset/diffr
chadd -t 0 0 point_copySurfaceOffset diffg
chkey -t 0 -v 1 -m 0 -a 0 -A 0 -T a  -F @Cd.g point_copySurfaceOffset/diffg
chadd -t 0 0 point_copySurfaceOffset diffb
chkey -t 0 -v 1 -m 0 -a 0 -A 0 -T a  -F @Cd.b point_copySurfaceOffset/diffb
chadd -t 0 0 point_copySurfaceOffset alpha
chkey -t 0 -v 1 -m 0 -a 0 -A 0 -T a  -F @Alpha point_copySurfaceOffset/alpha
chadd -t 0 0 point_copySurfaceOffset nx
chkey -t 0 -v 0 -m 0 -a 0 -A 0 -T a  -F @N.x point_copySurfaceOffset/nx
chadd -t 0 0 point_copySurfaceOffset ny
chkey -t 0 -v 0 -m 0 -a 0 -A 0 -T a  -F @N.y point_copySurfaceOffset/ny
chadd -t 0 0 point_copySurfaceOffset nz
chkey -t 0 -v 0 -m 0 -a 0 -A 0 -T a  -F @N.z point_copySurfaceOffset/nz
chadd -t 0 0 point_copySurfaceOffset mapu
chkey -t 0 -v 0 -m 0 -a 0 -A 0 -T a  -F @uv.x point_copySurfaceOffset/mapu
chadd -t 0 0 point_copySurfaceOffset mapv
chkey -t 0 -v 0 -m 0 -a 0 -A 0 -T a  -F @uv.y point_copySurfaceOffset/mapv
chadd -t 0 0 point_copySurfaceOffset mapw
chkey -t 0 -v 0 -m 0 -a 0 -A 0 -T a  -F @uv.z point_copySurfaceOffset/mapw
chadd -t 0 0 point_copySurfaceOffset tension
chkey -t 0 -v 1 -m 0 -a 0 -A 0 -T a  -F @tension point_copySurfaceOffset/tension
chadd -t 0 0 point_copySurfaceOffset springk
chkey -t 0 -v 30 -m 0 -a 0 -A 0 -T a  -F @springk point_copySurfaceOffset/springk
chadd -t 0 0 point_copySurfaceOffset vx
chkey -t 0 -v 0 -m 0 -a 0 -A 0 -T a  -F @v.x point_copySurfaceOffset/vx
chadd -t 0 0 point_copySurfaceOffset vy
chkey -t 0 -v 0 -m 0 -a 0 -A 0 -T a  -F @v.y point_copySurfaceOffset/vy
chadd -t 0 0 point_copySurfaceOffset vz
chkey -t 0 -v 0 -m 0 -a 0 -A 0 -T a  -F @v.z point_copySurfaceOffset/vz
chadd -t 0 0 point_copySurfaceOffset upx
chkey -t 0 -v 0 -m 0 -a 0 -A 0 -T a  -F @up.x point_copySurfaceOffset/upx
chadd -t 0 0 point_copySurfaceOffset upy
chkey -t 0 -v 0 -m 0 -a 0 -A 0 -T a  -F @up.y point_copySurfaceOffset/upy
chadd -t 0 0 point_copySurfaceOffset upz
chkey -t 0 -v 0 -m 0 -a 0 -A 0 -T a  -F @up.z point_copySurfaceOffset/upz
chadd -t 0 0 point_copySurfaceOffset pscale
chkey -t 0 -v 1 -m 0 -a 0 -A 0 -T a  -F @pscale point_copySurfaceOffset/pscale
chadd -t 0 0 point_copySurfaceOffset val1i1
chkey -t 0 -v 0 -m 0 -a 0 -A 0 -T a  -F '$TY-$TY2' point_copySurfaceOffset/val1i1
chblockend
opparm -V 15.0.416 point_copySurfaceOffset group ( "" ) matchbyattribute ( off ) attributetomatch ( id ) stdswitcher ( 3 3 3 3 ) t ( tx ty tz ) doweight ( off ) weight ( weight ) doclr ( off ) diff ( diffr diffg diffb ) doalpha ( off ) alpha ( alpha ) donml ( off ) n ( nx ny nz ) douvw ( off ) map ( mapu mapv mapw ) domass ( off ) mass ( 1 ) drag ( 1 ) dotension ( off ) tension ( tension ) dospringk ( off ) springk ( springk ) dovel ( off ) v ( vx vy vz ) doup ( off ) up ( upx upy upz ) dopscale ( off ) pscale ( pscale ) doinstance ( off ) instancepath ( "" ) doradius ( off ) radiusf ( 1 ) doscale ( off ) scalef ( 1 ) doradialf ( off ) radialf ( 0 ) donormalf ( off ) normalf ( 0 ) doedgef ( off ) edgef ( 0 ) dodirf ( off ) dirf ( 0 0 0 ) numcustom ( 1 ) apply1 ( on ) name1 ( surfaceOffset ) val1i ( val1i1 0 0 0 ) sval1 ( "" )
chlock point_copySurfaceOffset -*
chautoscope point_copySurfaceOffset -*
opcolor -c 0.80000001192092896 0.80000001192092896 0.80000001192092896 point_copySurfaceOffset
opset -d off -r off -h off -f off -y off -t off -l off -s off -u off -c off -e on -b off point_copySurfaceOffset
opexprlanguage -s hscript point_copySurfaceOffset
opuserdata -n '___Version___' -v '15.0.416' point_copySurfaceOffset

# Node objectMerge_liquidSurface (Sop/object_merge)
opadd -e -n object_merge objectMerge_liquidSurface
oplocate -x -7.1767599999999998 -y 17.214500000000001 objectMerge_liquidSurface
opspareds "" objectMerge_liquidSurface
opparm objectMerge_liquidSurface  numobj ( 1 )
opparm -V 15.0.416 objectMerge_liquidSurface numobj ( 1 ) _separator ( ) xformtype ( object ) xformpath ( "" ) invertxform ( off ) createptgroups ( off ) ptgroupprefix ( _ptgrp_ ) createprimgroups ( off ) primgroupprefix ( _primgrp_ ) verbosegroups ( off ) suffixfirstgroup ( on ) createptstring ( off ) createprimstring ( off ) pathattrib ( objname ) pack ( off ) pivot ( centroid ) viewportlod ( full ) addpath ( on ) enable1 ( on ) objpath1 ( /obj/liquid/OUT_surface ) group1 ( "" ) expand1 ( off )
chlock objectMerge_liquidSurface -*
chautoscope objectMerge_liquidSurface -*
opcolor -c 0.80000001192092896 0.80000001192092896 0.80000001192092896 objectMerge_liquidSurface
opset -d off -r off -h off -f off -y off -t off -l off -s off -u off -c off -e on -b off objectMerge_liquidSurface
opexprlanguage -s hscript objectMerge_liquidSurface
opuserdata -n '___Version___' -v '15.0.416' objectMerge_liquidSurface

# Node attributeCreate_surfaceOffset (Sop/attribcreate::2.0)
opadd -e -n attribcreate::2.0 attributeCreate_surfaceOffset
oplocate -x -7.9846599999999999 -y 18.0108 attributeCreate_surfaceOffset
opspareds "" attributeCreate_surfaceOffset
opparm attributeCreate_surfaceOffset  numattr ( 1 )
opparm -V 15.0.416 attributeCreate_surfaceOffset group ( "" ) grouptype ( guess ) numattr ( 1 ) enable1 ( on ) name1 ( surfaceOffset ) existing1 ( better ) createvarmap1 ( off ) varname1 ( "" ) class1 ( point ) savetoinfo1 ( off ) type1 ( float ) typeinfo1 ( guess ) precision1 ( 32 ) size1 ( 1 ) default1v ( 0 0 0 0 ) writevalues1 ( on ) uselocal1 ( on ) value1v ( 0 0 0 0 ) string1 ( "" )
chlock attributeCreate_surfaceOffset -*
chautoscope attributeCreate_surfaceOffset -*
opcolor -c 0.80000001192092896 0.80000001192092896 0.80000001192092896 attributeCreate_surfaceOffset
opset -d off -r off -h off -f off -y off -t off -l off -s off -u off -c off -e on -b off attributeCreate_surfaceOffset
opexprlanguage -s hscript attributeCreate_surfaceOffset
opuserdata -n '___Version___' -v '15.0.416' attributeCreate_surfaceOffset

# Node point_flattenBottom (Sop/point)
opadd -e -n point point_flattenBottom
oplocate -x -7.97872 -y 14.216900000000001 point_flattenBottom
opspareds "" point_flattenBottom
opparm point_flattenBottom  numcustom ( 1 )
chblockbegin
chadd -t 0 0 point_flattenBottom tx
chkey -t 0 -v 0 -m 0 -a 0 -A 0 -T a  -F @P.x point_flattenBottom/tx
chadd -t 0 0 point_flattenBottom tz
chkey -t 0 -v 0 -m 0 -a 0 -A 0 -T a  -F @P.z point_flattenBottom/tz
chadd -t 0 0 point_flattenBottom weight
chkey -t 0 -v 1 -m 0 -a 0 -A 0 -T a  -F @P.w point_flattenBottom/weight
chadd -t 0 0 point_flattenBottom diffr
chkey -t 0 -v 1 -m 0 -a 0 -A 0 -T a  -F @Cd.r point_flattenBottom/diffr
chadd -t 0 0 point_flattenBottom diffg
chkey -t 0 -v 1 -m 0 -a 0 -A 0 -T a  -F @Cd.g point_flattenBottom/diffg
chadd -t 0 0 point_flattenBottom diffb
chkey -t 0 -v 1 -m 0 -a 0 -A 0 -T a  -F @Cd.b point_flattenBottom/diffb
chadd -t 0 0 point_flattenBottom alpha
chkey -t 0 -v 1 -m 0 -a 0 -A 0 -T a  -F @Alpha point_flattenBottom/alpha
chadd -t 0 0 point_flattenBottom nx
chkey -t 0 -v 0 -m 0 -a 0 -A 0 -T a  -F @N.x point_flattenBottom/nx
chadd -t 0 0 point_flattenBottom ny
chkey -t 0 -v 0 -m 0 -a 0 -A 0 -T a  -F @N.y point_flattenBottom/ny
chadd -t 0 0 point_flattenBottom nz
chkey -t 0 -v 0 -m 0 -a 0 -A 0 -T a  -F @N.z point_flattenBottom/nz
chadd -t 0 0 point_flattenBottom mapu
chkey -t 0 -v 0 -m 0 -a 0 -A 0 -T a  -F @uv.x point_flattenBottom/mapu
chadd -t 0 0 point_flattenBottom mapv
chkey -t 0 -v 0 -m 0 -a 0 -A 0 -T a  -F @uv.y point_flattenBottom/mapv
chadd -t 0 0 point_flattenBottom mapw
chkey -t 0 -v 0 -m 0 -a 0 -A 0 -T a  -F @uv.z point_flattenBottom/mapw
chadd -t 0 0 point_flattenBottom tension
chkey -t 0 -v 1 -m 0 -a 0 -A 0 -T a  -F @tension point_flattenBottom/tension
chadd -t 0 0 point_flattenBottom springk
chkey -t 0 -v 30 -m 0 -a 0 -A 0 -T a  -F @springk point_flattenBottom/springk
chadd -t 0 0 point_flattenBottom vx
chkey -t 0 -v 0 -m 0 -a 0 -A 0 -T a  -F @v.x point_flattenBottom/vx
chadd -t 0 0 point_flattenBottom vy
chkey -t 0 -v 0 -m 0 -a 0 -A 0 -T a  -F @v.y point_flattenBottom/vy
chadd -t 0 0 point_flattenBottom vz
chkey -t 0 -v 0 -m 0 -a 0 -A 0 -T a  -F @v.z point_flattenBottom/vz
chadd -t 0 0 point_flattenBottom upx
chkey -t 0 -v 0 -m 0 -a 0 -A 0 -T a  -F @up.x point_flattenBottom/upx
chadd -t 0 0 point_flattenBottom upy
chkey -t 0 -v 0 -m 0 -a 0 -A 0 -T a  -F @up.y point_flattenBottom/upy
chadd -t 0 0 point_flattenBottom upz
chkey -t 0 -v 0 -m 0 -a 0 -A 0 -T a  -F @up.z point_flattenBottom/upz
chadd -t 0 0 point_flattenBottom pscale
chkey -t 0 -v 1 -m 0 -a 0 -A 0 -T a  -F @pscale point_flattenBottom/pscale
chblockend
opparm -V 15.0.416 point_flattenBottom group ( foamBottom ) matchbyattribute ( off ) attributetomatch ( id ) stdswitcher ( 0 0 0 0 ) t ( tx 0 tz ) doweight ( off ) weight ( weight ) doclr ( off ) diff ( diffr diffg diffb ) doalpha ( off ) alpha ( alpha ) donml ( off ) n ( nx ny nz ) douvw ( off ) map ( mapu mapv mapw ) domass ( off ) mass ( 1 ) drag ( 1 ) dotension ( off ) tension ( tension ) dospringk ( off ) springk ( springk ) dovel ( off ) v ( vx vy vz ) doup ( off ) up ( upx upy upz ) dopscale ( off ) pscale ( pscale ) doinstance ( off ) instancepath ( "" ) doradius ( off ) radiusf ( 1 ) doscale ( off ) scalef ( 1 ) doradialf ( off ) radialf ( 0 ) donormalf ( off ) normalf ( 0 ) doedgef ( off ) edgef ( 0 ) dodirf ( off ) dirf ( 0 0 0 ) numcustom ( 1 ) apply1 ( on ) name1 ( "" ) val1i ( 0 0 0 0 ) sval1 ( "" )
chlock point_flattenBottom -*
chautoscope point_flattenBottom -*
opcolor -c 0.80000001192092896 0.80000001192092896 0.80000001192092896 point_flattenBottom
opset -d off -r off -h off -f off -y off -t off -l off -s off -u off -c off -e on -b off point_flattenBottom
opexprlanguage -s hscript point_flattenBottom
opuserdata -n '___Version___' -v '15.0.416' point_flattenBottom

# Node delete1 (Sop/delete)
opadd -e -n delete delete1
oplocate -x -9.5675500000000007 -y 11.7911 delete1
opspareds "" delete1
chblockbegin
chadd -t 0 0 delete1 rangeend
chkey -t 0 -v 0 -m 0 -a 0 -A 0 -T a  -F '$N' delete1/rangeend
chblockend
opparm -V 15.0.416 delete1 group ( '@name=surfaceOffset' ) negate ( dele ) entity ( primitive ) geotype ( all ) stdswitcher ( 0 0 0 0 ) affectnumber ( on ) groupop ( pattern ) filter ( 1 ) pattern ( !* ) range ( 0 rangeend ) select ( 1 2 ) affectvolume ( off ) boundtype ( usebbox ) size ( 1 1 1 ) t ( 0 0 0 ) affectnormal ( off ) dir ( 0 0 1 ) angle ( 180 ) camerapath ( "" ) affectdegenerate ( off ) degenerate ( off ) zaf ( off ) doopen ( off ) tol ( 0.001 ) removegrp ( on ) keeppoints ( off )
chlock delete1 -*
chautoscope delete1 -*
opcolor -c 0.80000001192092896 0.80000001192092896 0.80000001192092896 delete1
opset -d off -r off -h off -f off -y off -t off -l off -s off -u off -c off -e on -b off delete1
opexprlanguage -s hscript delete1
opuserdata -n '___Version___' -v '15.0.416' delete1

# Node attribfromvolume1 (Sop/attribfromvolume)
opadd -e -n attribfromvolume attribfromvolume1
oplocate -x -8.1794799999999999 -y 8.4110300000000002 attribfromvolume1
opspareds "" attribfromvolume1
opparm attribfromvolume1  monoramp ( 2 ) vectorramp ( 2 )
opparm -V 15.0.416 attribfromvolume1 group ( "" ) field ( surfaceOffset ) switcher ( 0 0 ) name ( surfaceOffset ) varname ( "" ) type ( float ) size ( 1 ) default ( 0 0 0 0 ) rangein ( 0 1 ) monoenable ( off ) monorampmode ( clamp ) monopreset ( none ) monoramp ( 2 ) vectorenable ( off ) vectorrampmode ( clamp ) vectorpreset ( none ) vectorramp ( 2 ) rangeout ( 0 1 ) monoramp1pos ( 0 ) monoramp1value ( 0 ) monoramp1interp ( linear ) monoramp2pos ( 1 ) monoramp2value ( 1 ) monoramp2interp ( linear ) vectorramp1pos ( 0 ) vectorramp1c ( 0 0 0 ) vectorramp1interp ( linear ) vectorramp2pos ( 1 ) vectorramp2c ( 1 1 1 ) vectorramp2interp ( linear )
chlock attribfromvolume1 -*
chautoscope attribfromvolume1 -*
opcolor -c 0.80000001192092896 0.80000001192092896 0.80000001192092896 attribfromvolume1
opset -d off -r off -h off -f off -y off -t off -l off -s off -u off -c off -e on -b off attribfromvolume1
opexprlanguage -s hscript attribfromvolume1
opuserdata -n '___Version___' -v '15.0.416' attribfromvolume1

# Node OUT_bubblesInternalCenters (Sop/null)
opadd -e -n null OUT_bubblesInternalCenters
oplocate -x -11.973000000000001 -y 4.42516 OUT_bubblesInternalCenters
opspareds "" OUT_bubblesInternalCenters
opparm -V 15.0.416 OUT_bubblesInternalCenters copyinput ( on ) cacheinput ( off )
chlock OUT_bubblesInternalCenters -*
chautoscope OUT_bubblesInternalCenters -*
opcolor -c 0.80000001192092896 0.80000001192092896 0.80000001192092896 OUT_bubblesInternalCenters
opset -d off -r off -h off -f off -y off -t off -l off -s off -u off -c off -e on -b off OUT_bubblesInternalCenters
opexprlanguage -s hscript OUT_bubblesInternalCenters
opuserdata -n '___Version___' -v '15.0.416' OUT_bubblesInternalCenters

# Node OUT_bubblesExternalSpheres (Sop/null)
opadd -e -n null OUT_bubblesExternalSpheres
oplocate -x -8.1413600000000006 -y 4.3996000000000004 OUT_bubblesExternalSpheres
opspareds "" OUT_bubblesExternalSpheres
opparm -V 15.0.416 OUT_bubblesExternalSpheres copyinput ( on ) cacheinput ( off )
chlock OUT_bubblesExternalSpheres -*
chautoscope OUT_bubblesExternalSpheres -*
opcolor -c 0.80000001192092896 0.80000001192092896 0.80000001192092896 OUT_bubblesExternalSpheres
opset -d on -r on -h off -f off -y off -t off -l off -s off -u off -c off -e on -b off OUT_bubblesExternalSpheres
opexprlanguage -s hscript OUT_bubblesExternalSpheres
opuserdata -n '___Version___' -v '15.0.416' OUT_bubblesExternalSpheres

# Node delete_primitives (Sop/delete)
opadd -e -n delete delete_primitives
oplocate -x -11.973000000000001 -y 5.22804 delete_primitives
opspareds "" delete_primitives
chblockbegin
chadd -t 0 0 delete_primitives rangeend
chkey -t 0 -v 0 -m 0 -a 0 -A 0 -T a  -F '$N' delete_primitives/rangeend
chblockend
opparm -V 15.0.416 delete_primitives group ( "" ) negate ( dele ) entity ( primitive ) geotype ( all ) stdswitcher ( 0 0 0 0 ) affectnumber ( on ) groupop ( pattern ) filter ( 1 ) pattern ( * ) range ( 0 rangeend ) select ( 1 2 ) affectvolume ( off ) boundtype ( usebbox ) size ( 1 1 1 ) t ( 0 0 0 ) affectnormal ( off ) dir ( 0 0 1 ) angle ( 180 ) camerapath ( "" ) affectdegenerate ( off ) degenerate ( off ) zaf ( off ) doopen ( off ) tol ( 0.001 ) removegrp ( on ) keeppoints ( on )
chlock delete_primitives -*
chautoscope delete_primitives -*
opcolor -c 0.80000001192092896 0.80000001192092896 0.80000001192092896 delete_primitives
opset -d off -r off -h off -f off -y off -t off -l off -s off -u off -c off -e on -b off delete_primitives
opexprlanguage -s hscript delete_primitives
opuserdata -n '___Version___' -v '15.0.416' delete_primitives

# Node point_smaller (Sop/point)
opadd -e -n point point_smaller
oplocate -x -8.1678800000000003 -y 6.81088 point_smaller
opspareds "" point_smaller
opparm point_smaller  numcustom ( 1 )
chblockbegin
chadd -t 0 0 point_smaller tx
chkey -t 0 -v 0 -m 0 -a 0 -A 0 -T a  -F @P.x point_smaller/tx
chadd -t 0 0 point_smaller ty
chkey -t 0 -v 0 -m 0 -a 0 -A 0 -T a  -F @P.y point_smaller/ty
chadd -t 0 0 point_smaller tz
chkey -t 0 -v 0 -m 0 -a 0 -A 0 -T a  -F @P.z point_smaller/tz
chadd -t 0 0 point_smaller weight
chkey -t 0 -v 1 -m 0 -a 0 -A 0 -T a  -F @P.w point_smaller/weight
chadd -t 0 0 point_smaller diffr
chkey -t 0 -v 1 -m 0 -a 0 -A 0 -T a  -F @Cd.r point_smaller/diffr
chadd -t 0 0 point_smaller diffg
chkey -t 0 -v 1 -m 0 -a 0 -A 0 -T a  -F @Cd.g point_smaller/diffg
chadd -t 0 0 point_smaller diffb
chkey -t 0 -v 1 -m 0 -a 0 -A 0 -T a  -F @Cd.b point_smaller/diffb
chadd -t 0 0 point_smaller alpha
chkey -t 0 -v 1 -m 0 -a 0 -A 0 -T a  -F @Alpha point_smaller/alpha
chadd -t 0 0 point_smaller nx
chkey -t 0 -v 0 -m 0 -a 0 -A 0 -T a  -F @N.x point_smaller/nx
chadd -t 0 0 point_smaller ny
chkey -t 0 -v 0 -m 0 -a 0 -A 0 -T a  -F @N.y point_smaller/ny
chadd -t 0 0 point_smaller nz
chkey -t 0 -v 0 -m 0 -a 0 -A 0 -T a  -F @N.z point_smaller/nz
chadd -t 0 0 point_smaller mapu
chkey -t 0 -v 0 -m 0 -a 0 -A 0 -T a  -F @uv.x point_smaller/mapu
chadd -t 0 0 point_smaller mapv
chkey -t 0 -v 0 -m 0 -a 0 -A 0 -T a  -F @uv.y point_smaller/mapv
chadd -t 0 0 point_smaller mapw
chkey -t 0 -v 0 -m 0 -a 0 -A 0 -T a  -F @uv.z point_smaller/mapw
chadd -t 0 0 point_smaller tension
chkey -t 0 -v 1 -m 0 -a 0 -A 0 -T a  -F @tension point_smaller/tension
chadd -t 0 0 point_smaller springk
chkey -t 0 -v 30 -m 0 -a 0 -A 0 -T a  -F @springk point_smaller/springk
chadd -t 0 0 point_smaller vx
chkey -t 0 -v 0 -m 0 -a 0 -A 0 -T a  -F @v.x point_smaller/vx
chadd -t 0 0 point_smaller vy
chkey -t 0 -v 0 -m 0 -a 0 -A 0 -T a  -F @v.y point_smaller/vy
chadd -t 0 0 point_smaller vz
chkey -t 0 -v 0 -m 0 -a 0 -A 0 -T a  -F @v.z point_smaller/vz
chadd -t 0 0 point_smaller upx
chkey -t 0 -v 0 -m 0 -a 0 -A 0 -T a  -F @up.x point_smaller/upx
chadd -t 0 0 point_smaller upy
chkey -t 0 -v 0 -m 0 -a 0 -A 0 -T a  -F @up.y point_smaller/upy
chadd -t 0 0 point_smaller upz
chkey -t 0 -v 0 -m 0 -a 0 -A 0 -T a  -F @up.z point_smaller/upz
chadd -t 0 0 point_smaller pscale
chkey -t 0 -v 1 -m 0 -a 0 -A 0 -T a  -F '0.2*pow($PSCALE+0.4*rand($PT), 2.0)' point_smaller/pscale
chblockend
opparm -V 15.0.416 point_smaller group ( "" ) matchbyattribute ( off ) attributetomatch ( id ) stdswitcher ( 1 1 1 1 ) t ( tx ty tz ) doweight ( off ) weight ( weight ) doclr ( off ) diff ( diffr diffg diffb ) doalpha ( off ) alpha ( alpha ) donml ( off ) n ( nx ny nz ) douvw ( off ) map ( mapu mapv mapw ) domass ( off ) mass ( 1 ) drag ( 1 ) dotension ( off ) tension ( tension ) dospringk ( off ) springk ( springk ) dovel ( off ) v ( vx vy vz ) doup ( off ) up ( upx upy upz ) dopscale ( on ) pscale ( pscale ) doinstance ( off ) instancepath ( "" ) doradius ( off ) radiusf ( 1 ) doscale ( off ) scalef ( 1 ) doradialf ( off ) radialf ( 0 ) donormalf ( off ) normalf ( 0 ) doedgef ( off ) edgef ( 0 ) dodirf ( off ) dirf ( 0 0 0 ) numcustom ( 1 ) apply1 ( on ) name1 ( "" ) val1i ( 0 0 0 0 ) sval1 ( "" )
chlock point_smaller -*
chautoscope point_smaller -*
opcolor -c 0.80000001192092896 0.80000001192092896 0.80000001192092896 point_smaller
opset -d off -r off -h off -f off -y off -t off -l off -s off -u off -c off -e on -b off point_smaller
opexprlanguage -s hscript point_smaller
opuserdata -n '___Version___' -v '15.0.416' point_smaller
oporder -e objectMerge_liquidGrid polyextrude_foamVolume mountain_liquidSurface group_extrudeFrontToPoint OUT_foamVolume vdbfrompolygons_foamVolumeSDF objectMerge_containerSDFLowRes vdbcombine_SDFIntersection VDBToSpheres foreach_primitive VDBReshapeSDF attributeWrangle_noOffset point_copySurfaceOffset objectMerge_liquidSurface attributeCreate_surfaceOffset point_flattenBottom delete1 attribfromvolume1 attributeWrangle_moveInLiquid OUT_bubblesInternalCenters OUT_bubblesExternalSpheres delete_primitives point_smaller 
opcf ..

# Node container (Object/geo)
opadd -e -n geo container
oplocate -x 5.8338700000000001 -y 8.2161100000000005 container
opspareds '    group { 	name	"stdswitcher5" 	label	"Transform"  	parm { 	    name	"keeppos" 	    baseparm 	    label	"Keep Position When Parenting" 	    export	none 	} 	parm { 	    name	"childcomp" 	    baseparm 	    label	"Child Compensation" 	    export	none 	} 	parm { 	    name	"pre_xform" 	    baseparm 	    label	"Pre-transform" 	    export	none 	} 	parm { 	    name	"xOrd" 	    baseparm 	    label	"Transform Order" 	    joinnext 	    export	none 	} 	parm { 	    name	"rOrd" 	    baseparm 	    label	"Rotate Order" 	    export	none 	} 	parm { 	    name	"t" 	    baseparm 	    label	"Translate" 	    export	all 	} 	parm { 	    name	"r" 	    baseparm 	    label	"Rotate" 	    export	all 	} 	parm { 	    name	"s" 	    baseparm 	    label	"Scale" 	    export	none 	} 	parm { 	    name	"p" 	    baseparm 	    label	"Pivot" 	    export	none 	} 	parm { 	    name	"scale" 	    baseparm 	    label	"Uniform Scale" 	    export	none 	} 	parm { 	    name	"lookatpath" 	    baseparm 	    label	"Look At" 	    export	none 	} 	parm { 	    name	"lookupobjpath" 	    baseparm 	    label	"Look Up Object" 	    export	none 	} 	parm { 	    name	"lookup" 	    baseparm 	    label	"Look At Up Vector" 	    export	none 	} 	parm { 	    name	"pathobjpath" 	    baseparm 	    label	"Path Object" 	    export	none 	} 	parm { 	    name	"roll" 	    baseparm 	    label	"Roll" 	    export	none 	} 	parm { 	    name	"pos" 	    baseparm 	    label	"Position" 	    export	none 	} 	parm { 	    name	"uparmtype" 	    baseparm 	    label	"Parameterization" 	    export	none 	} 	parm { 	    name	"pathorient" 	    baseparm 	    label	"Orient Along Path" 	    export	none 	} 	parm { 	    name	"up" 	    baseparm 	    label	"Orient Up Vector" 	    export	none 	} 	parm { 	    name	"bank" 	    baseparm 	    label	"Auto-Bank factor" 	    export	none 	}     }      group { 	name	"stdswitcher5_1" 	label	"Material"  	parm { 	    name	"shop_materialpath" 	    baseparm 	    label	"Material" 	    joinnext 	    export	none 	} 	parm { 	    name	"shop_materialopts" 	    baseparm 	    label	"Options" 	    export	none 	}     }      group { 	name	"stdswitcher5_2" 	label	"Render"  	parm { 	    name	"tdisplay" 	    baseparm 	    label	"Display" 	    joinnext 	    export	none 	} 	parm { 	    name	"display" 	    baseparm 	    label	"Display" 	    export	none 	} 	parm { 	    name	"viewportlod" 	    label	"Display As" 	    type	ordinal 	    default	{ "full" } 	    help	"Choose how the object\'s geometry should be rendered in the viewport" 	    menu	{ 		"full"	"Full Geometry" 		"points"	"Point Cloud" 		"box"	"Bounding Box" 		"centroid"	"Centroid" 		"hidden"	"Hidden" 		"subd"	"Subdivision Surface / Curves" 	    } 	    range	{ 0 1 } 	    export	none 	    parmtag	{ "spare_category" "Render" } 	} 	parm { 	    name	"vm_rendervisibility" 	    label	"Render Visibility" 	    type	string 	    default	{ "*" } 	    menureplace	{ 		"*"	"Visible to all" 		"primary"	"Visible only to primary rays" 		"primary|shadow"	"Visible only to primary and shadow rays" 		"-primary"	"Invisible to primary rays (Phantom)" 		"-diffuse"	"Invisible to diffuse rays" 		"-diffuse&-reflect&-refract"	"Invisible to secondary rays" 		""	"Invisible (Unrenderable)" 	    } 	    range	{ 0 1 } 	    export	none 	    parmtag	{ "spare_category" "Render" } 	} 	parm { 	    name	"vm_rendersubd" 	    label	"Render Polygons As Subdivision (Mantra)" 	    type	toggle 	    default	{ "0" } 	    range	{ 0 1 } 	    export	none 	    parmtag	{ "spare_category" "Geometry" } 	} 	parm { 	    name	"vm_subdstyle" 	    label	"Subdivision Style" 	    type	string 	    default	{ "mantra_catclark" } 	    hidewhen	"{ vm_rendersubd == 0 }" 	    menu	{ 		"mantra_catclark"	"Mantra Catmull-Clark" 		"osd_catclark"	"OpenSubdiv Catmull-Clark" 	    } 	    range	{ 0 1 } 	    export	none 	    parmtag	{ "spare_category" "Geometry" } 	} 	parm { 	    name	"vm_subdgroup" 	    label	"Subdivision Group" 	    type	string 	    default	{ "" } 	    hidewhen	"{ vm_rendersubd == 0 }" 	    range	{ 0 1 } 	    export	none 	    parmtag	{ "spare_category" "Geometry" } 	} 	group { 	    name	"folder0" 	    label	"Shading"  	    parm { 		name	"categories" 		label	"Categories" 		type	string 		default	{ "" } 		help	"A list of tags which can be used to select the object" 		range	{ 0 1 } 		export	none 		parmtag	{ "spare_category" "Shading" } 	    } 	    parm { 		name	"reflectmask" 		label	"Reflection Mask" 		type	oplist 		default	{ "*" } 		help	"Objects that will be reflected on this object." 		range	{ 0 1 } 		export	none 		parmtag	{ "opexpand" "1" } 		parmtag	{ "opfilter" "!!OBJ/GEOMETRY!!" } 		parmtag	{ "oprelative" "/obj" } 		parmtag	{ "spare_category" "Shading" } 	    } 	    parm { 		name	"refractmask" 		label	"Refraction Mask" 		type	oplist 		default	{ "*" } 		help	"Objects that will be refracted on this object." 		range	{ 0 1 } 		export	none 		parmtag	{ "opexpand" "1" } 		parmtag	{ "opfilter" "!!OBJ/GEOMETRY!!" } 		parmtag	{ "oprelative" "/obj" } 		parmtag	{ "spare_category" "Shading" } 	    } 	    parm { 		name	"lightmask" 		label	"Light Mask" 		type	oplist 		default	{ "*" } 		help	"Lights that illuminate this object." 		range	{ 0 1 } 		export	none 		parmtag	{ "opexpand" "1" } 		parmtag	{ "opfilter" "!!OBJ/LIGHT!!" } 		parmtag	{ "oprelative" "/obj" } 		parmtag	{ "spare_category" "Shading" } 	    } 	    parm { 		name	"vm_volumefilter" 		label	"Volume Filter" 		type	string 		default	{ "box" } 		menu	{ 		    "box"	"Box Filter" 		    "gaussian"	"Gaussian" 		    "bartlett"	"Bartlett (triangle)" 		    "catrom"	"Catmull-Rom" 		    "hanning"	"Hanning" 		    "blackman"	"Blackman" 		    "sinc"	"Sinc (sharpening)" 		} 		range	{ 0 1 } 		export	none 		parmtag	{ "spare_category" "Shading" } 	    } 	    parm { 		name	"vm_volumefilterwidth" 		label	"Volume Filter Width" 		type	float 		default	{ "1" } 		range	{ 0.001 5 } 		export	none 		parmtag	{ "spare_category" "Shading" } 	    } 	    parm { 		name	"vm_matte" 		label	"Matte shading" 		type	toggle 		default	{ "0" } 		range	{ 0 1 } 		export	none 		parmtag	{ "spare_category" "Shading" } 	    } 	    parm { 		name	"vm_rayshade" 		label	"Raytrace Shading" 		type	toggle 		default	{ "0" } 		range	{ 0 1 } 		export	none 		parmtag	{ "spare_category" "Shading" } 	    } 	}  	group { 	    name	"folder0_1" 	    label	"Sampling"  	    parm { 		name	"geo_velocityblur" 		label	"Geometry Velocity Blur" 		type	toggle 		default	{ "0" } 		disablewhen	"{ allowmotionblur == 0 }" 		range	{ 0 1 } 		export	none 		parmtag	{ "spare_category" "Sampling" } 	    } 	}  	group { 	    name	"folder0_2" 	    label	"Dicing"  	    parm { 		name	"vm_shadingquality" 		label	"Shading Quality" 		type	float 		default	{ "1" } 		range	{ 0 10 } 		export	none 		parmtag	{ "spare_category" "Dicing" } 	    } 	    parm { 		name	"vm_flatness" 		label	"Dicing Flatness" 		type	float 		default	{ "0.05" } 		range	{ 0 1 } 		export	none 		parmtag	{ "spare_category" "Dicing" } 	    } 	    parm { 		name	"vm_raypredice" 		label	"Ray Predicing" 		type	integer 		default	{ "0" } 		menu	{ 		    "0"	"Disable Predicing" 		    "1"	"Full Predicing" 		    "2"	"Precompute Bounds" 		} 		range	{ 0 10 } 		export	none 		parmtag	{ "spare_category" "Dicing" } 	    } 	    parm { 		name	"vm_curvesurface" 		label	"Shade Curves As Surfaces" 		type	toggle 		default	{ "0" } 		range	{ 0 1 } 		export	none 		parmtag	{ "spare_category" "Dicing" } 	    } 	}  	group { 	    name	"folder0_3" 	    label	"Geometry"  	    parm { 		name	"vm_rmbackface" 		label	"Backface Removal" 		type	toggle 		default	{ "0" } 		range	{ 0 1 } 		export	none 		parmtag	{ "spare_category" "Geometry" } 	    } 	    parm { 		name	"shop_geometrypath" 		label	"Procedural Shader" 		type	oppath 		default	{ "" } 		range	{ 0 1 } 		export	none 		parmtag	{ "opfilter" "!!SHOP/GEOMETRY!!" } 		parmtag	{ "oprelative" "." } 		parmtag	{ "spare_category" "Geometry" } 	    } 	    parm { 		name	"vm_forcegeometry" 		label	"Force Procedural Geometry Output" 		type	toggle 		default	{ "1" } 		range	{ 0 1 } 		export	none 		parmtag	{ "spare_category" "Geometry" } 	    } 	    parm { 		name	"vm_rendersubdcurves" 		label	"Render Polygon Curves As Subdivision (Mantra)" 		type	toggle 		default	{ "0" } 		range	{ 0 1 } 		export	none 		parmtag	{ "spare_category" "Geometry" } 	    } 	    parm { 		name	"vm_renderpoints" 		label	"Render As Points (Mantra)" 		type	integer 		default	{ "2" } 		menu	{ 		    "0"	"No Point Rendering" 		    "1"	"Render Only Points" 		    "2"	"Render Unconnected Points" 		} 		range	{ 0 10 } 		export	none 		parmtag	{ "spare_category" "Geometry" } 	    } 	    parm { 		name	"vm_renderpointsas" 		label	"Render Points As (Mantra)" 		type	integer 		default	{ "0" } 		disablewhen	"{ vm_renderpoints == 0 }" 		menu	{ 		    "0"	"Spheres" 		    "1"	"Circles" 		} 		range	{ 0 10 } 		export	none 		parmtag	{ "spare_category" "Geometry" } 	    } 	    parm { 		name	"vm_usenforpoints" 		label	"Use N For Point Rendering" 		type	toggle 		default	{ "0" } 		disablewhen	"{ vm_renderpoints == 0 }" 		range	{ 0 1 } 		export	none 		parmtag	{ "spare_category" "Geometry" } 	    } 	    parm { 		name	"vm_pointscale" 		label	"Point Scale" 		type	float 		default	{ "1" } 		disablewhen	"{ vm_renderpoints == 0 }" 		range	{ 0! 10 } 		export	none 		parmtag	{ "spare_category" "Geometry" } 	    } 	    parm { 		name	"vm_pscalediameter" 		label	"Treat Point Scale as Diameter Instead of Radius" 		type	toggle 		default	{ "0" } 		range	{ 0 1 } 		export	none 		parmtag	{ "spare_category" "Geometry" } 	    } 	    parm { 		name	"vm_metavolume" 		label	"Metaballs as Volume" 		type	toggle 		default	{ "0" } 		range	{ 0 1 } 		export	none 		parmtag	{ "spare_category" "Geometry" } 	    } 	    parm { 		name	"vm_coving" 		label	"Coving" 		type	integer 		default	{ "1" } 		menu	{ 		    "0"	"Disable Coving" 		    "1"	"Coving for displacement/sub-d" 		    "2"	"Coving for all primitives" 		} 		range	{ 0 10 } 		export	none 		parmtag	{ "spare_category" "Geometry" } 	    } 	    parm { 		name	"vm_materialoverride" 		label	"Material Override" 		type	string 		default	{ "compact" } 		menu	{ 		    "none"	"Disabled" 		    "full"	"Evaluate for Each Primitve/Point" 		    "compact"	"Evaluate Once" 		} 		range	{ 0 1 } 		export	none 		parmtag	{ "spare_category" "Geometry" } 	    } 	    parm { 		name	"vm_computeN" 		label	"Automatically Compute Normals" 		type	toggle 		default	{ "1" } 		range	{ 0 1 } 		export	none 		parmtag	{ "spare_category" "Geometry" } 	    } 	    parm { 		name	"vm_overridedetail" 		label	"Ignore Geometry Attribute Shaders" 		type	toggle 		default	{ "0" } 		range	{ 0 1 } 		export	none 		parmtag	{ "spare_category" "Geometry" } 	    } 	}      }      group { 	name	"stdswitcher5_3" 	label	"Misc"  	parm { 	    name	"use_dcolor" 	    baseparm 	    label	"Set Wireframe Color" 	    export	none 	} 	parm { 	    name	"dcolor" 	    baseparm 	    label	"Wireframe Color" 	    export	none 	} 	parm { 	    name	"picking" 	    baseparm 	    label	"Viewport Selecting Enabled" 	    export	none 	} 	parm { 	    name	"pickscript" 	    baseparm 	    label	"Select Script" 	    export	none 	} 	parm { 	    name	"caching" 	    baseparm 	    label	"Cache Object Transform" 	    export	none 	} 	parm { 	    name	"vport_shadeopen" 	    baseparm 	    label	"Shade Open Curves In Viewport" 	    export	none 	} 	parm { 	    name	"vport_displayassubdiv" 	    baseparm 	    label	"Display as Subdivision in Viewport" 	    invisible 	    export	none 	} 	parm { 	    name	"vport_onionskin" 	    baseparm 	    label	"Onion Skinning" 	    export	none 	}     }  ' container
opset -S on container
opparm -V 15.0.416 container stdswitcher ( 0 0 0 0 ) keeppos ( off ) childcomp ( off ) pre_xform ( clean ) xOrd ( srt ) rOrd ( xyz ) t ( 0 0 0 ) r ( 0 0 0 ) s ( 1 1 1 ) p ( 0 0 0 ) scale ( 1 ) lookatpath ( "" ) lookupobjpath ( "" ) lookup ( on ) pathobjpath ( "" ) roll ( 0 ) pos ( 0 ) uparmtype ( arc ) pathorient ( 1 ) up ( 0 1 0 ) bank ( 0 ) shop_materialpath ( "" ) shop_materialopts ( override ) tdisplay ( off ) display ( 1 ) use_dcolor ( off ) dcolor ( 1 1 1 ) picking ( on ) pickscript ( "" ) caching ( off ) vport_shadeopen ( off ) vport_displayassubdiv ( off ) vport_onionskin ( off ) stdswitcher5 ( 0 0 0 0 ) viewportlod ( full ) vm_rendervisibility ( * ) vm_rendersubd ( off ) vm_subdstyle ( mantra_catclark ) vm_subdgroup ( "" ) folder0 ( 0 0 0 0 ) categories ( "" ) reflectmask ( * ) refractmask ( * ) lightmask ( * ) vm_volumefilter ( box ) vm_volumefilterwidth ( 1 ) vm_matte ( off ) vm_rayshade ( off ) geo_velocityblur ( off ) vm_shadingquality ( 1 ) vm_flatness ( 0.050000000000000003 ) vm_raypredice ( 0 ) vm_curvesurface ( off ) vm_rmbackface ( off ) shop_geometrypath ( "" ) vm_forcegeometry ( on ) vm_rendersubdcurves ( off ) vm_renderpoints ( 2 ) vm_renderpointsas ( 0 ) vm_usenforpoints ( off ) vm_pointscale ( 1 ) vm_pscalediameter ( off ) vm_metavolume ( off ) vm_coving ( 1 ) vm_materialoverride ( compact ) vm_computeN ( on ) vm_overridedetail ( off )
chlock container -*
chautoscope container -* +tx +ty +tz +rx +ry +rz +sx +sy +sz
opcolor -c 0.80000001192092896 0.80000001192092896 0.80000001192092896 container
opset -d off -r off -h off -f off -y off -t off -l off -s off -u off -c off -e on -b off -x off container
opexprlanguage -s hscript container
opuserdata -n '___Version___' -v '15.0.416' container
opcf container

# Node tube (Sop/tube)
opadd -e -n tube tube
oplocate -x -2.5721799999999999 -y -0.58389199999999997 tube
opspareds "" tube
opparm -V 15.0.416 tube type ( mesh ) surftype ( quads ) orient ( y ) cap ( on ) consolidatepts ( on ) vertexnormals ( off ) t ( 0 0 0 ) rad ( 1 1 ) radscale ( 45 ) height ( 45 ) rows ( 2 ) cols ( 40 ) orderu ( 4 ) orderv ( 2 ) imperfect ( on )
chlock tube -*
chautoscope tube -*
opcolor -c 0.80000001192092896 0.80000001192092896 0.80000001192092896 tube
opset -d off -r off -h off -f off -y off -t off -l off -s off -u off -c off -e on -b off tube
opexprlanguage -s hscript tube
opuserdata -n '___Version___' -v '15.0.416' tube

# Node delete_top (Sop/delete)
opadd -e -n delete delete_top
oplocate -x 2.02685 -y -1.3827 delete_top
opspareds "" delete_top
chblockbegin
chadd -t 0 0 delete_top filter
chkey -t 0 -v 1 -m 0 -a 0 -A 0 -T a  -F '$PR == 1' delete_top/filter
chadd -t 0 0 delete_top rangeend
chkey -t 0 -v 0 -m 0 -a 0 -A 0 -T a  -F '$N' delete_top/rangeend
chblockend
opparm -V 15.0.416 delete_top group ( "" ) negate ( dele ) entity ( primitive ) geotype ( all ) stdswitcher ( 0 0 0 0 ) affectnumber ( on ) groupop ( filter ) filter ( filter ) pattern ( !* ) range ( 0 rangeend ) select ( 1 2 ) affectvolume ( off ) boundtype ( usebbox ) size ( 1 1 1 ) t ( 0 0 0 ) affectnormal ( off ) dir ( 0 0 1 ) angle ( 180 ) camerapath ( "" ) affectdegenerate ( off ) degenerate ( off ) zaf ( off ) doopen ( off ) tol ( 0.001 ) removegrp ( on ) keeppoints ( off )
chlock delete_top -*
chautoscope delete_top -*
opcolor -c 0.80000001192092896 0.80000001192092896 0.80000001192092896 delete_top
opset -d off -r off -h off -f off -y off -t off -l off -s off -u off -c off -e on -b off delete_top
opexprlanguage -s hscript delete_top
opuserdata -n '___Version___' -v '15.0.416' delete_top

# Node facet_normals (Sop/facet)
opadd -e -n facet facet_normals
oplocate -x 2.02685 -y -2.1813600000000002 facet_normals
opspareds "" facet_normals
opparm -V 15.0.416 facet_normals group ( "" ) prenml ( off ) unit ( off ) unique ( off ) cons ( none ) dist ( 0.001 ) accurate ( on ) inline ( off ) inlinedist ( 0.001 ) orientPolys ( off ) cusp ( off ) angle ( 20 ) remove ( off ) mkplanar ( off ) postnml ( on ) reversenml ( off )
chlock facet_normals -*
chautoscope facet_normals -*
opcolor -c 0.80000001192092896 0.80000001192092896 0.80000001192092896 facet_normals
opset -d on -r on -h off -f off -y off -t off -l off -s off -u off -c off -e on -b off facet_normals
opexprlanguage -s hscript facet_normals
opuserdata -n '___Version___' -v '15.0.416' facet_normals

# Node OUT_mesh (Sop/null)
opadd -e -n null OUT_mesh
oplocate -x 2.02685 -y -3.1410999999999998 OUT_mesh
opspareds "" OUT_mesh
opparm -V 15.0.416 OUT_mesh copyinput ( on ) cacheinput ( off )
chlock OUT_mesh -*
chautoscope OUT_mesh -*
opcolor -c 0.80000001192092896 0.80000001192092896 0.80000001192092896 OUT_mesh
opset -d off -r off -h off -f off -y off -t off -l off -s off -u off -c off -e on -b off OUT_mesh
opexprlanguage -s hscript OUT_mesh
opuserdata -n '___Version___' -v '15.0.416' OUT_mesh

# Node OUT_volume (Sop/null)
opadd -e -n null OUT_volume
oplocate -x -9.7688500000000005 -y -3.1813600000000002 OUT_volume
opspareds "" OUT_volume
opparm -V 15.0.416 OUT_volume copyinput ( on ) cacheinput ( off )
chlock OUT_volume -*
chautoscope OUT_volume -*
opcolor -c 0.80000001192092896 0.80000001192092896 0.80000001192092896 OUT_volume
opset -d off -r off -h off -f off -y off -t off -l off -s off -u off -c off -e on -b off OUT_volume
opexprlanguage -s hscript OUT_volume
opuserdata -n '___Version___' -v '15.0.416' OUT_volume

# Node vdbfrompolygons_volumeSDFHighRes (Sop/vdbfrompolygons)
opadd -e -n vdbfrompolygons vdbfrompolygons_volumeSDFHighRes
oplocate -x -2.5721799999999999 -y -2.1798700000000002 vdbfrompolygons_volumeSDFHighRes
opspareds "" vdbfrompolygons_volumeSDFHighRes
opparm vdbfrompolygons_volumeSDFHighRes  numattrib ( 0 )
opparm -V 15.0.416 vdbfrompolygons_volumeSDFHighRes voxelsize ( 0.5 ) group ( "" ) builddistance ( on ) distancename ( surface ) buildfog ( off ) fogname ( density ) useworldspaceunits ( off ) exteriorbandvoxels ( 3 ) interiorbandvoxels ( 3 ) exteriorband ( 1 ) interiorband ( 1 ) fillinterior ( off ) unsigneddist ( off ) numattrib ( 0 )
chlock vdbfrompolygons_volumeSDFHighRes -*
chautoscope vdbfrompolygons_volumeSDFHighRes -*
opcolor -c 0.80000001192092896 0.80000001192092896 0.80000001192092896 vdbfrompolygons_volumeSDFHighRes
opset -d off -r off -h off -f off -y off -t off -l off -s off -u off -c off -e on -b off vdbfrompolygons_volumeSDFHighRes
opexprlanguage -s hscript vdbfrompolygons_volumeSDFHighRes
opuserdata -n '___Version___' -v '15.0.416' vdbfrompolygons_volumeSDFHighRes

# Node OUT_SDFHighRes (Sop/null)
opadd -e -n null OUT_SDFHighRes
oplocate -x -2.5721799999999999 -y -3.1828599999999998 OUT_SDFHighRes
opspareds "" OUT_SDFHighRes
opparm -V 15.0.416 OUT_SDFHighRes copyinput ( on ) cacheinput ( off )
chlock OUT_SDFHighRes -*
chautoscope OUT_SDFHighRes -*
opcolor -c 0.80000001192092896 0.80000001192092896 0.80000001192092896 OUT_SDFHighRes
opset -d off -r off -h off -f off -y off -t off -l off -s off -u off -c off -e on -b off OUT_SDFHighRes
opexprlanguage -s hscript OUT_SDFHighRes
opuserdata -n '___Version___' -v '15.0.416' OUT_SDFHighRes

# Node vdbfrompolygons_volumeSDFLowRes (Sop/vdbfrompolygons)
opadd -e -n vdbfrompolygons vdbfrompolygons_volumeSDFLowRes
oplocate -x -7.1688499999999999 -y -2.1798700000000002 vdbfrompolygons_volumeSDFLowRes
opspareds "" vdbfrompolygons_volumeSDFLowRes
opparm vdbfrompolygons_volumeSDFLowRes  numattrib ( 0 )
opparm -V 15.0.416 vdbfrompolygons_volumeSDFLowRes voxelsize ( 2 ) group ( "" ) builddistance ( on ) distancename ( surface ) buildfog ( off ) fogname ( density ) useworldspaceunits ( off ) exteriorbandvoxels ( 3 ) interiorbandvoxels ( 3 ) exteriorband ( 1 ) interiorband ( 1 ) fillinterior ( off ) unsigneddist ( off ) numattrib ( 0 )
chlock vdbfrompolygons_volumeSDFLowRes -*
chautoscope vdbfrompolygons_volumeSDFLowRes -*
opcolor -c 0.80000001192092896 0.80000001192092896 0.80000001192092896 vdbfrompolygons_volumeSDFLowRes
opset -d off -r off -h off -f off -y off -t off -l off -s off -u off -c off -e on -b off vdbfrompolygons_volumeSDFLowRes
opexprlanguage -s hscript vdbfrompolygons_volumeSDFLowRes
opuserdata -n '___Version___' -v '15.0.416' vdbfrompolygons_volumeSDFLowRes

# Node OUT_SDFLowRes (Sop/null)
opadd -e -n null OUT_SDFLowRes
oplocate -x -7.1688499999999999 -y -3.1828599999999998 OUT_SDFLowRes
opspareds "" OUT_SDFLowRes
opparm -V 15.0.416 OUT_SDFLowRes copyinput ( on ) cacheinput ( off )
chlock OUT_SDFLowRes -*
chautoscope OUT_SDFLowRes -*
opcolor -c 0.80000001192092896 0.80000001192092896 0.80000001192092896 OUT_SDFLowRes
opset -d off -r off -h off -f off -y off -t off -l off -s off -u off -c off -e on -b off OUT_SDFLowRes
opexprlanguage -s hscript OUT_SDFLowRes
opuserdata -n '___Version___' -v '15.0.416' OUT_SDFLowRes
oporder -e tube delete_top facet_normals OUT_mesh OUT_volume vdbfrompolygons_volumeSDFHighRes OUT_SDFHighRes vdbfrompolygons_volumeSDFLowRes OUT_SDFLowRes 
opcf ..

# Node controls (Object/null)
opadd -e -n null controls
oplocate -x 3.2366700000000002 -y 7.0132000000000003 controls
opspareds '    parm { 	name	"keeppos" 	baseparm 	label	"Keep Position When Parenting" 	invisible 	export	none     }     parm { 	name	"number" 	label	"Number" 	type	integer 	default	{ "0" } 	range	{ 0 10 } 	export	none     }     parm { 	name	"childcomp" 	baseparm 	label	"Child Compensation" 	invisible 	export	none     }     parm { 	name	"pre_xform" 	baseparm 	label	"Pre-transform" 	invisible 	export	none     }     parm { 	name	"xOrd" 	baseparm 	label	"Transform Order" 	invisible 	joinnext 	export	none     }     parm { 	name	"rOrd" 	baseparm 	label	"Rotate Order" 	invisible 	export	none     }     parm { 	name	"t" 	baseparm 	label	"Translate" 	invisible 	export	all     }     parm { 	name	"r" 	baseparm 	label	"Rotate" 	invisible 	export	all     }     parm { 	name	"s" 	baseparm 	label	"Scale" 	invisible 	export	none     }     parm { 	name	"p" 	baseparm 	label	"Pivot" 	invisible 	export	none     }     parm { 	name	"scale" 	baseparm 	label	"Uniform Scale" 	invisible 	export	none     }     parm { 	name	"lookatpath" 	baseparm 	label	"Look At" 	invisible 	export	none     }     parm { 	name	"lookupobjpath" 	baseparm 	label	"Look Up Object" 	invisible 	export	none     }     parm { 	name	"lookup" 	baseparm 	label	"Look At Up Vector" 	invisible 	export	none     }     parm { 	name	"pathobjpath" 	baseparm 	label	"Path Object" 	invisible 	export	none     }     parm { 	name	"roll" 	baseparm 	label	"Roll" 	invisible 	export	none     }     parm { 	name	"pos" 	baseparm 	label	"Position" 	invisible 	export	none     }     parm { 	name	"uparmtype" 	baseparm 	label	"Parameterization" 	invisible 	export	none     }     parm { 	name	"pathorient" 	baseparm 	label	"Orient Along Path" 	invisible 	export	none     }     parm { 	name	"up" 	baseparm 	label	"Orient Up Vector" 	invisible 	export	none     }     parm { 	name	"bank" 	baseparm 	label	"Auto-Bank factor" 	invisible 	export	none     }     parm { 	name	"tdisplay" 	baseparm 	label	"Display" 	invisible 	joinnext 	export	none     }     parm { 	name	"display" 	baseparm 	label	"Display" 	invisible 	export	none     }     parm { 	name	"renderspace" 	baseparm 	label	"Output transform as render space (RIB/IFD)" 	invisible 	export	none     }     parm { 	name	"use_dcolor" 	baseparm 	label	"Set Wireframe Color" 	invisible 	export	none     }     parm { 	name	"dcolor" 	baseparm 	label	"Wireframe Color" 	invisible 	export	none     }     parm { 	name	"picking" 	baseparm 	label	"Viewport Selecting Enabled" 	invisible 	export	none     }     parm { 	name	"pickscript" 	baseparm 	label	"Select Script" 	invisible 	export	none     }     parm { 	name	"caching" 	baseparm 	label	"Cache Object Transform" 	invisible 	export	none     }     parm { 	name	"geoscale" 	baseparm 	label	"Geometry Scale" 	invisible 	export	none     }     parm { 	name	"displayicon" 	baseparm 	label	"Display" 	invisible 	export	none     }     parm { 	name	"controltype" 	baseparm 	label	"Control Type" 	invisible 	export	none     }     parm { 	name	"orientation" 	baseparm 	label	"Orientation" 	invisible 	export	none     }     parm { 	name	"shadedmode" 	baseparm 	label	"Shaded Mode" 	invisible 	export	none     }     parm { 	name	"vport_shadeopen" 	baseparm 	label	"Shade Open Curves In Viewport" 	invisible 	export	none     }     parm { 	name	"vport_displayassubdiv" 	baseparm 	label	"Display as Subdivision in Viewport" 	invisible 	export	none     }     parm { 	name	"shop_materialpath" 	baseparm 	label	"Material" 	invisible 	joinnext 	export	none     }     parm { 	name	"shop_materialopts" 	baseparm 	label	"Options" 	invisible 	export	none     }     parm { 	name	"filmthickness" 	label	"Film Thickness" 	type	float 	default	{ "0" } 	range	{ 0 10 } 	export	none     } ' controls
opset -S on controls
opparm -V 15.0.416 controls stdswitcher ( 0 0 0 ) keeppos ( off ) childcomp ( off ) pre_xform ( clean ) xOrd ( srt ) rOrd ( xyz ) t ( 0 0 0 ) r ( 0 0 0 ) s ( 1 1 1 ) p ( 0 0 0 ) scale ( 1 ) lookatpath ( "" ) lookupobjpath ( "" ) lookup ( on ) pathobjpath ( "" ) roll ( 0 ) pos ( 0 ) uparmtype ( arc ) pathorient ( 1 ) up ( 0 1 0 ) bank ( 0 ) tdisplay ( off ) display ( 1 ) renderspace ( off ) use_dcolor ( on ) dcolor ( 0 0.75 0 ) picking ( on ) pickscript ( "" ) caching ( off ) geoscale ( 1 ) displayicon ( icon ) controltype ( null ) orientation ( xyz ) shadedmode ( off ) vport_shadeopen ( off ) vport_displayassubdiv ( off ) shop_materialpath ( "" ) shop_materialopts ( override ) number ( 100 ) filmthickness ( 0.5 )
chlock controls -*
chautoscope controls -* +tx +ty +tz +rx +ry +rz +sx +sy +sz
opcolor -c 0.66699999570846558 0 0 controls
opset -d on -r off -h off -f off -y on -t off -l off -s off -u off -c off -e on -b off -x off controls
opexprlanguage -s hscript controls
opuserdata -n '___Version___' -v '15.0.416' controls
opcf controls

# Node control1 (Sop/control)
opadd -e -n control control1
oplocate -x 0.5 -y 1 control1
opspareds "" control1
chblockbegin
chadd -t 0 0 control1 colorr
chkey -t 0 -v 0 -m 0 -a 0 -A 0 -T a  -F 'if (ch("../use_dcolor"), ch("../dcolorr"), 0.7)' control1/colorr
chadd -t 0 0 control1 colorg
chkey -t 0 -v 0 -m 0 -a 0 -A 0 -T a  -F 'if (ch("../use_dcolor"), ch("../dcolorg"), 0.7)' control1/colorg
chadd -t 0 0 control1 colorb
chkey -t 0 -v 0 -m 0 -a 0 -A 0 -T a  -F 'if (ch("../use_dcolor"), ch("../dcolorb"), 0.7)' control1/colorb
chadd -t 0 0 control1 scale
chkey -t 0 -v 1 -m 0 -a 0 -A 0 -T a  -F 'ch("../geoscale")' control1/scale
chadd -t 0 0 control1 displayicon
chkey -t 0 -v 0 -m 0 -a 0 -A 0 -T a  -F 'ch("../displayicon")' control1/displayicon
chadd -t 0 0 control1 controltype
chkey -t 0 -v 0 -m 0 -a 0 -A 0 -T a  -F 'ch("../controltype")' control1/controltype
chadd -t 0 0 control1 orientation
chkey -t 0 -v 0 -m 0 -a 0 -A 0 -T a  -F 'ch("../orientation")' control1/orientation
chadd -t 0 0 control1 shadedmode
chkey -t 0 -v 0 -m 0 -a 0 -A 0 -T a  -F 'ch("../shadedmode")' control1/shadedmode
chblockend
opparm -V 15.0.416 control1 color ( colorr colorg colorb ) scale ( scale ) displayicon ( displayicon ) controltype ( controltype ) orientation ( orientation ) shadedmode ( shadedmode )
chlock control1 -*
chautoscope control1 -*
opcolor -c 0.80000001192092896 0.80000001192092896 0.80000001192092896 control1
opset -d on -r on -h off -f off -y off -t off -l off -s off -u off -c off -e on -b off control1
opexprlanguage -s hscript control1
opuserdata -n '___Version___' -v '15.0.416' control1

# Node point1 (Sop/add)
opadd -e -n add point1
oplocate -x 2.5 -y 1 point1
opspareds "" point1
opparm point1  points ( 1 ) prims ( 1 )
opparm -V 15.0.416 point1 stdswitcher ( 0 0 0 ) keep ( off ) points ( 1 ) remove ( off ) switcher ( 0 0 ) prims ( 1 ) group ( "" ) add ( all ) inc ( 2 ) attrname ( "" ) closedall ( off ) addparticlesystem ( off ) particlegroup ( "" ) appendunusedtoparticlesystem ( off ) usept0 ( on ) pt0 ( 0 0 0 ) weight0 ( 1 ) prim0 ( "" ) closed0 ( off )
chlock point1 -*
chautoscope point1 -*
opcolor -c 0.80000001192092896 0.80000001192092896 0.80000001192092896 point1
opset -d off -r off -h off -f off -y off -t off -l off -s off -u off -c off -e on -b off point1
opexprlanguage -s hscript point1
opuserdata -n '___Version___' -v '15.0.416' point1
oporder -e control1 point1 
opcf ..

# Node ipr_camera (Object/cam)
opadd -e -n cam ipr_camera
oplocate -x 0 -y 0 ipr_camera
opspareds '    group { 	name	"stdswitcher3" 	label	"Transform"  	parm { 	    name	"keeppos" 	    baseparm 	    label	"Keep Position When Parenting" 	    export	none 	} 	parm { 	    name	"childcomp" 	    baseparm 	    label	"Child Compensation" 	    export	none 	} 	parm { 	    name	"pre_xform" 	    baseparm 	    label	"Pre-transform" 	    export	none 	} 	parm { 	    name	"xOrd" 	    baseparm 	    label	"Transform Order" 	    joinnext 	    export	none 	} 	parm { 	    name	"rOrd" 	    baseparm 	    label	"Rotate Order" 	    export	none 	} 	parm { 	    name	"t" 	    baseparm 	    label	"Translate" 	    export	all 	} 	parm { 	    name	"r" 	    baseparm 	    label	"Rotate" 	    export	all 	} 	parm { 	    name	"s" 	    baseparm 	    label	"Scale" 	    invisible 	    export	none 	} 	parm { 	    name	"p" 	    baseparm 	    label	"Pivot" 	    export	none 	} 	parm { 	    name	"scale" 	    baseparm 	    label	"Uniform Scale" 	    invisible 	    export	none 	} 	parm { 	    name	"lookatpath" 	    baseparm 	    label	"Look At" 	    export	none 	} 	parm { 	    name	"lookupobjpath" 	    baseparm 	    label	"Look Up Object" 	    export	none 	} 	parm { 	    name	"lookup" 	    baseparm 	    label	"Look At Up Vector" 	    export	none 	} 	parm { 	    name	"pathobjpath" 	    baseparm 	    label	"Path Object" 	    export	none 	} 	parm { 	    name	"roll" 	    baseparm 	    label	"Roll" 	    export	none 	} 	parm { 	    name	"pos" 	    baseparm 	    label	"Position" 	    export	none 	} 	parm { 	    name	"uparmtype" 	    baseparm 	    label	"Parameterization" 	    export	none 	} 	parm { 	    name	"pathorient" 	    baseparm 	    label	"Orient Along Path" 	    export	none 	} 	parm { 	    name	"up" 	    baseparm 	    label	"Orient Up Vector" 	    export	none 	} 	parm { 	    name	"bank" 	    baseparm 	    label	"Auto-Bank factor" 	    export	none 	}     }      group { 	name	"stdswitcher3_1" 	label	"Render"  	parm { 	    name	"tdisplay" 	    baseparm 	    label	"Display" 	    joinnext 	    export	none 	} 	parm { 	    name	"display" 	    baseparm 	    label	"Display" 	    export	none 	} 	parm { 	    name	"use_dcolor" 	    baseparm 	    label	"Set Wireframe Color" 	    export	none 	} 	parm { 	    name	"dcolor" 	    baseparm 	    label	"Wireframe Color" 	    export	none 	} 	parm { 	    name	"picking" 	    baseparm 	    label	"Viewport Selecting Enabled" 	    export	none 	} 	parm { 	    name	"pickscript" 	    baseparm 	    label	"Select Script" 	    export	none 	} 	parm { 	    name	"caching" 	    baseparm 	    label	"Cache Object Transform" 	    export	none 	}     }      group { 	name	"stdswitcher3_2" 	label	"View"  	parm { 	    name	"iconscale" 	    label	"Icon Scale" 	    type	float 	    default	{ "1" } 	    range	{ 0.001 10 } 	    export	none 	    parmtag	{ "spare_category" "View" } 	} 	parm { 	    name	"res" 	    label	"Resolution" 	    type	intvector2 	    joinnext 	    size	2 	    default	{ "1280" "720" } 	    range	{ -1 1 } 	    export	none 	    parmtag	{ "cook_dependent" "1" } 	    parmtag	{ "spare_category" "View" } 	} 	parm { 	    name	"resMenu" 	    label	"Choose Resolution" 	    type	button 	    nolabel 	    default	{ "0" } 	    menumini	{ 		[ "echo `pythonexprs(\\"__import__(\'toolutils\').parseDialogScriptMenu(\'FBres\')\\")`" ] 	    } 	    range	{ 0 1 } 	    export	none 	    parmtag	{ "script_callback" "opparm . res ( `arg(\\"$script_value\\", 0)` `arg(\\"$script_value\\", 1)` aspect ( `arg(\\"$script_value\\", 2)` )" } 	    parmtag	{ "spare_category" "View" } 	} 	parm { 	    name	"aspect" 	    label	"Pixel Aspect Ratio" 	    type	float 	    default	{ "1" } 	    range	{ 0.05 2 } 	    export	none 	    parmtag	{ "spare_category" "View" } 	} 	parm { 	    name	"projection" 	    label	"Projection" 	    type	ordinal 	    default	{ "perspective" } 	    menu	{ 		"perspective"	"Perspective" 		"ortho"	"Orthographic" 		"sphere"	"Polar (panoramic)" 		"cylinder"	"Cylindrical (panoramic)" 		"lens"	"Lens Shader" 	    } 	    range	{ 0 1 } 	    export	none 	    parmtag	{ "spare_category" "View" } 	} 	parm { 	    name	"vm_lensshader" 	    label	"Lens Shader" 	    type	oppath 	    default	{ "" } 	    disablewhen	"{ projection != lens }" 	    range	{ 0 1 } 	    export	none 	    parmtag	{ "oprelative" "." } 	    parmtag	{ "spare_category" "View" } 	} 	parm { 	    name	"focal" 	    label	"Focal Length" 	    type	float 	    joinnext 	    default	{ "50" } 	    range	{ 1 100 } 	    export	none 	} 	parm { 	    name	"focalunits" 	    label	"Focal Units" 	    type	string 	    default	{ "mm" } 	    menu	{ 		"mm"	"millimeters" 		"m"	"meters" 		"nm"	"nanometers" 		"in"	"inches" 		"ft"	"feet" 	    } 	    range	{ 0 1 } 	    export	none 	} 	parm { 	    name	"aperture" 	    label	"Aperture" 	    type	float 	    default	{ "41.4214" } 	    range	{ 1 100 } 	    export	none 	    parmtag	{ "spare_category" "View" } 	} 	parm { 	    name	"orthowidth" 	    label	"Ortho Width" 	    type	float 	    default	{ "2" } 	    disablewhen	"{ projection != ortho }" 	    range	{ 0.001 10 } 	    export	none 	    parmtag	{ "spare_category" "View" } 	} 	parm { 	    name	"near" 	    label	"Near Clipping" 	    type	float 	    default	{ "0.001" } 	    range	{ 0 10 } 	    export	none 	    parmtag	{ "spare_category" "View" } 	} 	parm { 	    name	"far" 	    label	"Far Clipping" 	    type	float 	    default	{ "10000" } 	    range	{ 1 10000 } 	    export	none 	    parmtag	{ "spare_category" "View" } 	} 	parm { 	    name	"vm_bgenable" 	    label	"Enable Background Image" 	    type	toggle 	    default	{ "1" } 	    range	{ 0 1 } 	    export	none 	    parmtag	{ "spare_category" "View" } 	} 	parm { 	    name	"vm_background" 	    label	"Background Image" 	    type	file 	    default	{ "" } 	    disablewhen	"{ vm_bgenable == 0 }" 	    range	{ 0 1 } 	    export	none 	    parmtag	{ "filechooser_mode" "read" } 	    parmtag	{ "spare_category" "View" } 	} 	parm { 	    name	"win" 	    label	"Screen Window X/Y" 	    type	vector2 	    size	2 	    default	{ "0" "0" } 	    disablewhen	"{ winmask != \\"\\" }" 	    range	{ -1 1 } 	    export	none 	} 	parm { 	    name	"winsize" 	    label	"Screen Window Size" 	    type	vector2 	    size	2 	    default	{ "1" "1" } 	    disablewhen	"{ winmask != \\"\\" }" 	    range	{ 0.01 10 } 	    export	none 	} 	parm { 	    name	"winmask" 	    label	"Screen Window Mask" 	    type	oplist 	    default	{ "" } 	    disablewhen	"{ projection != ortho projection != perspective }" 	    range	{ 0 1 } 	    export	none 	    parmtag	{ "opexpand" "1" } 	    parmtag	{ "opfilter" "!!OBJ/GEOMETRY!!" } 	    parmtag	{ "oprelative" "/obj" } 	} 	parm { 	    name	"cropl" 	    label	"Left Crop" 	    type	float 	    default	{ "0" } 	    disablewhen	"{ cropmask != \\"\\" }" 	    range	{ 0 1 } 	    export	none 	} 	parm { 	    name	"cropr" 	    label	"Right Crop" 	    type	float 	    default	{ "1" } 	    disablewhen	"{ cropmask != \\"\\" }" 	    range	{ 0 1 } 	    export	none 	} 	parm { 	    name	"cropb" 	    label	"Bottom Crop" 	    type	float 	    default	{ "0" } 	    disablewhen	"{ cropmask != \\"\\" }" 	    range	{ 0 1 } 	    export	none 	} 	parm { 	    name	"cropt" 	    label	"Top Crop" 	    type	float 	    default	{ "1" } 	    disablewhen	"{ cropmask != \\"\\" }" 	    range	{ 0 1 } 	    export	none 	} 	parm { 	    name	"cropmask" 	    label	"Crop Mask" 	    type	oplist 	    default	{ "" } 	    disablewhen	"{ projection != ortho projection != perspective }" 	    range	{ 0 1 } 	    export	none 	    parmtag	{ "opexpand" "1" } 	    parmtag	{ "opfilter" "!!OBJ/GEOMETRY!!" } 	    parmtag	{ "oprelative" "/obj" } 	}     }      group { 	name	"stdswitcher3_3" 	label	"Sampling"  	parm { 	    name	"shutter" 	    label	"Shutter Time" 	    type	float 	    default	{ "0.5" } 	    disablewhen	"{ allowmotionblur == 0 }" 	    range	{ 0 1 } 	    export	none 	    parmtag	{ "spare_category" "Sampling" } 	} 	parm { 	    name	"focus" 	    label	"Focus Distance" 	    type	float 	    default	{ "5" } 	    disablewhen	"{ vm_dof == 0 }" 	    range	{ 0.001 1000 } 	    export	none 	    parmtag	{ "spare_category" "Sampling" } 	} 	parm { 	    name	"fstop" 	    label	"F-Stop" 	    type	log 	    default	{ "5.6" } 	    disablewhen	"{ vm_dof == 0 }" 	    range	{ 1.4 22 } 	    export	none 	    parmtag	{ "spare_category" "Sampling" } 	} 	parm { 	    name	"vm_bokeh" 	    label	"Bokeh" 	    type	string 	    default	{ "radial" } 	    menureplace	{ 		"radial"	"Radial Bokeh" 		"file"	"Image File Bokeh" 		"box"	"Box Filter Bokeh" 		"null"	"Disable Bokeh" 	    } 	    range	{ 0 1 } 	    export	none 	    parmtag	{ "spare_category" "Sampling" } 	} 	parm { 	    name	"vm_bokehfile" 	    label	"Bokeh Image File" 	    type	image 	    default	{ "default.pic" } 	    disablewhen	"{ vm_bokeh != file }" 	    range	{ 0 1 } 	    export	none 	    parmtag	{ "filechooser_mode" "read" } 	    parmtag	{ "spare_category" "Sampling" } 	} 	parm { 	    name	"vm_bokehrotation" 	    label	"Bokeh Rotation" 	    type	float 	    default	{ "0" } 	    disablewhen	"{ vm_bokeh != file }" 	    range	{ 0 360 } 	    export	none 	    parmtag	{ "spare_category" "Sampling" } 	}     }  ' ipr_camera
chblockbegin
chadd -t 0 0 ipr_camera sx
chkey -t 0 -v 1 -m 0 -a 0 -A 0 -T a  -F 'lock(1)' ipr_camera/sx
chadd -t 0 0 ipr_camera sy
chkey -t 0 -v 1 -m 0 -a 0 -A 0 -T a  -F 'lock(1)' ipr_camera/sy
chadd -t 0 0 ipr_camera sz
chkey -t 0 -v 1 -m 0 -a 0 -A 0 -T a  -F 'lock(1)' ipr_camera/sz
chadd -t 0 0 ipr_camera scale
chkey -t 0 -v 1 -m 0 -a 0 -A 0 -T a  -F 'lock(1)' ipr_camera/scale
chblockend
opset -S on ipr_camera
opparm -V 15.0.416 ipr_camera stdswitcher ( 0 0 ) keeppos ( off ) childcomp ( off ) pre_xform ( clean ) xOrd ( srt ) rOrd ( xyz ) t ( 2.8155298286262282 2.2988704785733414 2.8155298286262287 ) r ( -29.999999999999993 44.999999999999993 0 ) s ( sx sy sz ) p ( 0 0 0 ) scale ( scale ) lookatpath ( "" ) lookupobjpath ( "" ) lookup ( on ) pathobjpath ( "" ) roll ( 0 ) pos ( 0 ) uparmtype ( arc ) pathorient ( 1 ) up ( 0 1 0 ) bank ( 0 ) tdisplay ( off ) display ( 1 ) use_dcolor ( off ) dcolor ( 1 1 1 ) picking ( on ) pickscript ( "" ) caching ( off ) stdswitcher3 ( 0 0 0 0 ) iconscale ( 1 ) res ( 1280 720 ) resMenu ( "640 480 1" ) aspect ( 1 ) projection ( perspective ) vm_lensshader ( "" ) focal ( 50 ) focalunits ( mm ) aperture ( 41.421398162841797 ) orthowidth ( 2.980469213454727 ) near ( 0.10000000149011612 ) far ( 3902.7242410802496 ) vm_bgenable ( on ) vm_background ( "" ) win ( 0 0 ) winsize ( 1 1 ) winmask ( "" ) cropl ( 0 ) cropr ( 1 ) cropb ( 0 ) cropt ( 1 ) cropmask ( "" ) shutter ( 0.5 ) focus ( 5 ) fstop ( 5.5999999999999996 ) vm_bokeh ( radial ) vm_bokehfile ( default.pic ) vm_bokehrotation ( 0 )
chlock ipr_camera -*
chautoscope ipr_camera -* +tx +ty +tz +rx +ry +rz +sx +sy +sz
opcolor -c 0.80000001192092896 0.80000001192092896 0.80000001192092896 ipr_camera
opset -d off -r off -h off -f off -y off -t off -l off -s off -u off -c off -e off -b off -x off ipr_camera
opexprlanguage -s hscript ipr_camera
opcf ipr_camera

# Node camOrigin (Sop/add)
opadd -e -n add camOrigin
oplocate -x 2 -y 3 camOrigin
opspareds "" camOrigin
opparm camOrigin  points ( 1 ) prims ( 1 )
opparm -V 15.0.416 camOrigin stdswitcher ( 0 0 0 ) keep ( off ) points ( 1 ) remove ( off ) switcher ( 0 0 ) prims ( 1 ) group ( "" ) add ( all ) inc ( 2 ) attrname ( "" ) closedall ( off ) addparticlesystem ( off ) particlegroup ( "" ) appendunusedtoparticlesystem ( off ) usept0 ( on ) pt0 ( 0 0 0 ) weight0 ( 1 ) prim0 ( "" ) closed0 ( off )
chlock camOrigin -*
chautoscope camOrigin -*
opcolor -c 0.80000001192092896 0.80000001192092896 0.80000001192092896 camOrigin
opset -d off -r off -h off -f off -y off -t off -l off -s off -u off -c off -e on -b off camOrigin
opexprlanguage -s hscript camOrigin

# Node file1 (Sop/file)
opadd -e -n file file1
oplocate -x 0.17999999999999999 -y 3 file1
opspareds "" file1
opparm -V 15.0.416 file1 filemode ( read ) file ( defcam.bgeo ) reload ( 0 ) objpattern ( * ) geodatapath ( "" ) missingframe ( error ) loadtype ( full ) packedviewedit ( unchanged ) viewportlod ( box ) packexpanded ( on ) delayload ( off ) mkpath ( on ) cachesize ( 0 ) prefetch ( off )
chlock file1 -*
chautoscope file1 -*
opcolor -c 0.80000001192092896 0.80000001192092896 0.80000001192092896 file1
opset -d off -r off -h off -f off -y off -t off -l off -s off -u off -c off -e on -b off file1
opexprlanguage -s hscript file1

# Node xform1 (Sop/xform)
opadd -e -n xform xform1
oplocate -x 0.17999999999999999 -y 1.5 xform1
opspareds "" xform1
chblockbegin
chadd -t 0 0 xform1 scale
chkey -t 0 -v 0 -m 0 -a 0 -A 0 -T a  -F 'property("../iconscale", 1)' xform1/scale
chblockend
opparm -V 15.0.416 xform1 group ( "" ) grouptype ( guess ) xOrd ( srt ) rOrd ( xyz ) t ( 0 0 0 ) r ( 0 0 0 ) s ( 1 1 1 ) shear ( 0 0 0 ) p ( 0 0 0 ) scale ( scale ) movecentroid ( 0 ) attribs ( * ) updatenmls ( off ) updateaffectednmls ( on ) vlength ( on ) invertxform ( off )
chlock xform1 -*
chautoscope xform1 -*
opcolor -c 0.80000001192092896 0.80000001192092896 0.80000001192092896 xform1
opset -d on -r on -h off -f off -y off -t off -l off -s off -u off -c off -e on -b off xform1
opexprlanguage -s hscript xform1
oporder -e camOrigin file1 xform1 
opcf ..

# Node ipr_camera1 (Object/cam)
opadd -e -n cam ipr_camera1
oplocate -x 0 -y 0 ipr_camera1
opspareds '    group { 	name	"stdswitcher3" 	label	"Transform"  	parm { 	    name	"keeppos" 	    baseparm 	    label	"Keep Position When Parenting" 	    export	none 	} 	parm { 	    name	"childcomp" 	    baseparm 	    label	"Child Compensation" 	    export	none 	} 	parm { 	    name	"pre_xform" 	    baseparm 	    label	"Pre-transform" 	    export	none 	} 	parm { 	    name	"xOrd" 	    baseparm 	    label	"Transform Order" 	    joinnext 	    export	none 	} 	parm { 	    name	"rOrd" 	    baseparm 	    label	"Rotate Order" 	    export	none 	} 	parm { 	    name	"t" 	    baseparm 	    label	"Translate" 	    export	all 	} 	parm { 	    name	"r" 	    baseparm 	    label	"Rotate" 	    export	all 	} 	parm { 	    name	"s" 	    baseparm 	    label	"Scale" 	    invisible 	    export	none 	} 	parm { 	    name	"p" 	    baseparm 	    label	"Pivot" 	    export	none 	} 	parm { 	    name	"scale" 	    baseparm 	    label	"Uniform Scale" 	    invisible 	    export	none 	} 	parm { 	    name	"lookatpath" 	    baseparm 	    label	"Look At" 	    export	none 	} 	parm { 	    name	"lookupobjpath" 	    baseparm 	    label	"Look Up Object" 	    export	none 	} 	parm { 	    name	"lookup" 	    baseparm 	    label	"Look At Up Vector" 	    export	none 	} 	parm { 	    name	"pathobjpath" 	    baseparm 	    label	"Path Object" 	    export	none 	} 	parm { 	    name	"roll" 	    baseparm 	    label	"Roll" 	    export	none 	} 	parm { 	    name	"pos" 	    baseparm 	    label	"Position" 	    export	none 	} 	parm { 	    name	"uparmtype" 	    baseparm 	    label	"Parameterization" 	    export	none 	} 	parm { 	    name	"pathorient" 	    baseparm 	    label	"Orient Along Path" 	    export	none 	} 	parm { 	    name	"up" 	    baseparm 	    label	"Orient Up Vector" 	    export	none 	} 	parm { 	    name	"bank" 	    baseparm 	    label	"Auto-Bank factor" 	    export	none 	}     }      group { 	name	"stdswitcher3_1" 	label	"Render"  	parm { 	    name	"tdisplay" 	    baseparm 	    label	"Display" 	    joinnext 	    export	none 	} 	parm { 	    name	"display" 	    baseparm 	    label	"Display" 	    export	none 	} 	parm { 	    name	"use_dcolor" 	    baseparm 	    label	"Set Wireframe Color" 	    export	none 	} 	parm { 	    name	"dcolor" 	    baseparm 	    label	"Wireframe Color" 	    export	none 	} 	parm { 	    name	"picking" 	    baseparm 	    label	"Viewport Selecting Enabled" 	    export	none 	} 	parm { 	    name	"pickscript" 	    baseparm 	    label	"Select Script" 	    export	none 	} 	parm { 	    name	"caching" 	    baseparm 	    label	"Cache Object Transform" 	    export	none 	}     }      group { 	name	"stdswitcher3_2" 	label	"View"  	parm { 	    name	"iconscale" 	    label	"Icon Scale" 	    type	float 	    default	{ "1" } 	    range	{ 0.001 10 } 	    export	none 	    parmtag	{ "spare_category" "View" } 	} 	parm { 	    name	"res" 	    label	"Resolution" 	    type	intvector2 	    joinnext 	    size	2 	    default	{ "1280" "720" } 	    range	{ -1 1 } 	    export	none 	    parmtag	{ "cook_dependent" "1" } 	    parmtag	{ "spare_category" "View" } 	} 	parm { 	    name	"resMenu" 	    label	"Choose Resolution" 	    type	button 	    nolabel 	    default	{ "0" } 	    menumini	{ 		[ "echo `pythonexprs(\\"__import__(\'toolutils\').parseDialogScriptMenu(\'FBres\')\\")`" ] 	    } 	    range	{ 0 1 } 	    export	none 	    parmtag	{ "script_callback" "opparm . res ( `arg(\\"$script_value\\", 0)` `arg(\\"$script_value\\", 1)` aspect ( `arg(\\"$script_value\\", 2)` )" } 	    parmtag	{ "spare_category" "View" } 	} 	parm { 	    name	"aspect" 	    label	"Pixel Aspect Ratio" 	    type	float 	    default	{ "1" } 	    range	{ 0.05 2 } 	    export	none 	    parmtag	{ "spare_category" "View" } 	} 	parm { 	    name	"projection" 	    label	"Projection" 	    type	ordinal 	    default	{ "perspective" } 	    menu	{ 		"perspective"	"Perspective" 		"ortho"	"Orthographic" 		"sphere"	"Polar (panoramic)" 		"cylinder"	"Cylindrical (panoramic)" 		"lens"	"Lens Shader" 	    } 	    range	{ 0 1 } 	    export	none 	    parmtag	{ "spare_category" "View" } 	} 	parm { 	    name	"vm_lensshader" 	    label	"Lens Shader" 	    type	oppath 	    default	{ "" } 	    disablewhen	"{ projection != lens }" 	    range	{ 0 1 } 	    export	none 	    parmtag	{ "oprelative" "." } 	    parmtag	{ "spare_category" "View" } 	} 	parm { 	    name	"focal" 	    label	"Focal Length" 	    type	float 	    joinnext 	    default	{ "50" } 	    range	{ 1 100 } 	    export	none 	} 	parm { 	    name	"focalunits" 	    label	"Focal Units" 	    type	string 	    default	{ "mm" } 	    menu	{ 		"mm"	"millimeters" 		"m"	"meters" 		"nm"	"nanometers" 		"in"	"inches" 		"ft"	"feet" 	    } 	    range	{ 0 1 } 	    export	none 	} 	parm { 	    name	"aperture" 	    label	"Aperture" 	    type	float 	    default	{ "41.4214" } 	    range	{ 1 100 } 	    export	none 	    parmtag	{ "spare_category" "View" } 	} 	parm { 	    name	"orthowidth" 	    label	"Ortho Width" 	    type	float 	    default	{ "2" } 	    disablewhen	"{ projection != ortho }" 	    range	{ 0.001 10 } 	    export	none 	    parmtag	{ "spare_category" "View" } 	} 	parm { 	    name	"near" 	    label	"Near Clipping" 	    type	float 	    default	{ "0.001" } 	    range	{ 0 10 } 	    export	none 	    parmtag	{ "spare_category" "View" } 	} 	parm { 	    name	"far" 	    label	"Far Clipping" 	    type	float 	    default	{ "10000" } 	    range	{ 1 10000 } 	    export	none 	    parmtag	{ "spare_category" "View" } 	} 	parm { 	    name	"vm_bgenable" 	    label	"Enable Background Image" 	    type	toggle 	    default	{ "1" } 	    range	{ 0 1 } 	    export	none 	    parmtag	{ "spare_category" "View" } 	} 	parm { 	    name	"vm_background" 	    label	"Background Image" 	    type	file 	    default	{ "" } 	    disablewhen	"{ vm_bgenable == 0 }" 	    range	{ 0 1 } 	    export	none 	    parmtag	{ "filechooser_mode" "read" } 	    parmtag	{ "spare_category" "View" } 	} 	parm { 	    name	"win" 	    label	"Screen Window X/Y" 	    type	vector2 	    size	2 	    default	{ "0" "0" } 	    disablewhen	"{ winmask != \\"\\" }" 	    range	{ -1 1 } 	    export	none 	} 	parm { 	    name	"winsize" 	    label	"Screen Window Size" 	    type	vector2 	    size	2 	    default	{ "1" "1" } 	    disablewhen	"{ winmask != \\"\\" }" 	    range	{ 0.01 10 } 	    export	none 	} 	parm { 	    name	"winmask" 	    label	"Screen Window Mask" 	    type	oplist 	    default	{ "" } 	    disablewhen	"{ projection != ortho projection != perspective }" 	    range	{ 0 1 } 	    export	none 	    parmtag	{ "opexpand" "1" } 	    parmtag	{ "opfilter" "!!OBJ/GEOMETRY!!" } 	    parmtag	{ "oprelative" "/obj" } 	} 	parm { 	    name	"cropl" 	    label	"Left Crop" 	    type	float 	    default	{ "0" } 	    disablewhen	"{ cropmask != \\"\\" }" 	    range	{ 0 1 } 	    export	none 	} 	parm { 	    name	"cropr" 	    label	"Right Crop" 	    type	float 	    default	{ "1" } 	    disablewhen	"{ cropmask != \\"\\" }" 	    range	{ 0 1 } 	    export	none 	} 	parm { 	    name	"cropb" 	    label	"Bottom Crop" 	    type	float 	    default	{ "0" } 	    disablewhen	"{ cropmask != \\"\\" }" 	    range	{ 0 1 } 	    export	none 	} 	parm { 	    name	"cropt" 	    label	"Top Crop" 	    type	float 	    default	{ "1" } 	    disablewhen	"{ cropmask != \\"\\" }" 	    range	{ 0 1 } 	    export	none 	} 	parm { 	    name	"cropmask" 	    label	"Crop Mask" 	    type	oplist 	    default	{ "" } 	    disablewhen	"{ projection != ortho projection != perspective }" 	    range	{ 0 1 } 	    export	none 	    parmtag	{ "opexpand" "1" } 	    parmtag	{ "opfilter" "!!OBJ/GEOMETRY!!" } 	    parmtag	{ "oprelative" "/obj" } 	}     }      group { 	name	"stdswitcher3_3" 	label	"Sampling"  	parm { 	    name	"shutter" 	    label	"Shutter Time" 	    type	float 	    default	{ "0.5" } 	    disablewhen	"{ allowmotionblur == 0 }" 	    range	{ 0 1 } 	    export	none 	    parmtag	{ "spare_category" "Sampling" } 	} 	parm { 	    name	"focus" 	    label	"Focus Distance" 	    type	float 	    default	{ "5" } 	    disablewhen	"{ vm_dof == 0 }" 	    range	{ 0.001 1000 } 	    export	none 	    parmtag	{ "spare_category" "Sampling" } 	} 	parm { 	    name	"fstop" 	    label	"F-Stop" 	    type	log 	    default	{ "5.6" } 	    disablewhen	"{ vm_dof == 0 }" 	    range	{ 1.4 22 } 	    export	none 	    parmtag	{ "spare_category" "Sampling" } 	} 	parm { 	    name	"vm_bokeh" 	    label	"Bokeh" 	    type	string 	    default	{ "radial" } 	    menureplace	{ 		"radial"	"Radial Bokeh" 		"file"	"Image File Bokeh" 		"box"	"Box Filter Bokeh" 		"null"	"Disable Bokeh" 	    } 	    range	{ 0 1 } 	    export	none 	    parmtag	{ "spare_category" "Sampling" } 	} 	parm { 	    name	"vm_bokehfile" 	    label	"Bokeh Image File" 	    type	image 	    default	{ "default.pic" } 	    disablewhen	"{ vm_bokeh != file }" 	    range	{ 0 1 } 	    export	none 	    parmtag	{ "filechooser_mode" "read" } 	    parmtag	{ "spare_category" "Sampling" } 	} 	parm { 	    name	"vm_bokehrotation" 	    label	"Bokeh Rotation" 	    type	float 	    default	{ "0" } 	    disablewhen	"{ vm_bokeh != file }" 	    range	{ 0 360 } 	    export	none 	    parmtag	{ "spare_category" "Sampling" } 	}     }  ' ipr_camera1
chblockbegin
chadd -t 0 0 ipr_camera1 sx
chkey -t 0 -v 1 -m 0 -a 0 -A 0 -T a  -F 'lock(1)' ipr_camera1/sx
chadd -t 0 0 ipr_camera1 sy
chkey -t 0 -v 1 -m 0 -a 0 -A 0 -T a  -F 'lock(1)' ipr_camera1/sy
chadd -t 0 0 ipr_camera1 sz
chkey -t 0 -v 1 -m 0 -a 0 -A 0 -T a  -F 'lock(1)' ipr_camera1/sz
chadd -t 0 0 ipr_camera1 scale
chkey -t 0 -v 1 -m 0 -a 0 -A 0 -T a  -F 'lock(1)' ipr_camera1/scale
chblockend
opset -S on ipr_camera1
opparm -V 15.0.416 ipr_camera1 stdswitcher ( 0 0 ) keeppos ( off ) childcomp ( off ) pre_xform ( clean ) xOrd ( srt ) rOrd ( xyz ) t ( 2.8155298286262282 2.2988704785733414 2.8155298286262287 ) r ( -29.999999999999993 44.999999999999993 0 ) s ( sx sy sz ) p ( 0 0 0 ) scale ( scale ) lookatpath ( "" ) lookupobjpath ( "" ) lookup ( on ) pathobjpath ( "" ) roll ( 0 ) pos ( 0 ) uparmtype ( arc ) pathorient ( 1 ) up ( 0 1 0 ) bank ( 0 ) tdisplay ( off ) display ( 1 ) use_dcolor ( off ) dcolor ( 1 1 1 ) picking ( on ) pickscript ( "" ) caching ( off ) stdswitcher3 ( 0 0 0 0 ) iconscale ( 1 ) res ( 1280 720 ) resMenu ( "640 480 1" ) aspect ( 1 ) projection ( perspective ) vm_lensshader ( "" ) focal ( 50 ) focalunits ( mm ) aperture ( 41.421398162841797 ) orthowidth ( 2.980469213454727 ) near ( 0.10000000149011612 ) far ( 3902.7242410802496 ) vm_bgenable ( on ) vm_background ( "" ) win ( 0 0 ) winsize ( 1 1 ) winmask ( "" ) cropl ( 0 ) cropr ( 1 ) cropb ( 0 ) cropt ( 1 ) cropmask ( "" ) shutter ( 0.5 ) focus ( 5 ) fstop ( 5.5999999999999996 ) vm_bokeh ( radial ) vm_bokehfile ( default.pic ) vm_bokehrotation ( 0 )
chlock ipr_camera1 -*
chautoscope ipr_camera1 -* +tx +ty +tz +rx +ry +rz +sx +sy +sz
opcolor -c 0.80000001192092896 0.80000001192092896 0.80000001192092896 ipr_camera1
opset -d off -r off -h off -f off -y off -t off -l off -s off -u off -c off -e off -b off -x off ipr_camera1
opexprlanguage -s hscript ipr_camera1
opcf ipr_camera1

# Node camOrigin (Sop/add)
opadd -e -n add camOrigin
oplocate -x 2 -y 3 camOrigin
opspareds "" camOrigin
opparm camOrigin  points ( 1 ) prims ( 1 )
opparm -V 15.0.416 camOrigin stdswitcher ( 0 0 0 ) keep ( off ) points ( 1 ) remove ( off ) switcher ( 0 0 ) prims ( 1 ) group ( "" ) add ( all ) inc ( 2 ) attrname ( "" ) closedall ( off ) addparticlesystem ( off ) particlegroup ( "" ) appendunusedtoparticlesystem ( off ) usept0 ( on ) pt0 ( 0 0 0 ) weight0 ( 1 ) prim0 ( "" ) closed0 ( off )
chlock camOrigin -*
chautoscope camOrigin -*
opcolor -c 0.80000001192092896 0.80000001192092896 0.80000001192092896 camOrigin
opset -d off -r off -h off -f off -y off -t off -l off -s off -u off -c off -e on -b off camOrigin
opexprlanguage -s hscript camOrigin

# Node file1 (Sop/file)
opadd -e -n file file1
oplocate -x 0.17999999999999999 -y 3 file1
opspareds "" file1
opparm -V 15.0.416 file1 filemode ( read ) file ( defcam.bgeo ) reload ( 0 ) objpattern ( * ) geodatapath ( "" ) missingframe ( error ) loadtype ( full ) packedviewedit ( unchanged ) viewportlod ( box ) packexpanded ( on ) delayload ( off ) mkpath ( on ) cachesize ( 0 ) prefetch ( off )
chlock file1 -*
chautoscope file1 -*
opcolor -c 0.80000001192092896 0.80000001192092896 0.80000001192092896 file1
opset -d off -r off -h off -f off -y off -t off -l off -s off -u off -c off -e on -b off file1
opexprlanguage -s hscript file1

# Node xform1 (Sop/xform)
opadd -e -n xform xform1
oplocate -x 0.17999999999999999 -y 1.5 xform1
opspareds "" xform1
chblockbegin
chadd -t 0 0 xform1 scale
chkey -t 0 -v 0 -m 0 -a 0 -A 0 -T a  -F 'property("../iconscale", 1)' xform1/scale
chblockend
opparm -V 15.0.416 xform1 group ( "" ) grouptype ( guess ) xOrd ( srt ) rOrd ( xyz ) t ( 0 0 0 ) r ( 0 0 0 ) s ( 1 1 1 ) shear ( 0 0 0 ) p ( 0 0 0 ) scale ( scale ) movecentroid ( 0 ) attribs ( * ) updatenmls ( off ) updateaffectednmls ( on ) vlength ( on ) invertxform ( off )
chlock xform1 -*
chautoscope xform1 -*
opcolor -c 0.80000001192092896 0.80000001192092896 0.80000001192092896 xform1
opset -d on -r on -h off -f off -y off -t off -l off -s off -u off -c off -e on -b off xform1
opexprlanguage -s hscript xform1
oporder -e camOrigin file1 xform1 
opcf ..

# Node ipr_camera2 (Object/cam)
opadd -e -n cam ipr_camera2
oplocate -x 0 -y 0 ipr_camera2
opspareds '    group { 	name	"stdswitcher3" 	label	"Transform"  	parm { 	    name	"keeppos" 	    baseparm 	    label	"Keep Position When Parenting" 	    export	none 	} 	parm { 	    name	"childcomp" 	    baseparm 	    label	"Child Compensation" 	    export	none 	} 	parm { 	    name	"pre_xform" 	    baseparm 	    label	"Pre-transform" 	    export	none 	} 	parm { 	    name	"xOrd" 	    baseparm 	    label	"Transform Order" 	    joinnext 	    export	none 	} 	parm { 	    name	"rOrd" 	    baseparm 	    label	"Rotate Order" 	    export	none 	} 	parm { 	    name	"t" 	    baseparm 	    label	"Translate" 	    export	all 	} 	parm { 	    name	"r" 	    baseparm 	    label	"Rotate" 	    export	all 	} 	parm { 	    name	"s" 	    baseparm 	    label	"Scale" 	    invisible 	    export	none 	} 	parm { 	    name	"p" 	    baseparm 	    label	"Pivot" 	    export	none 	} 	parm { 	    name	"scale" 	    baseparm 	    label	"Uniform Scale" 	    invisible 	    export	none 	} 	parm { 	    name	"lookatpath" 	    baseparm 	    label	"Look At" 	    export	none 	} 	parm { 	    name	"lookupobjpath" 	    baseparm 	    label	"Look Up Object" 	    export	none 	} 	parm { 	    name	"lookup" 	    baseparm 	    label	"Look At Up Vector" 	    export	none 	} 	parm { 	    name	"pathobjpath" 	    baseparm 	    label	"Path Object" 	    export	none 	} 	parm { 	    name	"roll" 	    baseparm 	    label	"Roll" 	    export	none 	} 	parm { 	    name	"pos" 	    baseparm 	    label	"Position" 	    export	none 	} 	parm { 	    name	"uparmtype" 	    baseparm 	    label	"Parameterization" 	    export	none 	} 	parm { 	    name	"pathorient" 	    baseparm 	    label	"Orient Along Path" 	    export	none 	} 	parm { 	    name	"up" 	    baseparm 	    label	"Orient Up Vector" 	    export	none 	} 	parm { 	    name	"bank" 	    baseparm 	    label	"Auto-Bank factor" 	    export	none 	}     }      group { 	name	"stdswitcher3_1" 	label	"Render"  	parm { 	    name	"tdisplay" 	    baseparm 	    label	"Display" 	    joinnext 	    export	none 	} 	parm { 	    name	"display" 	    baseparm 	    label	"Display" 	    export	none 	} 	parm { 	    name	"use_dcolor" 	    baseparm 	    label	"Set Wireframe Color" 	    export	none 	} 	parm { 	    name	"dcolor" 	    baseparm 	    label	"Wireframe Color" 	    export	none 	} 	parm { 	    name	"picking" 	    baseparm 	    label	"Viewport Selecting Enabled" 	    export	none 	} 	parm { 	    name	"pickscript" 	    baseparm 	    label	"Select Script" 	    export	none 	} 	parm { 	    name	"caching" 	    baseparm 	    label	"Cache Object Transform" 	    export	none 	}     }      group { 	name	"stdswitcher3_2" 	label	"View"  	parm { 	    name	"iconscale" 	    label	"Icon Scale" 	    type	float 	    default	{ "1" } 	    range	{ 0.001 10 } 	    export	none 	    parmtag	{ "spare_category" "View" } 	} 	parm { 	    name	"res" 	    label	"Resolution" 	    type	intvector2 	    joinnext 	    size	2 	    default	{ "1280" "720" } 	    range	{ -1 1 } 	    export	none 	    parmtag	{ "cook_dependent" "1" } 	    parmtag	{ "spare_category" "View" } 	} 	parm { 	    name	"resMenu" 	    label	"Choose Resolution" 	    type	button 	    nolabel 	    default	{ "0" } 	    menumini	{ 		[ "echo `pythonexprs(\\"__import__(\'toolutils\').parseDialogScriptMenu(\'FBres\')\\")`" ] 	    } 	    range	{ 0 1 } 	    export	none 	    parmtag	{ "script_callback" "opparm . res ( `arg(\\"$script_value\\", 0)` `arg(\\"$script_value\\", 1)` aspect ( `arg(\\"$script_value\\", 2)` )" } 	    parmtag	{ "spare_category" "View" } 	} 	parm { 	    name	"aspect" 	    label	"Pixel Aspect Ratio" 	    type	float 	    default	{ "1" } 	    range	{ 0.05 2 } 	    export	none 	    parmtag	{ "spare_category" "View" } 	} 	parm { 	    name	"projection" 	    label	"Projection" 	    type	ordinal 	    default	{ "perspective" } 	    menu	{ 		"perspective"	"Perspective" 		"ortho"	"Orthographic" 		"sphere"	"Polar (panoramic)" 		"cylinder"	"Cylindrical (panoramic)" 		"lens"	"Lens Shader" 	    } 	    range	{ 0 1 } 	    export	none 	    parmtag	{ "spare_category" "View" } 	} 	parm { 	    name	"vm_lensshader" 	    label	"Lens Shader" 	    type	oppath 	    default	{ "" } 	    disablewhen	"{ projection != lens }" 	    range	{ 0 1 } 	    export	none 	    parmtag	{ "oprelative" "." } 	    parmtag	{ "spare_category" "View" } 	} 	parm { 	    name	"focal" 	    label	"Focal Length" 	    type	float 	    joinnext 	    default	{ "50" } 	    range	{ 1 100 } 	    export	none 	} 	parm { 	    name	"focalunits" 	    label	"Focal Units" 	    type	string 	    default	{ "mm" } 	    menu	{ 		"mm"	"millimeters" 		"m"	"meters" 		"nm"	"nanometers" 		"in"	"inches" 		"ft"	"feet" 	    } 	    range	{ 0 1 } 	    export	none 	} 	parm { 	    name	"aperture" 	    label	"Aperture" 	    type	float 	    default	{ "41.4214" } 	    range	{ 1 100 } 	    export	none 	    parmtag	{ "spare_category" "View" } 	} 	parm { 	    name	"orthowidth" 	    label	"Ortho Width" 	    type	float 	    default	{ "2" } 	    disablewhen	"{ projection != ortho }" 	    range	{ 0.001 10 } 	    export	none 	    parmtag	{ "spare_category" "View" } 	} 	parm { 	    name	"near" 	    label	"Near Clipping" 	    type	float 	    default	{ "0.001" } 	    range	{ 0 10 } 	    export	none 	    parmtag	{ "spare_category" "View" } 	} 	parm { 	    name	"far" 	    label	"Far Clipping" 	    type	float 	    default	{ "10000" } 	    range	{ 1 10000 } 	    export	none 	    parmtag	{ "spare_category" "View" } 	} 	parm { 	    name	"vm_bgenable" 	    label	"Enable Background Image" 	    type	toggle 	    default	{ "1" } 	    range	{ 0 1 } 	    export	none 	    parmtag	{ "spare_category" "View" } 	} 	parm { 	    name	"vm_background" 	    label	"Background Image" 	    type	file 	    default	{ "" } 	    disablewhen	"{ vm_bgenable == 0 }" 	    range	{ 0 1 } 	    export	none 	    parmtag	{ "filechooser_mode" "read" } 	    parmtag	{ "spare_category" "View" } 	} 	parm { 	    name	"win" 	    label	"Screen Window X/Y" 	    type	vector2 	    size	2 	    default	{ "0" "0" } 	    disablewhen	"{ winmask != \\"\\" }" 	    range	{ -1 1 } 	    export	none 	} 	parm { 	    name	"winsize" 	    label	"Screen Window Size" 	    type	vector2 	    size	2 	    default	{ "1" "1" } 	    disablewhen	"{ winmask != \\"\\" }" 	    range	{ 0.01 10 } 	    export	none 	} 	parm { 	    name	"winmask" 	    label	"Screen Window Mask" 	    type	oplist 	    default	{ "" } 	    disablewhen	"{ projection != ortho projection != perspective }" 	    range	{ 0 1 } 	    export	none 	    parmtag	{ "opexpand" "1" } 	    parmtag	{ "opfilter" "!!OBJ/GEOMETRY!!" } 	    parmtag	{ "oprelative" "/obj" } 	} 	parm { 	    name	"cropl" 	    label	"Left Crop" 	    type	float 	    default	{ "0" } 	    disablewhen	"{ cropmask != \\"\\" }" 	    range	{ 0 1 } 	    export	none 	} 	parm { 	    name	"cropr" 	    label	"Right Crop" 	    type	float 	    default	{ "1" } 	    disablewhen	"{ cropmask != \\"\\" }" 	    range	{ 0 1 } 	    export	none 	} 	parm { 	    name	"cropb" 	    label	"Bottom Crop" 	    type	float 	    default	{ "0" } 	    disablewhen	"{ cropmask != \\"\\" }" 	    range	{ 0 1 } 	    export	none 	} 	parm { 	    name	"cropt" 	    label	"Top Crop" 	    type	float 	    default	{ "1" } 	    disablewhen	"{ cropmask != \\"\\" }" 	    range	{ 0 1 } 	    export	none 	} 	parm { 	    name	"cropmask" 	    label	"Crop Mask" 	    type	oplist 	    default	{ "" } 	    disablewhen	"{ projection != ortho projection != perspective }" 	    range	{ 0 1 } 	    export	none 	    parmtag	{ "opexpand" "1" } 	    parmtag	{ "opfilter" "!!OBJ/GEOMETRY!!" } 	    parmtag	{ "oprelative" "/obj" } 	}     }      group { 	name	"stdswitcher3_3" 	label	"Sampling"  	parm { 	    name	"shutter" 	    label	"Shutter Time" 	    type	float 	    default	{ "0.5" } 	    disablewhen	"{ allowmotionblur == 0 }" 	    range	{ 0 1 } 	    export	none 	    parmtag	{ "spare_category" "Sampling" } 	} 	parm { 	    name	"focus" 	    label	"Focus Distance" 	    type	float 	    default	{ "5" } 	    disablewhen	"{ vm_dof == 0 }" 	    range	{ 0.001 1000 } 	    export	none 	    parmtag	{ "spare_category" "Sampling" } 	} 	parm { 	    name	"fstop" 	    label	"F-Stop" 	    type	log 	    default	{ "5.6" } 	    disablewhen	"{ vm_dof == 0 }" 	    range	{ 1.4 22 } 	    export	none 	    parmtag	{ "spare_category" "Sampling" } 	} 	parm { 	    name	"vm_bokeh" 	    label	"Bokeh" 	    type	string 	    default	{ "radial" } 	    menureplace	{ 		"radial"	"Radial Bokeh" 		"file"	"Image File Bokeh" 		"box"	"Box Filter Bokeh" 		"null"	"Disable Bokeh" 	    } 	    range	{ 0 1 } 	    export	none 	    parmtag	{ "spare_category" "Sampling" } 	} 	parm { 	    name	"vm_bokehfile" 	    label	"Bokeh Image File" 	    type	image 	    default	{ "default.pic" } 	    disablewhen	"{ vm_bokeh != file }" 	    range	{ 0 1 } 	    export	none 	    parmtag	{ "filechooser_mode" "read" } 	    parmtag	{ "spare_category" "Sampling" } 	} 	parm { 	    name	"vm_bokehrotation" 	    label	"Bokeh Rotation" 	    type	float 	    default	{ "0" } 	    disablewhen	"{ vm_bokeh != file }" 	    range	{ 0 360 } 	    export	none 	    parmtag	{ "spare_category" "Sampling" } 	}     }  ' ipr_camera2
chblockbegin
chadd -t 0 0 ipr_camera2 sx
chkey -t 0 -v 1 -m 0 -a 0 -A 0 -T a  -F 'lock(1)' ipr_camera2/sx
chadd -t 0 0 ipr_camera2 sy
chkey -t 0 -v 1 -m 0 -a 0 -A 0 -T a  -F 'lock(1)' ipr_camera2/sy
chadd -t 0 0 ipr_camera2 sz
chkey -t 0 -v 1 -m 0 -a 0 -A 0 -T a  -F 'lock(1)' ipr_camera2/sz
chadd -t 0 0 ipr_camera2 scale
chkey -t 0 -v 1 -m 0 -a 0 -A 0 -T a  -F 'lock(1)' ipr_camera2/scale
chblockend
opset -S on ipr_camera2
opparm -V 15.0.416 ipr_camera2 stdswitcher ( 0 0 ) keeppos ( off ) childcomp ( off ) pre_xform ( clean ) xOrd ( srt ) rOrd ( xyz ) t ( 2.8155298286262282 2.2988704785733414 2.8155298286262287 ) r ( -29.999999999999993 44.999999999999993 0 ) s ( sx sy sz ) p ( 0 0 0 ) scale ( scale ) lookatpath ( "" ) lookupobjpath ( "" ) lookup ( on ) pathobjpath ( "" ) roll ( 0 ) pos ( 0 ) uparmtype ( arc ) pathorient ( 1 ) up ( 0 1 0 ) bank ( 0 ) tdisplay ( off ) display ( 1 ) use_dcolor ( off ) dcolor ( 1 1 1 ) picking ( on ) pickscript ( "" ) caching ( off ) stdswitcher3 ( 0 0 0 0 ) iconscale ( 1 ) res ( 1280 720 ) resMenu ( "640 480 1" ) aspect ( 1 ) projection ( perspective ) vm_lensshader ( "" ) focal ( 50 ) focalunits ( mm ) aperture ( 41.421398162841797 ) orthowidth ( 2.980469213454727 ) near ( 0.10000000149011612 ) far ( 3902.7242410802496 ) vm_bgenable ( on ) vm_background ( "" ) win ( 0 0 ) winsize ( 1 1 ) winmask ( "" ) cropl ( 0 ) cropr ( 1 ) cropb ( 0 ) cropt ( 1 ) cropmask ( "" ) shutter ( 0.5 ) focus ( 5 ) fstop ( 5.5999999999999996 ) vm_bokeh ( radial ) vm_bokehfile ( default.pic ) vm_bokehrotation ( 0 )
chlock ipr_camera2 -*
chautoscope ipr_camera2 -* +tx +ty +tz +rx +ry +rz +sx +sy +sz
opcolor -c 0.80000001192092896 0.80000001192092896 0.80000001192092896 ipr_camera2
opset -d off -r off -h off -f off -y off -t off -l off -s off -u off -c off -e off -b off -x off ipr_camera2
opexprlanguage -s hscript ipr_camera2
opcf ipr_camera2

# Node camOrigin (Sop/add)
opadd -e -n add camOrigin
oplocate -x 2 -y 3 camOrigin
opspareds "" camOrigin
opparm camOrigin  points ( 1 ) prims ( 1 )
opparm -V 15.0.416 camOrigin stdswitcher ( 0 0 0 ) keep ( off ) points ( 1 ) remove ( off ) switcher ( 0 0 ) prims ( 1 ) group ( "" ) add ( all ) inc ( 2 ) attrname ( "" ) closedall ( off ) addparticlesystem ( off ) particlegroup ( "" ) appendunusedtoparticlesystem ( off ) usept0 ( on ) pt0 ( 0 0 0 ) weight0 ( 1 ) prim0 ( "" ) closed0 ( off )
chlock camOrigin -*
chautoscope camOrigin -*
opcolor -c 0.80000001192092896 0.80000001192092896 0.80000001192092896 camOrigin
opset -d off -r off -h off -f off -y off -t off -l off -s off -u off -c off -e on -b off camOrigin
opexprlanguage -s hscript camOrigin

# Node file1 (Sop/file)
opadd -e -n file file1
oplocate -x 0.17999999999999999 -y 3 file1
opspareds "" file1
opparm -V 15.0.416 file1 filemode ( read ) file ( defcam.bgeo ) reload ( 0 ) objpattern ( * ) geodatapath ( "" ) missingframe ( error ) loadtype ( full ) packedviewedit ( unchanged ) viewportlod ( box ) packexpanded ( on ) delayload ( off ) mkpath ( on ) cachesize ( 0 ) prefetch ( off )
chlock file1 -*
chautoscope file1 -*
opcolor -c 0.80000001192092896 0.80000001192092896 0.80000001192092896 file1
opset -d off -r off -h off -f off -y off -t off -l off -s off -u off -c off -e on -b off file1
opexprlanguage -s hscript file1

# Node xform1 (Sop/xform)
opadd -e -n xform xform1
oplocate -x 0.17999999999999999 -y 1.5 xform1
opspareds "" xform1
chblockbegin
chadd -t 0 0 xform1 scale
chkey -t 0 -v 0 -m 0 -a 0 -A 0 -T a  -F 'property("../iconscale", 1)' xform1/scale
chblockend
opparm -V 15.0.416 xform1 group ( "" ) grouptype ( guess ) xOrd ( srt ) rOrd ( xyz ) t ( 0 0 0 ) r ( 0 0 0 ) s ( 1 1 1 ) shear ( 0 0 0 ) p ( 0 0 0 ) scale ( scale ) movecentroid ( 0 ) attribs ( * ) updatenmls ( off ) updateaffectednmls ( on ) vlength ( on ) invertxform ( off )
chlock xform1 -*
chautoscope xform1 -*
opcolor -c 0.80000001192092896 0.80000001192092896 0.80000001192092896 xform1
opset -d on -r on -h off -f off -y off -t off -l off -s off -u off -c off -e on -b off xform1
opexprlanguage -s hscript xform1
oporder -e camOrigin file1 xform1 
opcf ..
oporder -e bubblesShapes liquid bubblesCenters container controls ipr_camera ipr_camera1 ipr_camera2 
opcf ..

# Node out (/out)

# Node part (/part)

# Node ch (/ch)

# Node shop (/shop)

# Node img (/img)
oporder -e obj out part ch shop img vex 

opcf /
opcf obj
opcf bubblesShapes
opwire -n objectMerge_internalBubblesCenters -0 spaceFillingDiagram
opwire -n facet_normals -1 spaceFillingDiagram
opwire -n objectMerge_containerMesh -2 spaceFillingDiagram
opcf spaceFillingDiagram
opwire -n attributesCreate_lengthRiRj -0 connectadjacentpieces
opwire -n group_defaultCell -0 foreach_cell
opwire -n -i 1 -1 foreach_cell
opwire -n -i 2 -2 foreach_cell
opcf foreach_cell
opwire -n -i 0 -0 for
opwire -n group_neighbours -0 delete_nonPrimitive
opwire -n group_neighbours -0 delete_nonPoints
opwire -n cookie_internal -0 voronoiFracture_internal
opwire -n attributeWrangle_toFilmInternal -1 voronoiFracture_internal
opwire -n -i 1 -0 copy_internal
opwire -n attributeWrangle_pscaleInternal -1 copy_internal
opwire -n delete_nonPrimitive -0 delete_unusedGroups
opwire -n attributeCopy_centerP -0 attributeCopy_centerR
opwire -n delete_nonPoints -1 attributeCopy_centerR
opwire -n delete_unusedGroups -0 attributeCopy_centerP
opwire -n delete_nonPoints -1 attributeCopy_centerP
opwire -n for -0 attributeCreate_centerP
opwire -n attributePromote_restlength -0 attributeWrangle_toFilmInternal
opwire -n attributeCreate_centerPscale -0 group_neighbours
opwire -n attributeCreate_centerP -0 attributeCreate_centerPscale
opwire -n merge2 -0 partition_bubbleIdInternal
opwire -n attributeCopy_centerR -0 attributePromote_restlength
opwire -n delete_nonPoints -0 attributeWrangle_pscaleInternal
opwire -n cookie_external -0 voronoiFracture_external
opwire -n attributeWrangle_toFilmExternal -1 voronoiFracture_external
opwire -n partition_bubbleIdInternal -0 delete_nonCenter
opwire -n group_internal -0 merge2
opwire -n group_external -1 merge2
opwire -n delete_bubbleToBubble -0 group_external
opwire -n attributePromote_restlength -0 attributeWrangle_toFilmExternal
opwire -n delete_nonPoints -0 attributeWrangle_pscaleExternal
opwire -n -i 1 -0 copy_external
opwire -n attributeWrangle_pscaleExternal -1 copy_external
opwire -n voronoiFracture_external -0 delete_bubbleToBubble
opwire -n voronoiFracture_internal -0 group_internal
opwire -n delete_nonCenter -0 OUT
opwire -n copy_internal -0 cookie_internal
opwire -n -i 2 -1 cookie_internal
opwire -n copy_external -0 cookie_external
opwire -n -i 2 -1 cookie_external
opcf ..
opwire -n IN -0 attributeCreate_id
opwire -n partition_cellGroupsOnPoints -0 group_convertCellGroupsToPrimitives
opwire -n delete_interiorLink -0 partition_cellGroupsOnPoints
opwire -n group_convertCellGroupsToPrimitives -0 group_defaultCell
opwire -n delete_longLinks -0 delete_interiorLink
opwire -n attributePromote_rj -0 attributeWrangle_updateLengthRiRj
opwire -n switch_correctScale -0 attributePromote_ri
opwire -n attributePromote_ri -0 attributePromote_rj
opwire -n attributeCreate_id -0 attributesCreate_lengthRiRj
opwire -n attributeWrangle_updateLengthRiRj -0 delete_longLinks
opwire -n connectadjacentpieces -0 attributeCreate_minLength
opwire -n attributeCreate_minLength -0 attributePromote_minLength
opwire -n attributePromote_minLength -0 attributeWrangle_correctScale
opwire -n -i 0 -0 IN
opwire -n attributeRename_remove -0 OUT
opwire -n attributePromote_minLength -0 switch_correctScale
opwire -n attributeWrangle_correctScale -1 switch_correctScale
opwire -n foreach_cell -0 merge_isolatedBubbles
opwire -n group_internal -1 merge_isolatedBubbles
opwire -n group_external -2 merge_isolatedBubbles
opwire -n group_defaultCell -0 delete_primitives
opwire -n delete_primitives -0 attributeWrangle_pscaleInternal
opwire -n delete_primitives -0 attributeWrangle_pscaleExternal
opwire -n -i 1 -0 copy_internal
opwire -n attributeWrangle_pscaleInternal -1 copy_internal
opwire -n -i 1 -0 copy_external
opwire -n attributeWrangle_pscaleExternal -1 copy_external
opwire -n cookie_external -0 group_external
opwire -n group_airToLiquid -0 group_internal
opwire -n cookie_internal -0 group_airToLiquid
opwire -n merge_isolatedBubbles -0 attributeRename_remove
opwire -n copy_internal -0 cookie_internal
opwire -n -i 2 -1 cookie_internal
opwire -n copy_external -0 cookie_external
opwire -n -i 2 -1 cookie_external
opcf ..
opwire -n sphere -0 subdivide
opwire -n subdivide -0 transform_scaleBackTo1
opwire -n facet_normals -0 copy_instances
opwire -n objectMerge_internalBubblesCenters -1 copy_instances
opwire -n delete_nonInternal -0 delete_nonAirToLiquid
opwire -n delete_nonInternal -0 delete_nonAirToAir
opwire -n spaceFillingDiagram -0 delete_nonExternal
opwire -n spaceFillingDiagram -0 delete_nonInternal
opwire -n spaceFillingDiagram -0 OUT_all
opwire -n OUT_internal -0 polyExtrude_creaseToSubdivide
opwire -n polyExtrude_creaseToSubdivide -0 OUT_internalRender
opwire -n delete_nonExternal -0 OUT_external
opwire -n delete_nonInternal -0 OUT_internal
opwire -n delete_nonAirToAir -0 OUT_airToAir
opwire -n delete_nonAirToLiquid -0 OUT_airToLiquid
opwire -n OUT_internalRender -0 subdivide_crease
opwire -n OUT_internal -0 subdivide_noCrease
opwire -n transform_scaleBackTo1 -0 facet_normals
opwire -n objectMerge_externalBubblesCenters -0 VDBFromParticles_externalSDF
opwire -n VDBFromParticles_externalSDF -0 vdbcombine_SDFUnion
opwire -n objectMerge_liquidSDF -1 vdbcombine_SDFUnion
opwire -n vdbcombine_SDFIntersectionBubbles -0 convertVDB_toPolygons
opwire -n subdivide_surfaceExternal -0 OUT_surfaceExternal
opwire -n objectMerge_containerSDFHighRes -0 vdbcombine_SDFIntersectionBubbles
opwire -n vdbcombine_SDFUnion -1 vdbcombine_SDFIntersectionBubbles
opwire -n OUT_internalRender -0 merge_all
opwire -n subdivide_surfaceExternal -1 merge_all
opwire -n convertVDB_toPolygons -0 facet_normalsSurfaceExternal
opwire -n facet_normalsSurfaceExternal -0 subdivide_surfaceExternal
opwire -n merge_all -0 OUT
opwire -n OUT -0 point_alpha
opcf ..
opcf liquid
opwire -n grid -0 mountain_liquidSurface
opwire -n mountain_liquidSurface -0 trail
opwire -n convertVDB_toPolygons -0 OUT_isosurface
opwire -n volume_liquidVelocity -0 volumeVop_curlNoise
opcf volumeVop_curlNoise
opwire -n floatToVector1 -0 vel
opwire -n volumevopglobal1 -0 vectorToFloat
opwire -n vectorToFloat -0 floatToVector
opwire -n -o 2 vectorToFloat -1 floatToVector
opwire -n floatToVector -1 curlnoise2d1
opwire -n curlnoise2d1 -0 vectorToFloat1
opwire -n vectorToFloat1 -0 floatToVector1
opwire -n -o 1 vectorToFloat1 -2 floatToVector1
opcf ..
opwire -n vdbcombine_SDFIntersection -0 OUT_SDF
opwire -n trail -0 polyextrude_addDepth
opwire -n containerFloor -0 point_floorDepth
opwire -n polyextrude_addDepth -0 containerFloor
opwire -n point_floorDepth -0 vdbfrompolygons_surfaceSDF
opwire -n volumeslice2 -0 volumetrail1
opwire -n volumeVop_curlNoise -1 volumetrail1
opwire -n volumeVop_curlNoise -0 volumeslice2
opwire -n volume_liquidVelocity -0 OUT_velocity
opwire -n objectMerge_containerSDF -0 vdbcombine_SDFIntersection
opwire -n vdbfrompolygons_surfaceSDF -1 vdbcombine_SDFIntersection
opwire -n vdbcombine_SDFIntersection -0 convertVDB_toPolygons
opwire -n trail -0 OUT_surface
opwire -n grid -0 OUT_grid
opcf ..
opcf bubblesCenters
opwire -n point_copySurfaceOffset -0 polyextrude_foamVolume
opwire -n objectMerge_liquidGrid -0 mountain_liquidSurface
opwire -n polyextrude_foamVolume -0 group_extrudeFrontToPoint
opwire -n point_flattenBottom -0 OUT_foamVolume
opwire -n point_flattenBottom -0 vdbfrompolygons_foamVolumeSDF
opwire -n VDBReshapeSDF -0 vdbcombine_SDFIntersection
opwire -n delete1 -1 vdbcombine_SDFIntersection
opwire -n vdbcombine_SDFIntersection -0 VDBToSpheres
opwire -n VDBToSpheres -0 foreach_primitive
opcf foreach_primitive
opwire -n -i 0 -0 each
opwire -n each -0 attributeCreate
opcf ..
opwire -n objectMerge_containerSDFLowRes -0 VDBReshapeSDF
opwire -n point_smaller -0 attributeWrangle_noOffset
opwire -n attributeCreate_surfaceOffset -0 point_copySurfaceOffset
opwire -n objectMerge_liquidSurface -1 point_copySurfaceOffset
opwire -n mountain_liquidSurface -0 attributeCreate_surfaceOffset
opwire -n group_extrudeFrontToPoint -0 point_flattenBottom
opwire -n vdbfrompolygons_foamVolumeSDF -0 delete1
opwire -n foreach_primitive -0 attribfromvolume1
opwire -n vdbfrompolygons_foamVolumeSDF -1 attribfromvolume1
opwire -n attribfromvolume1 -0 attributeWrangle_moveInLiquid
opwire -n delete_primitives -0 OUT_bubblesInternalCenters
opwire -n point_smaller -0 OUT_bubblesExternalSpheres
opwire -n attributeWrangle_noOffset -0 delete_primitives
opwire -n attributeWrangle_moveInLiquid -0 point_smaller
opcf ..
opcf container
opwire -n tube -0 delete_top
opwire -n delete_top -0 facet_normals
opwire -n facet_normals -0 OUT_mesh
opwire -n tube -0 OUT_volume
opwire -n tube -0 vdbfrompolygons_volumeSDFHighRes
opwire -n vdbfrompolygons_volumeSDFHighRes -0 OUT_SDFHighRes
opwire -n tube -0 vdbfrompolygons_volumeSDFLowRes
opwire -n vdbfrompolygons_volumeSDFLowRes -0 OUT_SDFLowRes
opcf ..
opcf controls
opcf ..
opcf ipr_camera
opwire -n file1 -0 xform1
opcf ..
opcf ipr_camera1
opwire -n file1 -0 xform1
opcf ..
opcf ipr_camera2
opwire -n file1 -0 xform1
opcf ..
opcf ..
opcf $saved_path
