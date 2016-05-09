# Automatically generated script: Monday May 09, 11:44 2016
\set noalias = 1
set saved_path = `execute("oppwf")`
opcf /

# Node obj (/obj)
opcf obj

# Network Box Simulation
nbadd Simulation
nblocate -x 4.43706 -y 7.81781 Simulation
nbsize -w 7.93289 -h 2.54492 Simulation
nbset  -m off Simulation
nbcolor -c 0.52 0.52 0.52 Simulation

# Node DOPNetwork (Object/dopnet)
opadd -e -n dopnet DOPNetwork
oplocate -x 7.0370699999999999 -y 8.6199499999999993 DOPNetwork
opspareds "" DOPNetwork
chblockbegin
chadd -t 0 0 DOPNetwork timestep
chkey -t 0 -v 0 -m 0 -a 0 -A 0 -T a  -F 'ch("timescale")/(ch("substep")*$FPS)' DOPNetwork/timestep
chadd -t 0 0 DOPNetwork timeoffset
chkey -t 0 -v 0 -m 0 -a 0 -A 0 -T a  -F '(ch("startframe")-1)/$FPS' DOPNetwork/timeoffset
chblockend
opset -S on DOPNetwork
opparm -V 15.0.416 DOPNetwork isplayer ( off ) playfilesname ( '$HIP/sim/$HIPNAME.$OS.$SF.sim' ) stdswitcher ( 0 0 0 ) resimulate ( 0 ) tdisplay ( off ) display ( 1 ) initialstate ( "" ) timestep ( timestep ) substep ( 1 ) timeoffset ( timeoffset ) startframe ( 1 ) timescale ( 1 ) maxfeedback ( 2 ) autoresim ( on ) datahints ( on ) interpolate ( on ) cacheenabled ( on ) compresssims ( blosc ) cachemaxsize ( 5000 ) cachetodisk ( off ) cachetodisknoninteractive ( off ) cachesubsteps ( off ) timeless ( off ) explicitcache ( off ) explicitcachename ( '$HIP/cache.$OS.$SF.sim' ) explicitcachensteps ( 0 ) explicitcachecheckpointspacing ( 1 ) keeppos ( off ) childcomp ( off ) pre_xform ( clean ) xOrd ( srt ) rOrd ( xyz ) t ( 0 0 0 ) r ( 0 0 0 ) s ( 1 1 1 ) p ( 0 0 0 ) scale ( 1 ) lookatpath ( "" ) lookupobjpath ( "" ) lookup ( on ) pathobjpath ( "" ) roll ( 0 ) pos ( 0 ) uparmtype ( arc ) pathorient ( 1 ) up ( 0 1 0 ) bank ( 0 ) displayfilter ( * ) use_dcolor ( off ) dcolor ( 1 1 1 ) picking ( on ) pickscript ( "" ) caching ( off )
chlock DOPNetwork -*
chautoscope DOPNetwork -* +tx +ty +tz +rx +ry +rz +sx +sy +sz
opcolor -c 0.80000001192092896 0.80000001192092896 0.80000001192092896 DOPNetwork
opset -d off -r off -h off -f off -y off -t off -l off -s off -u off -c off -e on -b off -x off DOPNetwork
nbop Simulation add DOPNetwork
opexprlanguage -s hscript DOPNetwork
opuserdata -n '___Version___' -v '15.0.416' DOPNetwork
opuserdata -n '___toolcount___' -v '2' DOPNetwork
opuserdata -n '___toolid___' -v 'dynamics_poplocation' DOPNetwork
opcf DOPNetwork

# Node popSolver (Dop/popsolver::2.0)
opadd -e -n popsolver::2.0 popSolver
oplocate -x 0.239152 -y 4.2930799999999998 popSolver
opspareds "" popSolver
opparm popSolver folder2 ( 0 0 0 0 0 0 ) timescale ( 1 ) minimumsubsteps ( 1 ) substeps ( 4 ) cflcond ( 1 ) quantize ( on ) implicitdrag ( on ) dragexp ( 2 ) doage ( on ) externalforce ( on ) integratevel ( on ) usemass ( off ) integratepos ( on ) doreapparticles ( on ) reapatend ( on ) docollision ( off ) hitattribute ( off ) behaviorgroup ( "" ) creategroup ( off ) creategroupname ( "" ) usecolor ( off ) hitcolor ( 1 0 0 ) addhittotal ( on ) movetohit ( off ) collisionresponse ( none ) folder1 ( 0 ) addhitnum ( on ) addhitpos ( on ) addhitnml ( on ) addhitv ( on ) addhittime ( on ) addhitpath ( on ) addhitprim ( on ) addhituv ( on ) addimpacts ( off ) docollisionfeedback ( on ) doautosleep ( off ) sleep_startasleep ( off ) sleep_velocitythreshold ( 0.01 ) sleep_delay ( 0.10000000000000001 ) sleep_docolor ( off ) sleep_color ( 1 0 0 ) geodata ( Geometry ) address ( "" ) port ( 8000 ) jobname ( '${OS}_$F' ) slice ( 0 ) numslice ( 1 )
chlock popSolver -*
chautoscope popSolver -*
opcolor -c 0.80000001192092896 0.80000001192092896 0.80000001192092896 popSolver
opset -d off -r off -h off -f off -y off -t off -l off -s off -u off -c off -e on -b off popSolver
opexprlanguage -s hscript popSolver
opuserdata -n '___Version___' -v '' popSolver
opuserdata -n '___toolcount___' -v '1' popSolver
opuserdata -n '___toolid___' -v 'dynamics_poplocation' popSolver

# Node popsource_newPoints (Dop/popsource::2.0)
opadd -e -n popsource::2.0 popsource_newPoints
oplocate -x -1.1626019477844238 -y 10.014121055603027 popsource_newPoints
opspareds "" popsource_newPoints
chblockbegin
chadd -t 0 0 popsource_newPoints constantrate
chkey -t 0 -v 60 -m 0 -a 0 -A 0 -T a  -F 'if($F<ch("../../controls/endframe"), ch("../../controls/rate"), 0)' popsource_newPoints/constantrate
chblockend
opparm popsource_newPoints showguide ( on ) guidecolor ( 0 0 1 ) folder0 ( 0 0 0 0 0 ) emittype ( point ) usecontextgeo ( none ) dopobjects ( "" ) soppath ( /obj/inputs/OUT_emissionGeometry ) usetransform ( on ) source ( "" ) sourcegrouptype ( guess ) emitattrib ( "" ) relaxpoints ( off ) relaxiterations ( 10 ) scaleradiiby ( 1 ) usemaxradius ( on ) maxradius ( 10 ) scalebyarea ( off ) areascale ( 10 ) removeoverlap ( none ) impulseactiveate ( 1 ) impulserate ( 0 ) constantactivate ( 1 ) constantrate ( constantrate ) probemit ( on ) group ( "" ) seed ( 0 ) life ( 100 ) lifevar ( 0 ) jitterbirthtime ( positive ) jittersource ( none ) jittermethod ( topology ) initialstate ( free ) inheritattrib ( * ) initvel ( set ) inheritvel ( 1 ) vel ( 0 0 0 ) var ( 1 1 1 ) doid ( on ) streamname ( '$OS' ) bindgeo ( Geometry )
chlock popsource_newPoints -*
chautoscope popsource_newPoints -*
opcolor -c 0.80000001192092896 0.80000001192092896 0.80000001192092896 popsource_newPoints
opset -d off -r off -h off -f off -y off -t off -l off -s off -u off -c off -e on -b off popsource_newPoints
opexprlanguage -s hscript popsource_newPoints
opuserdata -n '___Version___' -v '' popsource_newPoints
opuserdata -n '___toolcount___' -v '2' popsource_newPoints
opuserdata -n '___toolid___' -v 'dynamics_popsource' popsource_newPoints

# Node popAdvectByVolumes (Dop/popadvectbyvolumes)
opadd -e -n popadvectbyvolumes popAdvectByVolumes
oplocate -x 3.8021400000000001 -y 7.6465899999999998 popAdvectByVolumes
opspareds "" popAdvectByVolumes
opparm popAdvectByVolumes  forceramp ( 2 )
opparm popAdvectByVolumes activate ( 1 ) usegroup ( on ) partgroup ( 'inLiquid onSurface' ) folder1 ( 0 0 0 ) velsource ( sop ) dopobj ( "" ) soppath ( /obj/inputs/OUT_liquidVelocity ) fieldname ( velocity ) velscale ( 1 ) advecttype ( pos ) velupdate ( none ) treataswind ( on ) forcescale ( 1 ) airresist ( 1 ) remapforce ( off ) forceramp ( 2 ) ignoremass ( on ) velblend ( 0.5 ) advectmethod ( rk3 ) cfl ( 1 ) uselocal ( off ) localexpression ( "" ) showguide ( on ) guideplane ( xy ) guideplaneoffset ( 0 ) guideres ( 0.5 ) guiderange ( 0 10 ) bindgeo ( Geometry ) vex_cwdpath ( . ) forceramp1pos ( 0 ) forceramp1value ( 1 ) forceramp1interp ( linear ) forceramp2pos ( 1 ) forceramp2value ( 1 ) forceramp2interp ( linear )
chlock popAdvectByVolumes -*
chautoscope popAdvectByVolumes -*
opcolor -c 0.80000001192092896 0.80000001192092896 0.80000001192092896 popAdvectByVolumes
opset -d off -r off -h off -f off -y off -t off -l off -s off -u off -c off -e on -b off popAdvectByVolumes
opexprlanguage -s hscript popAdvectByVolumes
opuserdata -n '___Version___' -v '' popAdvectByVolumes
opcf ..

# Node shapes (Object/geo)
opadd -e -n geo shapes
oplocate -x 7.0369882583618164 -y 6.8185887336730957 shapes
opspareds '    group { 	name	"stdswitcher5" 	label	"Transform"  	parm { 	    name	"keeppos" 	    baseparm 	    label	"Keep Position When Parenting" 	    export	none 	} 	parm { 	    name	"childcomp" 	    baseparm 	    label	"Child Compensation" 	    export	none 	} 	parm { 	    name	"pre_xform" 	    baseparm 	    label	"Pre-transform" 	    export	none 	} 	parm { 	    name	"xOrd" 	    baseparm 	    label	"Transform Order" 	    joinnext 	    export	none 	} 	parm { 	    name	"rOrd" 	    baseparm 	    label	"Rotate Order" 	    export	none 	} 	parm { 	    name	"t" 	    baseparm 	    label	"Translate" 	    export	all 	} 	parm { 	    name	"r" 	    baseparm 	    label	"Rotate" 	    export	all 	} 	parm { 	    name	"s" 	    baseparm 	    label	"Scale" 	    export	none 	} 	parm { 	    name	"p" 	    baseparm 	    label	"Pivot" 	    export	none 	} 	parm { 	    name	"scale" 	    baseparm 	    label	"Uniform Scale" 	    export	none 	} 	parm { 	    name	"lookatpath" 	    baseparm 	    label	"Look At" 	    export	none 	} 	parm { 	    name	"lookupobjpath" 	    baseparm 	    label	"Look Up Object" 	    export	none 	} 	parm { 	    name	"lookup" 	    baseparm 	    label	"Look At Up Vector" 	    export	none 	} 	parm { 	    name	"pathobjpath" 	    baseparm 	    label	"Path Object" 	    export	none 	} 	parm { 	    name	"roll" 	    baseparm 	    label	"Roll" 	    export	none 	} 	parm { 	    name	"pos" 	    baseparm 	    label	"Position" 	    export	none 	} 	parm { 	    name	"uparmtype" 	    baseparm 	    label	"Parameterization" 	    export	none 	} 	parm { 	    name	"pathorient" 	    baseparm 	    label	"Orient Along Path" 	    export	none 	} 	parm { 	    name	"up" 	    baseparm 	    label	"Orient Up Vector" 	    export	none 	} 	parm { 	    name	"bank" 	    baseparm 	    label	"Auto-Bank factor" 	    export	none 	}     }      group { 	name	"stdswitcher5_1" 	label	"Material"  	parm { 	    name	"shop_materialpath" 	    baseparm 	    label	"Material" 	    joinnext 	    export	none 	} 	parm { 	    name	"shop_materialopts" 	    baseparm 	    label	"Options" 	    export	none 	}     }      group { 	name	"stdswitcher5_2" 	label	"Render"  	parm { 	    name	"tdisplay" 	    baseparm 	    label	"Display" 	    joinnext 	    export	none 	} 	parm { 	    name	"display" 	    baseparm 	    label	"Display" 	    export	none 	} 	parm { 	    name	"viewportlod" 	    label	"Display As" 	    type	ordinal 	    default	{ "full" } 	    help	"Choose how the object\'s geometry should be rendered in the viewport" 	    menu	{ 		"full"	"Full Geometry" 		"points"	"Point Cloud" 		"box"	"Bounding Box" 		"centroid"	"Centroid" 		"hidden"	"Hidden" 		"subd"	"Subdivision Surface / Curves" 	    } 	    range	{ 0 1 } 	    export	none 	    parmtag	{ "spare_category" "Render" } 	} 	parm { 	    name	"vm_rendervisibility" 	    label	"Render Visibility" 	    type	string 	    default	{ "*" } 	    menureplace	{ 		"*"	"Visible to all" 		"primary"	"Visible only to primary rays" 		"primary|shadow"	"Visible only to primary and shadow rays" 		"-primary"	"Invisible to primary rays (Phantom)" 		"-diffuse"	"Invisible to diffuse rays" 		"-diffuse&-reflect&-refract"	"Invisible to secondary rays" 		""	"Invisible (Unrenderable)" 	    } 	    range	{ 0 1 } 	    export	none 	    parmtag	{ "spare_category" "Render" } 	} 	parm { 	    name	"vm_rendersubd" 	    label	"Render Polygons As Subdivision (Mantra)" 	    type	toggle 	    default	{ "0" } 	    range	{ 0 1 } 	    export	none 	    parmtag	{ "spare_category" "Geometry" } 	} 	parm { 	    name	"vm_subdstyle" 	    label	"Subdivision Style" 	    type	string 	    default	{ "mantra_catclark" } 	    hidewhen	"{ vm_rendersubd == 0 }" 	    menu	{ 		"mantra_catclark"	"Mantra Catmull-Clark" 		"osd_catclark"	"OpenSubdiv Catmull-Clark" 	    } 	    range	{ 0 1 } 	    export	none 	    parmtag	{ "spare_category" "Geometry" } 	} 	parm { 	    name	"vm_subdgroup" 	    label	"Subdivision Group" 	    type	string 	    default	{ "" } 	    hidewhen	"{ vm_rendersubd == 0 }" 	    range	{ 0 1 } 	    export	none 	    parmtag	{ "spare_category" "Geometry" } 	} 	group { 	    name	"folder0" 	    label	"Shading"  	    parm { 		name	"categories" 		label	"Categories" 		type	string 		default	{ "" } 		help	"A list of tags which can be used to select the object" 		range	{ 0 1 } 		export	none 		parmtag	{ "spare_category" "Shading" } 	    } 	    parm { 		name	"reflectmask" 		label	"Reflection Mask" 		type	oplist 		default	{ "*" } 		help	"Objects that will be reflected on this object." 		range	{ 0 1 } 		export	none 		parmtag	{ "opexpand" "1" } 		parmtag	{ "opfilter" "!!OBJ/GEOMETRY!!" } 		parmtag	{ "oprelative" "/obj" } 		parmtag	{ "spare_category" "Shading" } 	    } 	    parm { 		name	"refractmask" 		label	"Refraction Mask" 		type	oplist 		default	{ "*" } 		help	"Objects that will be refracted on this object." 		range	{ 0 1 } 		export	none 		parmtag	{ "opexpand" "1" } 		parmtag	{ "opfilter" "!!OBJ/GEOMETRY!!" } 		parmtag	{ "oprelative" "/obj" } 		parmtag	{ "spare_category" "Shading" } 	    } 	    parm { 		name	"lightmask" 		label	"Light Mask" 		type	oplist 		default	{ "*" } 		help	"Lights that illuminate this object." 		range	{ 0 1 } 		export	none 		parmtag	{ "opexpand" "1" } 		parmtag	{ "opfilter" "!!OBJ/LIGHT!!" } 		parmtag	{ "oprelative" "/obj" } 		parmtag	{ "spare_category" "Shading" } 	    } 	    parm { 		name	"vm_volumefilter" 		label	"Volume Filter" 		type	string 		default	{ "box" } 		menu	{ 		    "box"	"Box Filter" 		    "gaussian"	"Gaussian" 		    "bartlett"	"Bartlett (triangle)" 		    "catrom"	"Catmull-Rom" 		    "hanning"	"Hanning" 		    "blackman"	"Blackman" 		    "sinc"	"Sinc (sharpening)" 		} 		range	{ 0 1 } 		export	none 		parmtag	{ "spare_category" "Shading" } 	    } 	    parm { 		name	"vm_volumefilterwidth" 		label	"Volume Filter Width" 		type	float 		default	{ "1" } 		range	{ 0.001 5 } 		export	none 		parmtag	{ "spare_category" "Shading" } 	    } 	    parm { 		name	"vm_matte" 		label	"Matte shading" 		type	toggle 		default	{ "0" } 		range	{ 0 1 } 		export	none 		parmtag	{ "spare_category" "Shading" } 	    } 	    parm { 		name	"vm_rayshade" 		label	"Raytrace Shading" 		type	toggle 		default	{ "0" } 		range	{ 0 1 } 		export	none 		parmtag	{ "spare_category" "Shading" } 	    } 	}  	group { 	    name	"folder0_1" 	    label	"Sampling"  	    parm { 		name	"geo_velocityblur" 		label	"Geometry Velocity Blur" 		type	toggle 		default	{ "0" } 		disablewhen	"{ allowmotionblur == 0 }" 		range	{ 0 1 } 		export	none 		parmtag	{ "spare_category" "Sampling" } 	    } 	}  	group { 	    name	"folder0_2" 	    label	"Dicing"  	    parm { 		name	"vm_shadingquality" 		label	"Shading Quality" 		type	float 		default	{ "1" } 		range	{ 0 10 } 		export	none 		parmtag	{ "spare_category" "Dicing" } 	    } 	    parm { 		name	"vm_flatness" 		label	"Dicing Flatness" 		type	float 		default	{ "0.05" } 		range	{ 0 1 } 		export	none 		parmtag	{ "spare_category" "Dicing" } 	    } 	    parm { 		name	"vm_raypredice" 		label	"Ray Predicing" 		type	integer 		default	{ "0" } 		menu	{ 		    "0"	"Disable Predicing" 		    "1"	"Full Predicing" 		    "2"	"Precompute Bounds" 		} 		range	{ 0 10 } 		export	none 		parmtag	{ "spare_category" "Dicing" } 	    } 	    parm { 		name	"vm_curvesurface" 		label	"Shade Curves As Surfaces" 		type	toggle 		default	{ "0" } 		range	{ 0 1 } 		export	none 		parmtag	{ "spare_category" "Dicing" } 	    } 	}  	group { 	    name	"folder0_3" 	    label	"Geometry"  	    parm { 		name	"vm_rmbackface" 		label	"Backface Removal" 		type	toggle 		default	{ "0" } 		range	{ 0 1 } 		export	none 		parmtag	{ "spare_category" "Geometry" } 	    } 	    parm { 		name	"shop_geometrypath" 		label	"Procedural Shader" 		type	oppath 		default	{ "" } 		range	{ 0 1 } 		export	none 		parmtag	{ "opfilter" "!!SHOP/GEOMETRY!!" } 		parmtag	{ "oprelative" "." } 		parmtag	{ "spare_category" "Geometry" } 	    } 	    parm { 		name	"vm_forcegeometry" 		label	"Force Procedural Geometry Output" 		type	toggle 		default	{ "1" } 		range	{ 0 1 } 		export	none 		parmtag	{ "spare_category" "Geometry" } 	    } 	    parm { 		name	"vm_rendersubdcurves" 		label	"Render Polygon Curves As Subdivision (Mantra)" 		type	toggle 		default	{ "0" } 		range	{ 0 1 } 		export	none 		parmtag	{ "spare_category" "Geometry" } 	    } 	    parm { 		name	"vm_renderpoints" 		label	"Render As Points (Mantra)" 		type	integer 		default	{ "2" } 		menu	{ 		    "0"	"No Point Rendering" 		    "1"	"Render Only Points" 		    "2"	"Render Unconnected Points" 		} 		range	{ 0 10 } 		export	none 		parmtag	{ "spare_category" "Geometry" } 	    } 	    parm { 		name	"vm_renderpointsas" 		label	"Render Points As (Mantra)" 		type	integer 		default	{ "0" } 		disablewhen	"{ vm_renderpoints == 0 }" 		menu	{ 		    "0"	"Spheres" 		    "1"	"Circles" 		} 		range	{ 0 10 } 		export	none 		parmtag	{ "spare_category" "Geometry" } 	    } 	    parm { 		name	"vm_usenforpoints" 		label	"Use N For Point Rendering" 		type	toggle 		default	{ "0" } 		disablewhen	"{ vm_renderpoints == 0 }" 		range	{ 0 1 } 		export	none 		parmtag	{ "spare_category" "Geometry" } 	    } 	    parm { 		name	"vm_pointscale" 		label	"Point Scale" 		type	float 		default	{ "1" } 		disablewhen	"{ vm_renderpoints == 0 }" 		range	{ 0! 10 } 		export	none 		parmtag	{ "spare_category" "Geometry" } 	    } 	    parm { 		name	"vm_pscalediameter" 		label	"Treat Point Scale as Diameter Instead of Radius" 		type	toggle 		default	{ "0" } 		range	{ 0 1 } 		export	none 		parmtag	{ "spare_category" "Geometry" } 	    } 	    parm { 		name	"vm_metavolume" 		label	"Metaballs as Volume" 		type	toggle 		default	{ "0" } 		range	{ 0 1 } 		export	none 		parmtag	{ "spare_category" "Geometry" } 	    } 	    parm { 		name	"vm_coving" 		label	"Coving" 		type	integer 		default	{ "1" } 		menu	{ 		    "0"	"Disable Coving" 		    "1"	"Coving for displacement/sub-d" 		    "2"	"Coving for all primitives" 		} 		range	{ 0 10 } 		export	none 		parmtag	{ "spare_category" "Geometry" } 	    } 	    parm { 		name	"vm_materialoverride" 		label	"Material Override" 		type	string 		default	{ "compact" } 		menu	{ 		    "none"	"Disabled" 		    "full"	"Evaluate for Each Primitve/Point" 		    "compact"	"Evaluate Once" 		} 		range	{ 0 1 } 		export	none 		parmtag	{ "spare_category" "Geometry" } 	    } 	    parm { 		name	"vm_computeN" 		label	"Automatically Compute Normals" 		type	toggle 		default	{ "1" } 		range	{ 0 1 } 		export	none 		parmtag	{ "spare_category" "Geometry" } 	    } 	    parm { 		name	"vm_overridedetail" 		label	"Ignore Geometry Attribute Shaders" 		type	toggle 		default	{ "0" } 		range	{ 0 1 } 		export	none 		parmtag	{ "spare_category" "Geometry" } 	    } 	}      }      group { 	name	"stdswitcher5_3" 	label	"Misc"  	parm { 	    name	"use_dcolor" 	    baseparm 	    label	"Set Wireframe Color" 	    export	none 	} 	parm { 	    name	"dcolor" 	    baseparm 	    label	"Wireframe Color" 	    export	none 	} 	parm { 	    name	"picking" 	    baseparm 	    label	"Viewport Selecting Enabled" 	    export	none 	} 	parm { 	    name	"pickscript" 	    baseparm 	    label	"Select Script" 	    export	none 	} 	parm { 	    name	"caching" 	    baseparm 	    label	"Cache Object Transform" 	    export	none 	} 	parm { 	    name	"vport_shadeopen" 	    baseparm 	    label	"Shade Open Curves In Viewport" 	    export	none 	} 	parm { 	    name	"vport_displayassubdiv" 	    baseparm 	    label	"Display as Subdivision in Viewport" 	    invisible 	    export	none 	} 	parm { 	    name	"vport_onionskin" 	    baseparm 	    label	"Onion Skinning" 	    export	none 	}     }  ' shapes
opset -S on shapes
opparm -V 15.0.416 shapes stdswitcher ( 0 0 0 0 ) keeppos ( off ) childcomp ( off ) pre_xform ( clean ) xOrd ( srt ) rOrd ( xyz ) t ( 0 0 0 ) r ( 0 0 0 ) s ( 1 1 1 ) p ( 0 0 0 ) scale ( 1 ) lookatpath ( "" ) lookupobjpath ( "" ) lookup ( on ) pathobjpath ( "" ) roll ( 0 ) pos ( 0 ) uparmtype ( arc ) pathorient ( 1 ) up ( 0 1 0 ) bank ( 0 ) shop_materialpath ( "" ) shop_materialopts ( override ) tdisplay ( off ) display ( 1 ) use_dcolor ( off ) dcolor ( 1 1 1 ) picking ( on ) pickscript ( "" ) caching ( off ) vport_shadeopen ( off ) vport_displayassubdiv ( off ) vport_onionskin ( off ) stdswitcher5 ( 0 0 0 0 ) viewportlod ( full ) vm_rendervisibility ( * ) vm_rendersubd ( off ) vm_subdstyle ( mantra_catclark ) vm_subdgroup ( "" ) folder0 ( 0 0 0 0 ) categories ( "" ) reflectmask ( * ) refractmask ( * ) lightmask ( * ) vm_volumefilter ( box ) vm_volumefilterwidth ( 1 ) vm_matte ( off ) vm_rayshade ( off ) geo_velocityblur ( off ) vm_shadingquality ( 1 ) vm_flatness ( 0.050000000000000003 ) vm_raypredice ( 0 ) vm_curvesurface ( off ) vm_rmbackface ( off ) shop_geometrypath ( "" ) vm_forcegeometry ( on ) vm_rendersubdcurves ( off ) vm_renderpoints ( 2 ) vm_renderpointsas ( 0 ) vm_usenforpoints ( off ) vm_pointscale ( 1 ) vm_pscalediameter ( off ) vm_metavolume ( off ) vm_coving ( 1 ) vm_materialoverride ( compact ) vm_computeN ( on ) vm_overridedetail ( off )
chlock shapes -*
chautoscope shapes -* +tx +ty +tz +rx +ry +rz +sx +sy +sz
opcolor -c 0.80000001192092896 0.80000001192092896 0.80000001192092896 shapes
opset -d on -r off -h off -f off -y off -t off -l off -s off -u off -c off -e on -b off -x off shapes
opexprlanguage -s hscript shapes
opuserdata -n '___Version___' -v '15.0.416' shapes
opcf shapes

# Node color_inLiquid (Sop/color)
opadd -e -n color color_inLiquid
oplocate -x 4.6199300000000001 -y 3.2110500000000002 color_inLiquid
opspareds "" color_inLiquid
opparm color_inLiquid  ramp ( 2 )
opparm color_inLiquid group ( inLiquid ) grouptype ( points ) class ( 2 ) colortype ( 0 ) color ( 0 0.5 0.25 ) seed ( 0 ) rampattribute ( "" ) ramprange ( 0 1 ) ramp ( 2 ) ramp1pos ( 0 ) ramp1c ( 0 0 0 ) ramp1interp ( linear ) ramp2pos ( 1 ) ramp2c ( 1 1 1 ) ramp2interp ( linear )
chlock color_inLiquid -*
chautoscope color_inLiquid -*
opcolor -c 0.80000001192092896 0.80000001192092896 0.80000001192092896 color_inLiquid
opset -d off -r off -h off -f off -y off -t off -l off -s off -u off -c off -e on -b off color_inLiquid
opexprlanguage -s hscript color_inLiquid
opuserdata -n '___Version___' -v '' color_inLiquid
opuserdata -n '___toolcount___' -v '2' color_inLiquid
opuserdata -n '___toolid___' -v 'sop_color' color_inLiquid

# Node color_inAir (Sop/color)
opadd -e -n color color_inAir
oplocate -x 4.6199300000000001 -y 4.4218299999999999 color_inAir
opspareds "" color_inAir
opparm color_inAir  ramp ( 2 )
opparm color_inAir group ( inAir ) grouptype ( points ) class ( 2 ) colortype ( 0 ) color ( 0 0.45000000000000001 0.90000000000000002 ) seed ( 0 ) rampattribute ( "" ) ramprange ( 0 1 ) ramp ( 2 ) ramp1pos ( 0 ) ramp1c ( 0 0 0 ) ramp1interp ( linear ) ramp2pos ( 1 ) ramp2c ( 1 1 1 ) ramp2interp ( linear )
chlock color_inAir -*
chautoscope color_inAir -*
opcolor -c 0.80000001192092896 0.80000001192092896 0.80000001192092896 color_inAir
opset -d off -r off -h off -f off -y off -t off -l off -s off -u off -c off -e on -b off color_inAir
opexprlanguage -s hscript color_inAir
opuserdata -n '___Version___' -v '' color_inAir
opuserdata -n '___toolcount___' -v '2' color_inAir
opuserdata -n '___toolid___' -v 'sop_color' color_inAir

# Node color_onSurface (Sop/color)
opadd -e -n color color_onSurface
oplocate -x 4.6143200000000002 -y 3.82138 color_onSurface
opspareds "" color_onSurface
opparm color_onSurface  ramp ( 2 )
opparm color_onSurface group ( onSurface ) grouptype ( points ) class ( 2 ) colortype ( 0 ) color ( 0.5 0.5 0 ) seed ( 0 ) rampattribute ( "" ) ramprange ( 0 1 ) ramp ( 2 ) ramp1pos ( 0 ) ramp1c ( 0 0 0 ) ramp1interp ( linear ) ramp2pos ( 1 ) ramp2c ( 1 1 1 ) ramp2interp ( linear )
chlock color_onSurface -*
chautoscope color_onSurface -*
opcolor -c 0.80000001192092896 0.80000001192092896 0.80000001192092896 color_onSurface
opset -d off -r off -h off -f off -y off -t off -l off -s off -u off -c off -e on -b off color_onSurface
opexprlanguage -s hscript color_onSurface
opuserdata -n '___Version___' -v '' color_onSurface
opuserdata -n '___toolcount___' -v '2' color_onSurface
opuserdata -n '___toolid___' -v 'sop_color' color_onSurface

# Node color_outside (Sop/color)
opadd -e -n color color_outside
oplocate -x 4.6199300000000001 -y 2.6251699999999998 color_outside
opspareds "" color_outside
opparm color_outside  ramp ( 2 )
opparm color_outside group ( outside ) grouptype ( points ) class ( 2 ) colortype ( 0 ) color ( 0.90000000000000002 0 0 ) seed ( 0 ) rampattribute ( "" ) ramprange ( 0 1 ) ramp ( 2 ) ramp1pos ( 0 ) ramp1c ( 0 0 0 ) ramp1interp ( linear ) ramp2pos ( 1 ) ramp2c ( 1 1 1 ) ramp2interp ( linear )
chlock color_outside -*
chautoscope color_outside -*
opcolor -c 0.80000001192092896 0.80000001192092896 0.80000001192092896 color_outside
opset -d off -r off -h off -f off -y off -t off -l off -s off -u off -c off -e on -b off color_outside
opexprlanguage -s hscript color_outside
opuserdata -n '___Version___' -v '' color_outside
opuserdata -n '___toolcount___' -v '2' color_outside
opuserdata -n '___toolid___' -v 'sop_color' color_outside
opcf ..

# Node forces (Object/geo)
opadd -e -n geo forces
oplocate -x 9.4335269927978516 -y 8.2178096771240234 forces
opspareds '    group { 	name	"stdswitcher5" 	label	"Transform"  	parm { 	    name	"keeppos" 	    baseparm 	    label	"Keep Position When Parenting" 	    export	none 	} 	parm { 	    name	"childcomp" 	    baseparm 	    label	"Child Compensation" 	    export	none 	} 	parm { 	    name	"pre_xform" 	    baseparm 	    label	"Pre-transform" 	    export	none 	} 	parm { 	    name	"xOrd" 	    baseparm 	    label	"Transform Order" 	    joinnext 	    export	none 	} 	parm { 	    name	"rOrd" 	    baseparm 	    label	"Rotate Order" 	    export	none 	} 	parm { 	    name	"t" 	    baseparm 	    label	"Translate" 	    export	all 	} 	parm { 	    name	"r" 	    baseparm 	    label	"Rotate" 	    export	all 	} 	parm { 	    name	"s" 	    baseparm 	    label	"Scale" 	    export	none 	} 	parm { 	    name	"p" 	    baseparm 	    label	"Pivot" 	    export	none 	} 	parm { 	    name	"scale" 	    baseparm 	    label	"Uniform Scale" 	    export	none 	} 	parm { 	    name	"lookatpath" 	    baseparm 	    label	"Look At" 	    export	none 	} 	parm { 	    name	"lookupobjpath" 	    baseparm 	    label	"Look Up Object" 	    export	none 	} 	parm { 	    name	"lookup" 	    baseparm 	    label	"Look At Up Vector" 	    export	none 	} 	parm { 	    name	"pathobjpath" 	    baseparm 	    label	"Path Object" 	    export	none 	} 	parm { 	    name	"roll" 	    baseparm 	    label	"Roll" 	    export	none 	} 	parm { 	    name	"pos" 	    baseparm 	    label	"Position" 	    export	none 	} 	parm { 	    name	"uparmtype" 	    baseparm 	    label	"Parameterization" 	    export	none 	} 	parm { 	    name	"pathorient" 	    baseparm 	    label	"Orient Along Path" 	    export	none 	} 	parm { 	    name	"up" 	    baseparm 	    label	"Orient Up Vector" 	    export	none 	} 	parm { 	    name	"bank" 	    baseparm 	    label	"Auto-Bank factor" 	    export	none 	}     }      group { 	name	"stdswitcher5_1" 	label	"Material"  	parm { 	    name	"shop_materialpath" 	    baseparm 	    label	"Material" 	    joinnext 	    export	none 	} 	parm { 	    name	"shop_materialopts" 	    baseparm 	    label	"Options" 	    export	none 	}     }      group { 	name	"stdswitcher5_2" 	label	"Render"  	parm { 	    name	"tdisplay" 	    baseparm 	    label	"Display" 	    joinnext 	    export	none 	} 	parm { 	    name	"display" 	    baseparm 	    label	"Display" 	    export	none 	} 	parm { 	    name	"viewportlod" 	    label	"Display As" 	    type	ordinal 	    default	{ "full" } 	    help	"Choose how the object\'s geometry should be rendered in the viewport" 	    menu	{ 		"full"	"Full Geometry" 		"points"	"Point Cloud" 		"box"	"Bounding Box" 		"centroid"	"Centroid" 		"hidden"	"Hidden" 		"subd"	"Subdivision Surface / Curves" 	    } 	    range	{ 0 1 } 	    export	none 	    parmtag	{ "spare_category" "Render" } 	} 	parm { 	    name	"vm_rendervisibility" 	    label	"Render Visibility" 	    type	string 	    default	{ "*" } 	    menureplace	{ 		"*"	"Visible to all" 		"primary"	"Visible only to primary rays" 		"primary|shadow"	"Visible only to primary and shadow rays" 		"-primary"	"Invisible to primary rays (Phantom)" 		"-diffuse"	"Invisible to diffuse rays" 		"-diffuse&-reflect&-refract"	"Invisible to secondary rays" 		""	"Invisible (Unrenderable)" 	    } 	    range	{ 0 1 } 	    export	none 	    parmtag	{ "spare_category" "Render" } 	} 	parm { 	    name	"vm_rendersubd" 	    label	"Render Polygons As Subdivision (Mantra)" 	    type	toggle 	    default	{ "0" } 	    range	{ 0 1 } 	    export	none 	    parmtag	{ "spare_category" "Geometry" } 	} 	parm { 	    name	"vm_subdstyle" 	    label	"Subdivision Style" 	    type	string 	    default	{ "mantra_catclark" } 	    hidewhen	"{ vm_rendersubd == 0 }" 	    menu	{ 		"mantra_catclark"	"Mantra Catmull-Clark" 		"osd_catclark"	"OpenSubdiv Catmull-Clark" 	    } 	    range	{ 0 1 } 	    export	none 	    parmtag	{ "spare_category" "Geometry" } 	} 	parm { 	    name	"vm_subdgroup" 	    label	"Subdivision Group" 	    type	string 	    default	{ "" } 	    hidewhen	"{ vm_rendersubd == 0 }" 	    range	{ 0 1 } 	    export	none 	    parmtag	{ "spare_category" "Geometry" } 	} 	group { 	    name	"folder0" 	    label	"Shading"  	    parm { 		name	"categories" 		label	"Categories" 		type	string 		default	{ "" } 		help	"A list of tags which can be used to select the object" 		range	{ 0 1 } 		export	none 		parmtag	{ "spare_category" "Shading" } 	    } 	    parm { 		name	"reflectmask" 		label	"Reflection Mask" 		type	oplist 		default	{ "*" } 		help	"Objects that will be reflected on this object." 		range	{ 0 1 } 		export	none 		parmtag	{ "opexpand" "1" } 		parmtag	{ "opfilter" "!!OBJ/GEOMETRY!!" } 		parmtag	{ "oprelative" "/obj" } 		parmtag	{ "spare_category" "Shading" } 	    } 	    parm { 		name	"refractmask" 		label	"Refraction Mask" 		type	oplist 		default	{ "*" } 		help	"Objects that will be refracted on this object." 		range	{ 0 1 } 		export	none 		parmtag	{ "opexpand" "1" } 		parmtag	{ "opfilter" "!!OBJ/GEOMETRY!!" } 		parmtag	{ "oprelative" "/obj" } 		parmtag	{ "spare_category" "Shading" } 	    } 	    parm { 		name	"lightmask" 		label	"Light Mask" 		type	oplist 		default	{ "*" } 		help	"Lights that illuminate this object." 		range	{ 0 1 } 		export	none 		parmtag	{ "opexpand" "1" } 		parmtag	{ "opfilter" "!!OBJ/LIGHT!!" } 		parmtag	{ "oprelative" "/obj" } 		parmtag	{ "spare_category" "Shading" } 	    } 	    parm { 		name	"vm_volumefilter" 		label	"Volume Filter" 		type	string 		default	{ "box" } 		menu	{ 		    "box"	"Box Filter" 		    "gaussian"	"Gaussian" 		    "bartlett"	"Bartlett (triangle)" 		    "catrom"	"Catmull-Rom" 		    "hanning"	"Hanning" 		    "blackman"	"Blackman" 		    "sinc"	"Sinc (sharpening)" 		} 		range	{ 0 1 } 		export	none 		parmtag	{ "spare_category" "Shading" } 	    } 	    parm { 		name	"vm_volumefilterwidth" 		label	"Volume Filter Width" 		type	float 		default	{ "1" } 		range	{ 0.001 5 } 		export	none 		parmtag	{ "spare_category" "Shading" } 	    } 	    parm { 		name	"vm_matte" 		label	"Matte shading" 		type	toggle 		default	{ "0" } 		range	{ 0 1 } 		export	none 		parmtag	{ "spare_category" "Shading" } 	    } 	    parm { 		name	"vm_rayshade" 		label	"Raytrace Shading" 		type	toggle 		default	{ "0" } 		range	{ 0 1 } 		export	none 		parmtag	{ "spare_category" "Shading" } 	    } 	}  	group { 	    name	"folder0_1" 	    label	"Sampling"  	    parm { 		name	"geo_velocityblur" 		label	"Geometry Velocity Blur" 		type	toggle 		default	{ "0" } 		disablewhen	"{ allowmotionblur == 0 }" 		range	{ 0 1 } 		export	none 		parmtag	{ "spare_category" "Sampling" } 	    } 	}  	group { 	    name	"folder0_2" 	    label	"Dicing"  	    parm { 		name	"vm_shadingquality" 		label	"Shading Quality" 		type	float 		default	{ "1" } 		range	{ 0 10 } 		export	none 		parmtag	{ "spare_category" "Dicing" } 	    } 	    parm { 		name	"vm_flatness" 		label	"Dicing Flatness" 		type	float 		default	{ "0.05" } 		range	{ 0 1 } 		export	none 		parmtag	{ "spare_category" "Dicing" } 	    } 	    parm { 		name	"vm_raypredice" 		label	"Ray Predicing" 		type	integer 		default	{ "0" } 		menu	{ 		    "0"	"Disable Predicing" 		    "1"	"Full Predicing" 		    "2"	"Precompute Bounds" 		} 		range	{ 0 10 } 		export	none 		parmtag	{ "spare_category" "Dicing" } 	    } 	    parm { 		name	"vm_curvesurface" 		label	"Shade Curves As Surfaces" 		type	toggle 		default	{ "0" } 		range	{ 0 1 } 		export	none 		parmtag	{ "spare_category" "Dicing" } 	    } 	}  	group { 	    name	"folder0_3" 	    label	"Geometry"  	    parm { 		name	"vm_rmbackface" 		label	"Backface Removal" 		type	toggle 		default	{ "0" } 		range	{ 0 1 } 		export	none 		parmtag	{ "spare_category" "Geometry" } 	    } 	    parm { 		name	"shop_geometrypath" 		label	"Procedural Shader" 		type	oppath 		default	{ "" } 		range	{ 0 1 } 		export	none 		parmtag	{ "opfilter" "!!SHOP/GEOMETRY!!" } 		parmtag	{ "oprelative" "." } 		parmtag	{ "spare_category" "Geometry" } 	    } 	    parm { 		name	"vm_forcegeometry" 		label	"Force Procedural Geometry Output" 		type	toggle 		default	{ "1" } 		range	{ 0 1 } 		export	none 		parmtag	{ "spare_category" "Geometry" } 	    } 	    parm { 		name	"vm_rendersubdcurves" 		label	"Render Polygon Curves As Subdivision (Mantra)" 		type	toggle 		default	{ "0" } 		range	{ 0 1 } 		export	none 		parmtag	{ "spare_category" "Geometry" } 	    } 	    parm { 		name	"vm_renderpoints" 		label	"Render As Points (Mantra)" 		type	integer 		default	{ "2" } 		menu	{ 		    "0"	"No Point Rendering" 		    "1"	"Render Only Points" 		    "2"	"Render Unconnected Points" 		} 		range	{ 0 10 } 		export	none 		parmtag	{ "spare_category" "Geometry" } 	    } 	    parm { 		name	"vm_renderpointsas" 		label	"Render Points As (Mantra)" 		type	integer 		default	{ "0" } 		disablewhen	"{ vm_renderpoints == 0 }" 		menu	{ 		    "0"	"Spheres" 		    "1"	"Circles" 		} 		range	{ 0 10 } 		export	none 		parmtag	{ "spare_category" "Geometry" } 	    } 	    parm { 		name	"vm_usenforpoints" 		label	"Use N For Point Rendering" 		type	toggle 		default	{ "0" } 		disablewhen	"{ vm_renderpoints == 0 }" 		range	{ 0 1 } 		export	none 		parmtag	{ "spare_category" "Geometry" } 	    } 	    parm { 		name	"vm_pointscale" 		label	"Point Scale" 		type	float 		default	{ "1" } 		disablewhen	"{ vm_renderpoints == 0 }" 		range	{ 0! 10 } 		export	none 		parmtag	{ "spare_category" "Geometry" } 	    } 	    parm { 		name	"vm_pscalediameter" 		label	"Treat Point Scale as Diameter Instead of Radius" 		type	toggle 		default	{ "0" } 		range	{ 0 1 } 		export	none 		parmtag	{ "spare_category" "Geometry" } 	    } 	    parm { 		name	"vm_metavolume" 		label	"Metaballs as Volume" 		type	toggle 		default	{ "0" } 		range	{ 0 1 } 		export	none 		parmtag	{ "spare_category" "Geometry" } 	    } 	    parm { 		name	"vm_coving" 		label	"Coving" 		type	integer 		default	{ "1" } 		menu	{ 		    "0"	"Disable Coving" 		    "1"	"Coving for displacement/sub-d" 		    "2"	"Coving for all primitives" 		} 		range	{ 0 10 } 		export	none 		parmtag	{ "spare_category" "Geometry" } 	    } 	    parm { 		name	"vm_materialoverride" 		label	"Material Override" 		type	string 		default	{ "compact" } 		menu	{ 		    "none"	"Disabled" 		    "full"	"Evaluate for Each Primitve/Point" 		    "compact"	"Evaluate Once" 		} 		range	{ 0 1 } 		export	none 		parmtag	{ "spare_category" "Geometry" } 	    } 	    parm { 		name	"vm_computeN" 		label	"Automatically Compute Normals" 		type	toggle 		default	{ "1" } 		range	{ 0 1 } 		export	none 		parmtag	{ "spare_category" "Geometry" } 	    } 	    parm { 		name	"vm_overridedetail" 		label	"Ignore Geometry Attribute Shaders" 		type	toggle 		default	{ "0" } 		range	{ 0 1 } 		export	none 		parmtag	{ "spare_category" "Geometry" } 	    } 	}      }      group { 	name	"stdswitcher5_3" 	label	"Misc"  	parm { 	    name	"use_dcolor" 	    baseparm 	    label	"Set Wireframe Color" 	    export	none 	} 	parm { 	    name	"dcolor" 	    baseparm 	    label	"Wireframe Color" 	    export	none 	} 	parm { 	    name	"picking" 	    baseparm 	    label	"Viewport Selecting Enabled" 	    export	none 	} 	parm { 	    name	"pickscript" 	    baseparm 	    label	"Select Script" 	    export	none 	} 	parm { 	    name	"caching" 	    baseparm 	    label	"Cache Object Transform" 	    export	none 	} 	parm { 	    name	"vport_shadeopen" 	    baseparm 	    label	"Shade Open Curves In Viewport" 	    export	none 	} 	parm { 	    name	"vport_displayassubdiv" 	    baseparm 	    label	"Display as Subdivision in Viewport" 	    invisible 	    export	none 	} 	parm { 	    name	"vport_onionskin" 	    baseparm 	    label	"Onion Skinning" 	    export	none 	}     }  ' forces
opset -S on forces
opparm -V 15.0.416 forces stdswitcher ( 0 0 0 0 ) keeppos ( off ) childcomp ( off ) pre_xform ( clean ) xOrd ( srt ) rOrd ( xyz ) t ( 0 0 0 ) r ( 0 0 0 ) s ( 1 1 1 ) p ( 0 0 0 ) scale ( 1 ) lookatpath ( "" ) lookupobjpath ( "" ) lookup ( on ) pathobjpath ( "" ) roll ( 0 ) pos ( 0 ) uparmtype ( arc ) pathorient ( 1 ) up ( 0 1 0 ) bank ( 0 ) shop_materialpath ( "" ) shop_materialopts ( override ) tdisplay ( off ) display ( 1 ) use_dcolor ( off ) dcolor ( 1 1 1 ) picking ( on ) pickscript ( "" ) caching ( off ) vport_shadeopen ( off ) vport_displayassubdiv ( off ) vport_onionskin ( off ) stdswitcher5 ( 0 0 0 0 ) viewportlod ( full ) vm_rendervisibility ( * ) vm_rendersubd ( off ) vm_subdstyle ( mantra_catclark ) vm_subdgroup ( "" ) folder0 ( 0 0 0 0 ) categories ( "" ) reflectmask ( * ) refractmask ( * ) lightmask ( * ) vm_volumefilter ( box ) vm_volumefilterwidth ( 1 ) vm_matte ( off ) vm_rayshade ( off ) geo_velocityblur ( off ) vm_shadingquality ( 1 ) vm_flatness ( 0.050000000000000003 ) vm_raypredice ( 0 ) vm_curvesurface ( off ) vm_rmbackface ( off ) shop_geometrypath ( "" ) vm_forcegeometry ( on ) vm_rendersubdcurves ( off ) vm_renderpoints ( 2 ) vm_renderpointsas ( 0 ) vm_usenforpoints ( off ) vm_pointscale ( 1 ) vm_pscalediameter ( off ) vm_metavolume ( off ) vm_coving ( 1 ) vm_materialoverride ( compact ) vm_computeN ( on ) vm_overridedetail ( off )
chlock forces -*
chautoscope forces -* +tx +ty +tz +rx +ry +rz +sx +sy +sz
opcolor -c 0.80000001192092896 0.80000001192092896 0.80000001192092896 forces
opset -d on -r off -h off -f off -y off -t off -l off -s off -u off -c off -e on -b off -x off forces
nbop Simulation add forces
opexprlanguage -s hscript forces
opuserdata -n '___Version___' -v '15.0.416' forces
opcf forces

# Network Box control_panel
nbadd control_panel
nblocate -x 5.81606 -y 7.21575 control_panel
nbsize -w 10.3603 -h 2.37745 control_panel
nbset  -m off control_panel
nbcolor -c 0.667 0 0 control_panel

# Node connectAdjacentPieces (Sop/connectadjacentpieces)
opadd -e -n connectadjacentpieces connectAdjacentPieces
oplocate -x 3.6175700000000002 -y 3.8641100000000002 connectAdjacentPieces
opspareds "" connectAdjacentPieces
opparm -V 1 connectAdjacentPieces connecttype ( pointcloud ) nptsperarea ( 100 ) relaxpoints ( off ) relaxiterations ( 1 ) uniformradius ( off ) searchradius ( 5 ) maxsearchpoints ( 200 ) maxconnections ( 1 ) distancefromcentroid ( 0 ) createlengthattrib ( on ) lengthattrib ( length )
chlock connectAdjacentPieces -*
chautoscope connectAdjacentPieces -*
opcolor -c 0.80000001192092896 0.80000001192092896 0.80000001192092896 connectAdjacentPieces
opset -d off -r off -h off -f off -y off -t off -l off -s off -u off -c off -e on -b off connectAdjacentPieces
opexprlanguage -s hscript connectAdjacentPieces
opuserdata -n '___Version___' -v '1' connectAdjacentPieces
opuserdata -n '___toolcount___' -v '6' connectAdjacentPieces
opuserdata -n '___toolid___' -v 'dynamics_gluenetwork' connectAdjacentPieces

# Node attributeWrangle_orientForce (Sop/attribwrangle)
opadd -e -n attribwrangle attributeWrangle_orientForce
oplocate -x 13.996600000000001 -y 2.6255700000000002 attributeWrangle_orientForce
opspareds "" attributeWrangle_orientForce
opparm attributeWrangle_orientForce  bindings ( 0 ) groupbindings ( 0 )
opparm attributeWrangle_orientForce folder0 ( 0 0 ) group ( "" ) grouptype ( guess ) class ( vertex ) vex_numcount ( 10 ) vex_threadjobsize ( 1024 ) snippet ( 'v@strongInteraction = f@sign * v@strongInteraction;\nv@weakInteraction = f@sign * v@weakInteraction;' ) exportlist ( * ) vex_strict ( off ) autobind ( on ) bindings ( 0 ) groupautobind ( on ) groupbindings ( 0 ) vex_cwdpath ( . ) vex_outputmask ( * ) vex_updatenmls ( off ) vex_matchattrib ( id )
chlock attributeWrangle_orientForce -*
chautoscope attributeWrangle_orientForce -*
opcolor -c 0.80000001192092896 0.80000001192092896 0.80000001192092896 attributeWrangle_orientForce
opset -d off -r off -h off -f off -y off -t off -l off -s off -u off -c off -e on -b off attributeWrangle_orientForce
opexprlanguage -s hscript attributeWrangle_orientForce
opuserdata -n '___Version___' -v '' attributeWrangle_orientForce

# Node attributeWrangle_strongInteraction (Sop/attribwrangle)
opadd -e -n attribwrangle attributeWrangle_strongInteraction
oplocate -x 14.006399999999999 -y 6.41852 attributeWrangle_strongInteraction
opspareds "" attributeWrangle_strongInteraction
opparm attributeWrangle_strongInteraction  bindings ( 0 ) groupbindings ( 0 )
opparm attributeWrangle_strongInteraction folder0 ( 0 0 ) group ( strongInteraction ) grouptype ( prims ) class ( primitive ) vex_numcount ( 10 ) vex_threadjobsize ( 1024 ) snippet ( 'v@strongInteraction = ch("../controls/stronginteraction") * (f@length - f@restlength) * v@link;' ) exportlist ( * ) vex_strict ( off ) autobind ( on ) bindings ( 0 ) groupautobind ( on ) groupbindings ( 0 ) vex_cwdpath ( . ) vex_outputmask ( * ) vex_updatenmls ( off ) vex_matchattrib ( id )
chlock attributeWrangle_strongInteraction -*
chautoscope attributeWrangle_strongInteraction -*
opcolor -c 0.80000001192092896 0.80000001192092896 0.80000001192092896 attributeWrangle_strongInteraction
opset -d off -r off -h off -f off -y off -t off -l off -s off -u off -c off -e on -b off attributeWrangle_strongInteraction
opexprlanguage -s hscript attributeWrangle_strongInteraction
opuserdata -n '___Version___' -v '' attributeWrangle_strongInteraction

# Node attributeWrangle_restlength (Sop/attribwrangle)
opadd -e -n attribwrangle attributeWrangle_restlength
oplocate -x 3.6175700000000002 -y 1.46475 attributeWrangle_restlength
opspareds "" attributeWrangle_restlength
opparm attributeWrangle_restlength  bindings ( 0 ) groupbindings ( 0 )
opparm attributeWrangle_restlength folder0 ( 0 0 ) group ( "" ) grouptype ( guess ) class ( primitive ) vex_numcount ( 10 ) vex_threadjobsize ( 1024 ) snippet ( 'f@wetness=0.2;\nf@restlength=sqrt(f@Ri*f@Ri+f@Rj*f@Rj+(3*f@wetness-1)*f@Ri*f@Rj);' ) exportlist ( * ) vex_strict ( off ) autobind ( on ) bindings ( 0 ) groupautobind ( on ) groupbindings ( 0 ) vex_cwdpath ( . ) vex_outputmask ( * ) vex_updatenmls ( off ) vex_matchattrib ( id )
chlock attributeWrangle_restlength -*
chautoscope attributeWrangle_restlength -*
opcolor -c 0.80000001192092896 0.80000001192092896 0.80000001192092896 attributeWrangle_restlength
opset -d off -r off -h off -f off -y off -t off -l off -s off -u off -c off -e on -b off attributeWrangle_restlength
opexprlanguage -s hscript attributeWrangle_restlength
opuserdata -n '___Version___' -v '' attributeWrangle_restlength

# Node attributeWrangle_link (Sop/attribwrangle)
opadd -e -n attribwrangle attributeWrangle_link
oplocate -x 9.0197500000000002 -y 3.59843 attributeWrangle_link
opspareds "" attributeWrangle_link
opparm attributeWrangle_link  bindings ( 0 ) groupbindings ( 0 )
opparm attributeWrangle_link folder0 ( 0 0 ) group ( "" ) grouptype ( guess ) class ( primitive ) vex_numcount ( 10 ) vex_threadjobsize ( 1024 ) snippet ( 'v@link = v@Pj - v@Pi;' ) exportlist ( * ) vex_strict ( off ) autobind ( on ) bindings ( 0 ) groupautobind ( on ) groupbindings ( 0 ) vex_cwdpath ( . ) vex_outputmask ( * ) vex_updatenmls ( off ) vex_matchattrib ( id )
chlock attributeWrangle_link -*
chautoscope attributeWrangle_link -*
opcolor -c 0.80000001192092896 0.80000001192092896 0.80000001192092896 attributeWrangle_link
opset -d off -r off -h off -f off -y off -t off -l off -s off -u off -c off -e on -b off attributeWrangle_link
opexprlanguage -s hscript attributeWrangle_link
opuserdata -n '___Version___' -v '' attributeWrangle_link

# Node attributeWrangle_weakInteraction (Sop/attribwrangle)
opadd -e -n attribwrangle attributeWrangle_weakInteraction
oplocate -x 14.006399999999999 -y 5.2136399999999998 attributeWrangle_weakInteraction
opspareds "" attributeWrangle_weakInteraction
opparm attributeWrangle_weakInteraction  bindings ( 0 ) groupbindings ( 0 )
opparm attributeWrangle_weakInteraction folder0 ( 0 0 ) group ( weakInteraction ) grouptype ( prims ) class ( primitive ) vex_numcount ( 10 ) vex_threadjobsize ( 1024 ) snippet ( 'v@weakInteraction = ch("../controls/weakinteraction") * (f@length - f@restlength) * v@link;' ) exportlist ( * ) vex_strict ( off ) autobind ( on ) bindings ( 0 ) groupautobind ( on ) groupbindings ( 0 ) vex_cwdpath ( . ) vex_outputmask ( * ) vex_updatenmls ( off ) vex_matchattrib ( id )
chlock attributeWrangle_weakInteraction -*
chautoscope attributeWrangle_weakInteraction -*
opcolor -c 0.80000001192092896 0.80000001192092896 0.80000001192092896 attributeWrangle_weakInteraction
opset -d off -r off -h off -f off -y off -t off -l off -s off -u off -c off -e on -b off attributeWrangle_weakInteraction
opexprlanguage -s hscript attributeWrangle_weakInteraction
opuserdata -n '___Version___' -v '' attributeWrangle_weakInteraction

# Node attributeWrangle_lengthWeak (Sop/attribwrangle)
opadd -e -n attribwrangle attributeWrangle_lengthWeak
oplocate -x 9.0197500000000002 -y 3.0160999999999998 attributeWrangle_lengthWeak
opspareds "" attributeWrangle_lengthWeak
opparm attributeWrangle_lengthWeak  bindings ( 0 ) groupbindings ( 0 )
opparm attributeWrangle_lengthWeak folder0 ( 0 0 ) group ( weakInteraction ) grouptype ( guess ) class ( primitive ) vex_numcount ( 10 ) vex_threadjobsize ( 1024 ) snippet ( 'f@lengthWeak = length(v@link);' ) exportlist ( * ) vex_strict ( off ) autobind ( on ) bindings ( 0 ) groupautobind ( on ) groupbindings ( 0 ) vex_cwdpath ( . ) vex_outputmask ( * ) vex_updatenmls ( off ) vex_matchattrib ( id )
chlock attributeWrangle_lengthWeak -*
chautoscope attributeWrangle_lengthWeak -*
opcolor -c 0.80000001192092896 0.80000001192092896 0.80000001192092896 attributeWrangle_lengthWeak
opset -d off -r off -h off -f off -y off -t off -l off -s off -u off -c off -e on -b off attributeWrangle_lengthWeak
opexprlanguage -s hscript attributeWrangle_lengthWeak
opuserdata -n '___Version___' -v '' attributeWrangle_lengthWeak

# Node attributeWrangle_inLiquid (Sop/attribwrangle)
opadd -e -n attribwrangle attributeWrangle_inLiquid
oplocate -x -2.0858599999999998 -y 6.27095 attributeWrangle_inLiquid
opspareds "" attributeWrangle_inLiquid
opparm attributeWrangle_inLiquid  bindings ( 0 ) groupbindings ( 0 )
opparm attributeWrangle_inLiquid folder0 ( 0 0 ) group ( inLiquid ) grouptype ( points ) class ( point ) vex_numcount ( 10 ) vex_threadjobsize ( 1024 ) snippet ( 'f@airDistance = -f@dist;' ) exportlist ( * ) vex_strict ( off ) autobind ( on ) bindings ( 0 ) groupautobind ( on ) groupbindings ( 0 ) vex_cwdpath ( . ) vex_outputmask ( * ) vex_updatenmls ( off ) vex_matchattrib ( id )
chlock attributeWrangle_inLiquid -*
chautoscope attributeWrangle_inLiquid -*
opcolor -c 0.80000001192092896 0.80000001192092896 0.80000001192092896 attributeWrangle_inLiquid
opset -d off -r off -h off -f off -y off -t off -l off -s off -u off -c off -e on -b off attributeWrangle_inLiquid
opexprlanguage -s hscript attributeWrangle_inLiquid
opuserdata -n '___Version___' -v '' attributeWrangle_inLiquid

# Node attributeWrangle_inAir (Sop/attribwrangle)
opadd -e -n attribwrangle attributeWrangle_inAir
oplocate -x -1.57443 -y 5.0674400000000004 attributeWrangle_inAir
opspareds "" attributeWrangle_inAir
opparm attributeWrangle_inAir  bindings ( 0 ) groupbindings ( 0 )
opparm attributeWrangle_inAir folder0 ( 0 0 ) group ( inAir ) grouptype ( points ) class ( point ) vex_numcount ( 10 ) vex_threadjobsize ( 1024 ) snippet ( 'f@airDistance = f@dist;\nf@dist=0.0;' ) exportlist ( * ) vex_strict ( off ) autobind ( on ) bindings ( 0 ) groupautobind ( on ) groupbindings ( 0 ) vex_cwdpath ( . ) vex_outputmask ( * ) vex_updatenmls ( off ) vex_matchattrib ( id )
chlock attributeWrangle_inAir -*
chautoscope attributeWrangle_inAir -*
opcolor -c 0.80000001192092896 0.80000001192092896 0.80000001192092896 attributeWrangle_inAir
opset -d off -r off -h off -f off -y off -t off -l off -s off -u off -c off -e on -b off attributeWrangle_inAir
opexprlanguage -s hscript attributeWrangle_inAir
opuserdata -n '___Version___' -v '' attributeWrangle_inAir

# Node attributeWrangle_buoyancy (Sop/attribwrangle)
opadd -e -n attribwrangle attributeWrangle_buoyancy
oplocate -x 14.0015 -y 0.018966 attributeWrangle_buoyancy
opspareds "" attributeWrangle_buoyancy
opparm attributeWrangle_buoyancy  bindings ( 0 ) groupbindings ( 0 )
opparm attributeWrangle_buoyancy folder0 ( 0 0 ) group ( 'inLiquid onSurface' ) grouptype ( points ) class ( point ) vex_numcount ( 10 ) vex_threadjobsize ( 1024 ) snippet ( 'v@buoyancy = - ch("../controls/buoyancy") * f@displacedVolume * ch("../../controls/liquiddensity");\n\nv@buoyancy.x *= ch("../controls/gravityx");\nv@buoyancy.y *= ch("../controls/gravityy");\nv@buoyancy.z *= ch("../controls/gravityz");' ) exportlist ( * ) vex_strict ( off ) autobind ( on ) bindings ( 0 ) groupautobind ( on ) groupbindings ( 0 ) vex_cwdpath ( . ) vex_outputmask ( * ) vex_updatenmls ( off ) vex_matchattrib ( id )
chlock attributeWrangle_buoyancy -*
chautoscope attributeWrangle_buoyancy -*
opcolor -c 0.80000001192092896 0.80000001192092896 0.80000001192092896 attributeWrangle_buoyancy
opset -d off -r off -h off -f off -y off -t off -l off -s off -u off -c off -e on -b off attributeWrangle_buoyancy
opexprlanguage -s hscript attributeWrangle_buoyancy
opuserdata -n '___Version___' -v '' attributeWrangle_buoyancy

# Node attributeWrangle_surfaceTension (Sop/attribwrangle)
opadd -e -n attribwrangle attributeWrangle_surfaceTension
oplocate -x 13.827500000000001 -y -1.3794900000000001 attributeWrangle_surfaceTension
opspareds "" attributeWrangle_surfaceTension
opparm attributeWrangle_surfaceTension  bindings ( 0 ) groupbindings ( 0 )
opparm attributeWrangle_surfaceTension folder0 ( 0 0 ) group ( onSurface ) grouptype ( points ) class ( point ) vex_numcount ( 10 ) vex_threadjobsize ( 1024 ) snippet ( 'v@surfaceTension = - ch("../controls/surfacetension") * f@airDistance * v@N;\n' ) exportlist ( * ) vex_strict ( off ) autobind ( on ) bindings ( 0 ) groupautobind ( on ) groupbindings ( 0 ) vex_cwdpath ( . ) vex_outputmask ( * ) vex_updatenmls ( off ) vex_matchattrib ( id )
chlock attributeWrangle_surfaceTension -*
chautoscope attributeWrangle_surfaceTension -*
opcolor -c 0.80000001192092896 0.80000001192092896 0.80000001192092896 attributeWrangle_surfaceTension
opset -d off -r off -h off -f off -y off -t off -l off -s off -u off -c off -e on -b off attributeWrangle_surfaceTension
opexprlanguage -s hscript attributeWrangle_surfaceTension
opuserdata -n '___Version___' -v '' attributeWrangle_surfaceTension

# Node color_strongInteraction (Sop/color)
opadd -e -n color color_strongInteraction
oplocate -x 20.8292 -y 3.21183 color_strongInteraction
opspareds "" color_strongInteraction
opparm color_strongInteraction  ramp ( 2 )
opparm color_strongInteraction group ( strongInteraction ) grouptype ( prims ) class ( 1 ) colortype ( 0 ) color ( 0.5 0 0 ) seed ( 0 ) rampattribute ( "" ) ramprange ( 0 1 ) ramp ( 2 ) ramp1pos ( 0 ) ramp1c ( 0 0 0 ) ramp1interp ( linear ) ramp2pos ( 1 ) ramp2c ( 1 1 1 ) ramp2interp ( linear )
chlock color_strongInteraction -*
chautoscope color_strongInteraction -*
opcolor -c 0.80000001192092896 0.80000001192092896 0.80000001192092896 color_strongInteraction
opset -d off -r off -h off -f off -y off -t off -l off -s off -u off -c off -e on -b off color_strongInteraction
opexprlanguage -s hscript color_strongInteraction
opuserdata -n '___Version___' -v '' color_strongInteraction
opuserdata -n '___toolcount___' -v '2' color_strongInteraction
opuserdata -n '___toolid___' -v 'sop_color' color_strongInteraction

# Node color_weakInteraction (Sop/color)
opadd -e -n color color_weakInteraction
oplocate -x 20.8292 -y 2.6105299999999998 color_weakInteraction
opspareds "" color_weakInteraction
opparm color_weakInteraction  ramp ( 2 )
opparm color_weakInteraction group ( weakInterraction ) grouptype ( prims ) class ( 1 ) colortype ( 0 ) color ( 0 0.25 0.5 ) seed ( 0 ) rampattribute ( "" ) ramprange ( 0 1 ) ramp ( 2 ) ramp1pos ( 0 ) ramp1c ( 0 0 0 ) ramp1interp ( linear ) ramp2pos ( 1 ) ramp2c ( 1 1 1 ) ramp2interp ( linear )
chlock color_weakInteraction -*
chautoscope color_weakInteraction -*
opcolor -c 0.80000001192092896 0.80000001192092896 0.80000001192092896 color_weakInteraction
opset -d off -r off -h off -f off -y off -t off -l off -s off -u off -c off -e on -b off color_weakInteraction
opexprlanguage -s hscript color_weakInteraction
opuserdata -n '___Version___' -v '' color_weakInteraction
opuserdata -n '___toolcount___' -v '2' color_weakInteraction
opuserdata -n '___toolid___' -v 'sop_color' color_weakInteraction

# Node attributeWrangle_onSurfaceForces (Sop/attribwrangle)
opadd -e -n attribwrangle attributeWrangle_onSurfaceForces
oplocate -x 20.8292 -y 5.4165299999999998 attributeWrangle_onSurfaceForces
opspareds "" attributeWrangle_onSurfaceForces
opparm attributeWrangle_onSurfaceForces  bindings ( 0 ) groupbindings ( 0 )
opparm attributeWrangle_onSurfaceForces folder0 ( 0 0 ) group ( onSurface ) grouptype ( points ) class ( point ) vex_numcount ( 10 ) vex_threadjobsize ( 1024 ) snippet ( 'f@mass = f@massAir + f@massLiquid/2.0;\n\nv@force += v@buoyancy;\nv@force += v@surfaceTension;\n\nv@force += v@solidStrongInteraction;\nv@force += v@solidAttraction;\n\nv@force += v@strongInteraction;\nv@force += v@weakInteraction;\n\nv@force /= f@mass;\n' ) exportlist ( * ) vex_strict ( off ) autobind ( on ) bindings ( 0 ) groupautobind ( on ) groupbindings ( 0 ) vex_cwdpath ( . ) vex_outputmask ( * ) vex_updatenmls ( off ) vex_matchattrib ( id )
chlock attributeWrangle_onSurfaceForces -*
chautoscope attributeWrangle_onSurfaceForces -*
opcolor -c 0.80000001192092896 0.80000001192092896 0.80000001192092896 attributeWrangle_onSurfaceForces
opset -d off -r off -h off -f off -y off -t off -l off -s off -u off -c off -e on -b off attributeWrangle_onSurfaceForces
opexprlanguage -s hscript attributeWrangle_onSurfaceForces
opuserdata -n '___Version___' -v '' attributeWrangle_onSurfaceForces

# Node attributeWrangle_inLiquidForces (Sop/attribwrangle)
opadd -e -n attribwrangle attributeWrangle_inLiquidForces
oplocate -x 20.8292 -y 6.0139800000000001 attributeWrangle_inLiquidForces
opspareds "" attributeWrangle_inLiquidForces
opparm attributeWrangle_inLiquidForces  bindings ( 0 ) groupbindings ( 0 )
opparm attributeWrangle_inLiquidForces folder0 ( 0 0 ) group ( inLiquid ) grouptype ( points ) class ( point ) vex_numcount ( 10 ) vex_threadjobsize ( 1024 ) snippet ( 'f@mass = f@massAir;\n\nv@force += v@buoyancy;\n\nv@force += v@strongInteraction;\n\nv@force /= f@mass;\n' ) exportlist ( * ) vex_strict ( off ) autobind ( on ) bindings ( 0 ) groupautobind ( on ) groupbindings ( 0 ) vex_cwdpath ( . ) vex_outputmask ( * ) vex_updatenmls ( off ) vex_matchattrib ( id )
chlock attributeWrangle_inLiquidForces -*
chautoscope attributeWrangle_inLiquidForces -*
opcolor -c 0.80000001192092896 0.80000001192092896 0.80000001192092896 attributeWrangle_inLiquidForces
opset -d off -r off -h off -f off -y off -t off -l off -s off -u off -c off -e on -b off attributeWrangle_inLiquidForces
opexprlanguage -s hscript attributeWrangle_inLiquidForces
opuserdata -n '___Version___' -v '' attributeWrangle_inLiquidForces

# Node attributeWrangle_inAirForces (Sop/attribwrangle)
opadd -e -n attribwrangle attributeWrangle_inAirForces
oplocate -x 20.8292 -y 4.8087099999999996 attributeWrangle_inAirForces
opspareds "" attributeWrangle_inAirForces
opparm attributeWrangle_inAirForces  bindings ( 0 ) groupbindings ( 0 )
opparm attributeWrangle_inAirForces folder0 ( 0 0 ) group ( inAir ) grouptype ( points ) class ( point ) vex_numcount ( 10 ) vex_threadjobsize ( 1024 ) snippet ( 'f@mass = f@massAir + f@massLiquid;\n\nv@force += v@solidStrongInteraction;\nv@force += v@solidAttraction;\n\nv@force += v@strongInteraction;\nv@force += v@weakInteraction;\n\nv@force /= f@mass;\n' ) exportlist ( * ) vex_strict ( off ) autobind ( on ) bindings ( 0 ) groupautobind ( on ) groupbindings ( 0 ) vex_cwdpath ( . ) vex_outputmask ( * ) vex_updatenmls ( off ) vex_matchattrib ( id )
chlock attributeWrangle_inAirForces -*
chautoscope attributeWrangle_inAirForces -*
opcolor -c 0.80000001192092896 0.80000001192092896 0.80000001192092896 attributeWrangle_inAirForces
opset -d off -r off -h off -f off -y off -t off -l off -s off -u off -c off -e on -b off attributeWrangle_inAirForces
opexprlanguage -s hscript attributeWrangle_inAirForces
opuserdata -n '___Version___' -v '' attributeWrangle_inAirForces

# Node attributeWrangle_deletePreviousForces (Sop/attribwrangle)
opadd -e -n attribwrangle attributeWrangle_deletePreviousForces
oplocate -x -6.0024100000000002 -y 4.0170500000000002 attributeWrangle_deletePreviousForces
opspareds "" attributeWrangle_deletePreviousForces
opparm attributeWrangle_deletePreviousForces  bindings ( 0 ) groupbindings ( 0 )
opparm attributeWrangle_deletePreviousForces folder0 ( 0 0 ) group ( "" ) grouptype ( points ) class ( point ) vex_numcount ( 10 ) vex_threadjobsize ( 1024 ) snippet ( 'v@buoyancy = 0.0;\nv@surfaceTension = 0.0;\nf@outside = 0.0;\nv@solidStrongInteraction = 0.0;\nv@solidAttraction = 0.0;\nv@strongInteraction = 0.0; \nv@weakInteraction = 0.0;\nv@damping = 0.0;\nv@force = 0.0;' ) exportlist ( * ) vex_strict ( off ) autobind ( on ) bindings ( 0 ) groupautobind ( on ) groupbindings ( 0 ) vex_cwdpath ( . ) vex_outputmask ( * ) vex_updatenmls ( off ) vex_matchattrib ( id )
chlock attributeWrangle_deletePreviousForces -*
chautoscope attributeWrangle_deletePreviousForces -*
opcolor -c 0.80000001192092896 0.80000001192092896 0.80000001192092896 attributeWrangle_deletePreviousForces
opset -d off -r off -h off -f off -y off -t off -l off -s off -u off -c off -e on -b off attributeWrangle_deletePreviousForces
opexprlanguage -s hscript attributeWrangle_deletePreviousForces
opuserdata -n '___Version___' -v '' attributeWrangle_deletePreviousForces

# Node attributeWrangle_gravity (Sop/attribwrangle)
opadd -e -n attribwrangle attributeWrangle_gravity
oplocate -x 22.023700000000002 -y 0.81351300000000004 attributeWrangle_gravity
opspareds "" attributeWrangle_gravity
opparm attributeWrangle_gravity  bindings ( 0 ) groupbindings ( 0 )
opparm attributeWrangle_gravity folder0 ( 0 0 ) group ( 'inLiquid onSurface inAir' ) grouptype ( guess ) class ( point ) vex_numcount ( 10 ) vex_threadjobsize ( 1024 ) snippet ( 'v@force.x += ch("../controls/gravityx");\nv@force.y += ch("../controls/gravityy");\nv@force.z += ch("../controls/gravityz");' ) exportlist ( * ) vex_strict ( off ) autobind ( on ) bindings ( 0 ) groupautobind ( on ) groupbindings ( 0 ) vex_cwdpath ( . ) vex_outputmask ( * ) vex_updatenmls ( off ) vex_matchattrib ( id )
chlock attributeWrangle_gravity -*
chautoscope attributeWrangle_gravity -*
opcolor -c 0.80000001192092896 0.80000001192092896 0.80000001192092896 attributeWrangle_gravity
opset -d off -r off -h off -f off -y off -t off -l off -s off -u off -c off -e on -b off attributeWrangle_gravity
opexprlanguage -s hscript attributeWrangle_gravity
opuserdata -n '___Version___' -v '' attributeWrangle_gravity

# Node attributeWrangle_damping (Sop/attribwrangle)
opadd -e -n attribwrangle attributeWrangle_damping
oplocate -x 21.8246 -y -0.58648 attributeWrangle_damping
opspareds "" attributeWrangle_damping
opparm attributeWrangle_damping  bindings ( 0 ) groupbindings ( 0 )
opparm attributeWrangle_damping folder0 ( 0 0 ) group ( "" ) grouptype ( points ) class ( point ) vex_numcount ( 10 ) vex_threadjobsize ( 1024 ) snippet ( 'v@force += - ch("../controls/damping") * v@v;' ) exportlist ( * ) vex_strict ( off ) autobind ( on ) bindings ( 0 ) groupautobind ( on ) groupbindings ( 0 ) vex_cwdpath ( . ) vex_outputmask ( * ) vex_updatenmls ( off ) vex_matchattrib ( id )
chlock attributeWrangle_damping -*
chautoscope attributeWrangle_damping -*
opcolor -c 0.80000001192092896 0.80000001192092896 0.80000001192092896 attributeWrangle_damping
opset -d off -r off -h off -f off -y off -t off -l off -s off -u off -c off -e on -b off attributeWrangle_damping
opexprlanguage -s hscript attributeWrangle_damping
opuserdata -n '___Version___' -v '' attributeWrangle_damping

# Node attributeWrangle_displacedVolumeSurface (Sop/attribwrangle)
opadd -e -n attribwrangle attributeWrangle_displacedVolumeSurface
oplocate -x 9.0197500000000002 -y -0.18333099999999999 attributeWrangle_displacedVolumeSurface
opspareds "" attributeWrangle_displacedVolumeSurface
opparm attributeWrangle_displacedVolumeSurface  bindings ( 0 ) groupbindings ( 0 )
opparm attributeWrangle_displacedVolumeSurface folder0 ( 0 0 ) group ( onSurface ) grouptype ( points ) class ( point ) vex_numcount ( 10 ) vex_threadjobsize ( 1024 ) snippet ( 'float h = f@radius - f@distance;\nf@displacedVolume = ($PI * pow(h, 2) / 3.0) * (3.0 * f@radius - h);' ) exportlist ( * ) vex_strict ( off ) autobind ( on ) bindings ( 0 ) groupautobind ( on ) groupbindings ( 0 ) vex_cwdpath ( . ) vex_outputmask ( * ) vex_updatenmls ( off ) vex_matchattrib ( id )
chlock attributeWrangle_displacedVolumeSurface -*
chautoscope attributeWrangle_displacedVolumeSurface -*
opcolor -c 0.80000001192092896 0.80000001192092896 0.80000001192092896 attributeWrangle_displacedVolumeSurface
opset -d off -r off -h off -f off -y off -t off -l off -s off -u off -c off -e on -b off attributeWrangle_displacedVolumeSurface
opexprlanguage -s hscript attributeWrangle_displacedVolumeSurface
opuserdata -n '___Version___' -v '' attributeWrangle_displacedVolumeSurface

# Node attributeWrangle_displacedVolumeLiquid (Sop/attribwrangle)
opadd -e -n attribwrangle attributeWrangle_displacedVolumeLiquid
oplocate -x 9.0197500000000002 -y -0.983545 attributeWrangle_displacedVolumeLiquid
opspareds "" attributeWrangle_displacedVolumeLiquid
opparm attributeWrangle_displacedVolumeLiquid  bindings ( 0 ) groupbindings ( 0 )
opparm attributeWrangle_displacedVolumeLiquid folder0 ( 0 0 ) group ( inLiquid ) grouptype ( points ) class ( point ) vex_numcount ( 10 ) vex_threadjobsize ( 1024 ) snippet ( 'f@displacedVolume = f@volume;' ) exportlist ( * ) vex_strict ( off ) autobind ( on ) bindings ( 0 ) groupautobind ( on ) groupbindings ( 0 ) vex_cwdpath ( . ) vex_outputmask ( * ) vex_updatenmls ( off ) vex_matchattrib ( id )
chlock attributeWrangle_displacedVolumeLiquid -*
chautoscope attributeWrangle_displacedVolumeLiquid -*
opcolor -c 0.80000001192092896 0.80000001192092896 0.80000001192092896 attributeWrangle_displacedVolumeLiquid
opset -d off -r off -h off -f off -y off -t off -l off -s off -u off -c off -e on -b off attributeWrangle_displacedVolumeLiquid
opexprlanguage -s hscript attributeWrangle_displacedVolumeLiquid
opuserdata -n '___Version___' -v '' attributeWrangle_displacedVolumeLiquid

# Node attributeWrangle_distNull (Sop/attribwrangle)
opadd -e -n attribwrangle attributeWrangle_distNull
oplocate -x -1.16852 -y -2.7804500000000001 attributeWrangle_distNull
opspareds "" attributeWrangle_distNull
opparm attributeWrangle_distNull  bindings ( 0 ) groupbindings ( 0 )
opparm attributeWrangle_distNull folder0 ( 0 0 ) group ( "" ) grouptype ( guess ) class ( point ) vex_numcount ( 10 ) vex_threadjobsize ( 1024 ) snippet ( 'f@dist = 0.0;' ) exportlist ( * ) vex_strict ( off ) autobind ( on ) bindings ( 0 ) groupautobind ( on ) groupbindings ( 0 ) vex_cwdpath ( . ) vex_outputmask ( * ) vex_updatenmls ( off ) vex_matchattrib ( id )
chlock attributeWrangle_distNull -*
chautoscope attributeWrangle_distNull -*
opcolor -c 0.80000001192092896 0.80000001192092896 0.80000001192092896 attributeWrangle_distNull
opset -d off -r off -h off -f off -y off -t off -l off -s off -u off -c off -e on -b off attributeWrangle_distNull
opexprlanguage -s hscript attributeWrangle_distNull
opuserdata -n '___Version___' -v '' attributeWrangle_distNull

# Node attributeWrangle_solidAttraction (Sop/attribwrangle)
opadd -e -n attribwrangle attributeWrangle_solidAttraction
oplocate -x 0.62506198883056641 -y -15.589811325073242 attributeWrangle_solidAttraction
opspareds "" attributeWrangle_solidAttraction
opparm attributeWrangle_solidAttraction  bindings ( 0 ) groupbindings ( 0 )
opparm attributeWrangle_solidAttraction folder0 ( 0 0 ) group ( closeSolid ) grouptype ( points ) class ( point ) vex_numcount ( 10 ) vex_threadjobsize ( 1024 ) snippet ( 'v@solidAttraction = ch("../controls/solidattraction") * v@toSolid;' ) exportlist ( * ) vex_strict ( off ) autobind ( on ) bindings ( 0 ) groupautobind ( on ) groupbindings ( 0 ) vex_cwdpath ( . ) vex_outputmask ( * ) vex_updatenmls ( off ) vex_matchattrib ( id )
chlock attributeWrangle_solidAttraction -*
chautoscope attributeWrangle_solidAttraction -*
opcolor -c 0.80000001192092896 0.80000001192092896 0.80000001192092896 attributeWrangle_solidAttraction
opset -d off -r off -h off -f off -y off -t off -l off -s off -u off -c off -e on -b off attributeWrangle_solidAttraction
opexprlanguage -s hscript attributeWrangle_solidAttraction
opuserdata -n '___Version___' -v '' attributeWrangle_solidAttraction

# Node attributeWrangle_toSolid (Sop/attribwrangle)
opadd -e -n attribwrangle attributeWrangle_toSolid
oplocate -x 0.21695400000000001 -y -4.7814399999999999 attributeWrangle_toSolid
opspareds "" attributeWrangle_toSolid
opparm attributeWrangle_toSolid  bindings ( 0 ) groupbindings ( 0 )
opparm attributeWrangle_toSolid folder0 ( 0 0 ) group ( "" ) grouptype ( points ) class ( point ) vex_numcount ( 10 ) vex_threadjobsize ( 1024 ) snippet ( 'v@toSolid = v@P - v@originalPoint;\n' ) exportlist ( * ) vex_strict ( off ) autobind ( on ) bindings ( 0 ) groupautobind ( on ) groupbindings ( 0 ) vex_cwdpath ( . ) vex_outputmask ( * ) vex_updatenmls ( off ) vex_matchattrib ( id )
chlock attributeWrangle_toSolid -*
chautoscope attributeWrangle_toSolid -*
opcolor -c 0.80000001192092896 0.80000001192092896 0.80000001192092896 attributeWrangle_toSolid
opset -d off -r off -h off -f off -y off -t off -l off -s off -u off -c off -e on -b off attributeWrangle_toSolid
opexprlanguage -s hscript attributeWrangle_toSolid
opuserdata -n '___Version___' -v '' attributeWrangle_toSolid

# Node attributeWrangle_solidStrongInteraction (Sop/attribwrangle)
opadd -e -n attribwrangle attributeWrangle_solidStrongInteraction
oplocate -x 0.63251495361328125 -y -13.790966033935547 attributeWrangle_solidStrongInteraction
opspareds "" attributeWrangle_solidStrongInteraction
opparm attributeWrangle_solidStrongInteraction  bindings ( 0 ) groupbindings ( 0 )
opparm attributeWrangle_solidStrongInteraction folder0 ( 0 0 ) group ( contactSolid ) grouptype ( points ) class ( point ) vex_numcount ( 10 ) vex_threadjobsize ( 1024 ) snippet ( 'v@solidStrongInteraction = ch("../controls/solidstronginteraction") * v@toSolid;' ) exportlist ( * ) vex_strict ( off ) autobind ( on ) bindings ( 0 ) groupautobind ( on ) groupbindings ( 0 ) vex_cwdpath ( . ) vex_outputmask ( * ) vex_updatenmls ( off ) vex_matchattrib ( id )
chlock attributeWrangle_solidStrongInteraction -*
chautoscope attributeWrangle_solidStrongInteraction -*
opcolor -c 0.80000001192092896 0.80000001192092896 0.80000001192092896 attributeWrangle_solidStrongInteraction
opset -d off -r off -h off -f off -y off -t off -l off -s off -u off -c off -e on -b off attributeWrangle_solidStrongInteraction
opexprlanguage -s hscript attributeWrangle_solidStrongInteraction
opuserdata -n '___Version___' -v '' attributeWrangle_solidStrongInteraction

# Node attributeWrangle_generalScale (Sop/attribwrangle)
opadd -e -n attribwrangle attributeWrangle_generalScale
oplocate -x 22.2209 -y 2.01939 attributeWrangle_generalScale
opspareds "" attributeWrangle_generalScale
opparm attributeWrangle_generalScale  bindings ( 0 ) groupbindings ( 0 )
opparm attributeWrangle_generalScale folder0 ( 0 0 ) group ( "" ) grouptype ( guess ) class ( point ) vex_numcount ( 10 ) vex_threadjobsize ( 1024 ) snippet ( 'v@force *= ch("../controls/generalscale");\n' ) exportlist ( * ) vex_strict ( off ) autobind ( on ) bindings ( 0 ) groupautobind ( on ) groupbindings ( 0 ) vex_cwdpath ( . ) vex_outputmask ( * ) vex_updatenmls ( off ) vex_matchattrib ( id )
chlock attributeWrangle_generalScale -*
chautoscope attributeWrangle_generalScale -*
opcolor -c 0.80000001192092896 0.80000001192092896 0.80000001192092896 attributeWrangle_generalScale
opset -d off -r off -h off -f off -y off -t off -l off -s off -u off -c off -e on -b off attributeWrangle_generalScale
opexprlanguage -s hscript attributeWrangle_generalScale
opuserdata -n '___Version___' -v '' attributeWrangle_generalScale

# Node attributeWrangle_solidDistance (Sop/attribwrangle)
opadd -e -n attribwrangle attributeWrangle_solidDistance
oplocate -x -0.97497367858886719 -y -8.3813409805297852 attributeWrangle_solidDistance
opspareds "" attributeWrangle_solidDistance
opparm attributeWrangle_solidDistance  bindings ( 0 ) groupbindings ( 0 )
opparm attributeWrangle_solidDistance folder0 ( 0 0 ) group ( "" ) grouptype ( points ) class ( point ) vex_numcount ( 10 ) vex_threadjobsize ( 1024 ) snippet ( 'f@solidDistance = length(v@toSolid);\nv@containerN = normalize(v@containerN);\nf@outside = dot(v@containerN, v@toSolid);' ) exportlist ( * ) vex_strict ( off ) autobind ( on ) bindings ( 0 ) groupautobind ( on ) groupbindings ( 0 ) vex_cwdpath ( . ) vex_outputmask ( * ) vex_updatenmls ( off ) vex_matchattrib ( id )
chlock attributeWrangle_solidDistance -*
chautoscope attributeWrangle_solidDistance -*
opcolor -c 0.80000001192092896 0.80000001192092896 0.80000001192092896 attributeWrangle_solidDistance
opset -d off -r off -h off -f off -y off -t off -l off -s off -u off -c off -e on -b off attributeWrangle_solidDistance
opexprlanguage -s hscript attributeWrangle_solidDistance
opuserdata -n '___Version___' -v '' attributeWrangle_solidDistance

# Node pointWrangle_projectToSolid (Sop/attribwrangle)
opadd -e -n attribwrangle pointWrangle_projectToSolid
oplocate -x -0.18044471740722656 -y -12.785111427307129 pointWrangle_projectToSolid
opspareds "" pointWrangle_projectToSolid
opparm pointWrangle_projectToSolid  bindings ( 0 ) groupbindings ( 0 )
opparm pointWrangle_projectToSolid folder0 ( 0 0 ) group ( outside ) grouptype ( guess ) class ( point ) vex_numcount ( 10 ) vex_threadjobsize ( 1024 ) snippet ( 'v@P = v@P + v@toSolid;' ) exportlist ( * ) vex_strict ( off ) autobind ( on ) bindings ( 0 ) groupautobind ( on ) groupbindings ( 0 ) vex_cwdpath ( . ) vex_outputmask ( * ) vex_updatenmls ( off ) vex_matchattrib ( id )
chlock pointWrangle_projectToSolid -*
chautoscope pointWrangle_projectToSolid -*
opcolor -c 0.80000001192092896 0.80000001192092896 0.80000001192092896 pointWrangle_projectToSolid
opset -d off -r off -h off -f off -y off -t off -l off -s off -u off -c off -e on -b off pointWrangle_projectToSolid
opexprlanguage -s hscript pointWrangle_projectToSolid
opuserdata -n '___Version___' -v '' pointWrangle_projectToSolid
opcf ..

# Sticky Note LICENCE

python -c 'hou.pwd().createStickyNote("LICENCE")'

python -c 'hou.pwd().findStickyNote("LICENCE").setColor(hou.Color([0.36, 0.36, 0.36]))'

python -c 'hou.pwd().findStickyNote("LICENCE").setText("MIT License\n\nCopyright (c) 2016 Nadine Dommanget\n\nPermission is hereby granted, free of charge, to any person obtaining a copy\nof this software and associated documentation files (the \"Software\"), to deal\nin the Software without restriction, including without limitation the rights\nto use, copy, modify, merge, publish, distribute, sublicense, and/or sell\ncopies of the Software, and to permit persons to whom the Software is\nfurnished to do so, subject to the following conditions:\n\nThe above copyright notice and this permission notice shall be included in all\ncopies or substantial portions of the Software.\n\nTHE SOFTWARE IS PROVIDED \"AS IS\", WITHOUT WARRANTY OF ANY KIND, EXPRESS OR\nIMPLIED, INCLUDING BUT NOT LIMITED TO THE WARRANTIES OF MERCHANTABILITY,\nFITNESS FOR A PARTICULAR PURPOSE AND NONINFRINGEMENT. IN NO EVENT SHALL THE\nAUTHORS OR COPYRIGHT HOLDERS BE LIABLE FOR ANY CLAIM, DAMAGES OR OTHER\nLIABILITY, WHETHER IN AN ACTION OF CONTRACT, TORT OR OTHERWISE, ARISING FROM,\nOUT OF OR IN CONNECTION WITH THE SOFTWARE OR THE USE OR OTHER DEALINGS IN THE\nSOFTWARE.")'

python -c 'hou.pwd().findStickyNote("LICENCE").setPosition(hou.Vector2(17.5702, 9.0946))'

python -c 'hou.pwd().findStickyNote("LICENCE").setSize(hou.Vector2(1.25251, 1.00201))'

python -c 'hou.pwd().findStickyNote("LICENCE").setMinimized(False)'
opcf ..

# Node vex (/vex)
opcf obj

# Node inputs (Object/geo)
opadd -e -n geo inputs
oplocate -x 7.0330199999999996 -y 10.6175 inputs
opspareds '    group { 	name	"stdswitcher5" 	label	"Transform"  	parm { 	    name	"keeppos" 	    baseparm 	    label	"Keep Position When Parenting" 	    export	none 	} 	parm { 	    name	"childcomp" 	    baseparm 	    label	"Child Compensation" 	    export	none 	} 	parm { 	    name	"pre_xform" 	    baseparm 	    label	"Pre-transform" 	    export	none 	} 	parm { 	    name	"xOrd" 	    baseparm 	    label	"Transform Order" 	    joinnext 	    export	none 	} 	parm { 	    name	"rOrd" 	    baseparm 	    label	"Rotate Order" 	    export	none 	} 	parm { 	    name	"t" 	    baseparm 	    label	"Translate" 	    export	all 	} 	parm { 	    name	"r" 	    baseparm 	    label	"Rotate" 	    export	all 	} 	parm { 	    name	"s" 	    baseparm 	    label	"Scale" 	    export	none 	} 	parm { 	    name	"p" 	    baseparm 	    label	"Pivot" 	    export	none 	} 	parm { 	    name	"scale" 	    baseparm 	    label	"Uniform Scale" 	    export	none 	} 	parm { 	    name	"lookatpath" 	    baseparm 	    label	"Look At" 	    export	none 	} 	parm { 	    name	"lookupobjpath" 	    baseparm 	    label	"Look Up Object" 	    export	none 	} 	parm { 	    name	"lookup" 	    baseparm 	    label	"Look At Up Vector" 	    export	none 	} 	parm { 	    name	"pathobjpath" 	    baseparm 	    label	"Path Object" 	    export	none 	} 	parm { 	    name	"roll" 	    baseparm 	    label	"Roll" 	    export	none 	} 	parm { 	    name	"pos" 	    baseparm 	    label	"Position" 	    export	none 	} 	parm { 	    name	"uparmtype" 	    baseparm 	    label	"Parameterization" 	    export	none 	} 	parm { 	    name	"pathorient" 	    baseparm 	    label	"Orient Along Path" 	    export	none 	} 	parm { 	    name	"up" 	    baseparm 	    label	"Orient Up Vector" 	    export	none 	} 	parm { 	    name	"bank" 	    baseparm 	    label	"Auto-Bank factor" 	    export	none 	}     }      group { 	name	"stdswitcher5_1" 	label	"Material"  	parm { 	    name	"shop_materialpath" 	    baseparm 	    label	"Material" 	    joinnext 	    export	none 	} 	parm { 	    name	"shop_materialopts" 	    baseparm 	    label	"Options" 	    export	none 	}     }      group { 	name	"stdswitcher5_2" 	label	"Render"  	parm { 	    name	"tdisplay" 	    baseparm 	    label	"Display" 	    joinnext 	    export	none 	} 	parm { 	    name	"display" 	    baseparm 	    label	"Display" 	    export	none 	} 	parm { 	    name	"viewportlod" 	    label	"Display As" 	    type	ordinal 	    default	{ "full" } 	    help	"Choose how the object\'s geometry should be rendered in the viewport" 	    menu	{ 		"full"	"Full Geometry" 		"points"	"Point Cloud" 		"box"	"Bounding Box" 		"centroid"	"Centroid" 		"hidden"	"Hidden" 		"subd"	"Subdivision Surface / Curves" 	    } 	    range	{ 0 1 } 	    export	none 	    parmtag	{ "spare_category" "Render" } 	} 	parm { 	    name	"vm_rendervisibility" 	    label	"Render Visibility" 	    type	string 	    default	{ "*" } 	    menureplace	{ 		"*"	"Visible to all" 		"primary"	"Visible only to primary rays" 		"primary|shadow"	"Visible only to primary and shadow rays" 		"-primary"	"Invisible to primary rays (Phantom)" 		"-diffuse"	"Invisible to diffuse rays" 		"-diffuse&-reflect&-refract"	"Invisible to secondary rays" 		""	"Invisible (Unrenderable)" 	    } 	    range	{ 0 1 } 	    export	none 	    parmtag	{ "spare_category" "Render" } 	} 	parm { 	    name	"vm_rendersubd" 	    label	"Render Polygons As Subdivision (Mantra)" 	    type	toggle 	    default	{ "0" } 	    range	{ 0 1 } 	    export	none 	    parmtag	{ "spare_category" "Geometry" } 	} 	parm { 	    name	"vm_subdstyle" 	    label	"Subdivision Style" 	    type	string 	    default	{ "mantra_catclark" } 	    hidewhen	"{ vm_rendersubd == 0 }" 	    menu	{ 		"mantra_catclark"	"Mantra Catmull-Clark" 		"osd_catclark"	"OpenSubdiv Catmull-Clark" 	    } 	    range	{ 0 1 } 	    export	none 	    parmtag	{ "spare_category" "Geometry" } 	} 	parm { 	    name	"vm_subdgroup" 	    label	"Subdivision Group" 	    type	string 	    default	{ "" } 	    hidewhen	"{ vm_rendersubd == 0 }" 	    range	{ 0 1 } 	    export	none 	    parmtag	{ "spare_category" "Geometry" } 	} 	group { 	    name	"folder0" 	    label	"Shading"  	    parm { 		name	"categories" 		label	"Categories" 		type	string 		default	{ "" } 		help	"A list of tags which can be used to select the object" 		range	{ 0 1 } 		export	none 		parmtag	{ "spare_category" "Shading" } 	    } 	    parm { 		name	"reflectmask" 		label	"Reflection Mask" 		type	oplist 		default	{ "*" } 		help	"Objects that will be reflected on this object." 		range	{ 0 1 } 		export	none 		parmtag	{ "opexpand" "1" } 		parmtag	{ "opfilter" "!!OBJ/GEOMETRY!!" } 		parmtag	{ "oprelative" "/obj" } 		parmtag	{ "spare_category" "Shading" } 	    } 	    parm { 		name	"refractmask" 		label	"Refraction Mask" 		type	oplist 		default	{ "*" } 		help	"Objects that will be refracted on this object." 		range	{ 0 1 } 		export	none 		parmtag	{ "opexpand" "1" } 		parmtag	{ "opfilter" "!!OBJ/GEOMETRY!!" } 		parmtag	{ "oprelative" "/obj" } 		parmtag	{ "spare_category" "Shading" } 	    } 	    parm { 		name	"lightmask" 		label	"Light Mask" 		type	oplist 		default	{ "*" } 		help	"Lights that illuminate this object." 		range	{ 0 1 } 		export	none 		parmtag	{ "opexpand" "1" } 		parmtag	{ "opfilter" "!!OBJ/LIGHT!!" } 		parmtag	{ "oprelative" "/obj" } 		parmtag	{ "spare_category" "Shading" } 	    } 	    parm { 		name	"vm_volumefilter" 		label	"Volume Filter" 		type	string 		default	{ "box" } 		menu	{ 		    "box"	"Box Filter" 		    "gaussian"	"Gaussian" 		    "bartlett"	"Bartlett (triangle)" 		    "catrom"	"Catmull-Rom" 		    "hanning"	"Hanning" 		    "blackman"	"Blackman" 		    "sinc"	"Sinc (sharpening)" 		} 		range	{ 0 1 } 		export	none 		parmtag	{ "spare_category" "Shading" } 	    } 	    parm { 		name	"vm_volumefilterwidth" 		label	"Volume Filter Width" 		type	float 		default	{ "1" } 		range	{ 0.001 5 } 		export	none 		parmtag	{ "spare_category" "Shading" } 	    } 	    parm { 		name	"vm_matte" 		label	"Matte shading" 		type	toggle 		default	{ "0" } 		range	{ 0 1 } 		export	none 		parmtag	{ "spare_category" "Shading" } 	    } 	    parm { 		name	"vm_rayshade" 		label	"Raytrace Shading" 		type	toggle 		default	{ "0" } 		range	{ 0 1 } 		export	none 		parmtag	{ "spare_category" "Shading" } 	    } 	}  	group { 	    name	"folder0_1" 	    label	"Sampling"  	    parm { 		name	"geo_velocityblur" 		label	"Geometry Velocity Blur" 		type	toggle 		default	{ "0" } 		disablewhen	"{ allowmotionblur == 0 }" 		range	{ 0 1 } 		export	none 		parmtag	{ "spare_category" "Sampling" } 	    } 	}  	group { 	    name	"folder0_2" 	    label	"Dicing"  	    parm { 		name	"vm_shadingquality" 		label	"Shading Quality" 		type	float 		default	{ "1" } 		range	{ 0 10 } 		export	none 		parmtag	{ "spare_category" "Dicing" } 	    } 	    parm { 		name	"vm_flatness" 		label	"Dicing Flatness" 		type	float 		default	{ "0.05" } 		range	{ 0 1 } 		export	none 		parmtag	{ "spare_category" "Dicing" } 	    } 	    parm { 		name	"vm_raypredice" 		label	"Ray Predicing" 		type	integer 		default	{ "0" } 		menu	{ 		    "0"	"Disable Predicing" 		    "1"	"Full Predicing" 		    "2"	"Precompute Bounds" 		} 		range	{ 0 10 } 		export	none 		parmtag	{ "spare_category" "Dicing" } 	    } 	    parm { 		name	"vm_curvesurface" 		label	"Shade Curves As Surfaces" 		type	toggle 		default	{ "0" } 		range	{ 0 1 } 		export	none 		parmtag	{ "spare_category" "Dicing" } 	    } 	}  	group { 	    name	"folder0_3" 	    label	"Geometry"  	    parm { 		name	"vm_rmbackface" 		label	"Backface Removal" 		type	toggle 		default	{ "0" } 		range	{ 0 1 } 		export	none 		parmtag	{ "spare_category" "Geometry" } 	    } 	    parm { 		name	"shop_geometrypath" 		label	"Procedural Shader" 		type	oppath 		default	{ "" } 		range	{ 0 1 } 		export	none 		parmtag	{ "opfilter" "!!SHOP/GEOMETRY!!" } 		parmtag	{ "oprelative" "." } 		parmtag	{ "spare_category" "Geometry" } 	    } 	    parm { 		name	"vm_forcegeometry" 		label	"Force Procedural Geometry Output" 		type	toggle 		default	{ "1" } 		range	{ 0 1 } 		export	none 		parmtag	{ "spare_category" "Geometry" } 	    } 	    parm { 		name	"vm_rendersubdcurves" 		label	"Render Polygon Curves As Subdivision (Mantra)" 		type	toggle 		default	{ "0" } 		range	{ 0 1 } 		export	none 		parmtag	{ "spare_category" "Geometry" } 	    } 	    parm { 		name	"vm_renderpoints" 		label	"Render As Points (Mantra)" 		type	integer 		default	{ "2" } 		menu	{ 		    "0"	"No Point Rendering" 		    "1"	"Render Only Points" 		    "2"	"Render Unconnected Points" 		} 		range	{ 0 10 } 		export	none 		parmtag	{ "spare_category" "Geometry" } 	    } 	    parm { 		name	"vm_renderpointsas" 		label	"Render Points As (Mantra)" 		type	integer 		default	{ "0" } 		disablewhen	"{ vm_renderpoints == 0 }" 		menu	{ 		    "0"	"Spheres" 		    "1"	"Circles" 		} 		range	{ 0 10 } 		export	none 		parmtag	{ "spare_category" "Geometry" } 	    } 	    parm { 		name	"vm_usenforpoints" 		label	"Use N For Point Rendering" 		type	toggle 		default	{ "0" } 		disablewhen	"{ vm_renderpoints == 0 }" 		range	{ 0 1 } 		export	none 		parmtag	{ "spare_category" "Geometry" } 	    } 	    parm { 		name	"vm_pointscale" 		label	"Point Scale" 		type	float 		default	{ "1" } 		disablewhen	"{ vm_renderpoints == 0 }" 		range	{ 0! 10 } 		export	none 		parmtag	{ "spare_category" "Geometry" } 	    } 	    parm { 		name	"vm_pscalediameter" 		label	"Treat Point Scale as Diameter Instead of Radius" 		type	toggle 		default	{ "0" } 		range	{ 0 1 } 		export	none 		parmtag	{ "spare_category" "Geometry" } 	    } 	    parm { 		name	"vm_metavolume" 		label	"Metaballs as Volume" 		type	toggle 		default	{ "0" } 		range	{ 0 1 } 		export	none 		parmtag	{ "spare_category" "Geometry" } 	    } 	    parm { 		name	"vm_coving" 		label	"Coving" 		type	integer 		default	{ "1" } 		menu	{ 		    "0"	"Disable Coving" 		    "1"	"Coving for displacement/sub-d" 		    "2"	"Coving for all primitives" 		} 		range	{ 0 10 } 		export	none 		parmtag	{ "spare_category" "Geometry" } 	    } 	    parm { 		name	"vm_materialoverride" 		label	"Material Override" 		type	string 		default	{ "compact" } 		menu	{ 		    "none"	"Disabled" 		    "full"	"Evaluate for Each Primitve/Point" 		    "compact"	"Evaluate Once" 		} 		range	{ 0 1 } 		export	none 		parmtag	{ "spare_category" "Geometry" } 	    } 	    parm { 		name	"vm_computeN" 		label	"Automatically Compute Normals" 		type	toggle 		default	{ "1" } 		range	{ 0 1 } 		export	none 		parmtag	{ "spare_category" "Geometry" } 	    } 	    parm { 		name	"vm_overridedetail" 		label	"Ignore Geometry Attribute Shaders" 		type	toggle 		default	{ "0" } 		range	{ 0 1 } 		export	none 		parmtag	{ "spare_category" "Geometry" } 	    } 	}      }      group { 	name	"stdswitcher5_3" 	label	"Misc"  	parm { 	    name	"use_dcolor" 	    baseparm 	    label	"Set Wireframe Color" 	    export	none 	} 	parm { 	    name	"dcolor" 	    baseparm 	    label	"Wireframe Color" 	    export	none 	} 	parm { 	    name	"picking" 	    baseparm 	    label	"Viewport Selecting Enabled" 	    export	none 	} 	parm { 	    name	"pickscript" 	    baseparm 	    label	"Select Script" 	    export	none 	} 	parm { 	    name	"caching" 	    baseparm 	    label	"Cache Object Transform" 	    export	none 	} 	parm { 	    name	"vport_shadeopen" 	    baseparm 	    label	"Shade Open Curves In Viewport" 	    export	none 	} 	parm { 	    name	"vport_displayassubdiv" 	    baseparm 	    label	"Display as Subdivision in Viewport" 	    invisible 	    export	none 	} 	parm { 	    name	"vport_onionskin" 	    baseparm 	    label	"Onion Skinning" 	    export	none 	}     }  ' inputs
opset -S on inputs
opparm -V 15.0.416 inputs stdswitcher ( 0 0 0 0 ) keeppos ( off ) childcomp ( off ) pre_xform ( clean ) xOrd ( srt ) rOrd ( xyz ) t ( 0 0 0 ) r ( 0 0 0 ) s ( 1 1 1 ) p ( 0 0 0 ) scale ( 1 ) lookatpath ( "" ) lookupobjpath ( "" ) lookup ( on ) pathobjpath ( "" ) roll ( 0 ) pos ( 0 ) uparmtype ( arc ) pathorient ( 1 ) up ( 0 1 0 ) bank ( 0 ) shop_materialpath ( "" ) shop_materialopts ( override ) tdisplay ( off ) display ( 1 ) use_dcolor ( off ) dcolor ( 1 1 1 ) picking ( on ) pickscript ( "" ) caching ( off ) vport_shadeopen ( off ) vport_displayassubdiv ( off ) vport_onionskin ( off ) stdswitcher5 ( 0 0 0 0 ) viewportlod ( full ) vm_rendervisibility ( * ) vm_rendersubd ( off ) vm_subdstyle ( mantra_catclark ) vm_subdgroup ( "" ) folder0 ( 0 0 0 0 ) categories ( "" ) reflectmask ( * ) refractmask ( * ) lightmask ( * ) vm_volumefilter ( box ) vm_volumefilterwidth ( 1 ) vm_matte ( off ) vm_rayshade ( off ) geo_velocityblur ( off ) vm_shadingquality ( 1 ) vm_flatness ( 0.050000000000000003 ) vm_raypredice ( 0 ) vm_curvesurface ( off ) vm_rmbackface ( off ) shop_geometrypath ( "" ) vm_forcegeometry ( on ) vm_rendersubdcurves ( off ) vm_renderpoints ( 2 ) vm_renderpointsas ( 0 ) vm_usenforpoints ( off ) vm_pointscale ( 1 ) vm_pscalediameter ( off ) vm_metavolume ( off ) vm_coving ( 1 ) vm_materialoverride ( compact ) vm_computeN ( on ) vm_overridedetail ( off )
chlock inputs -*
chautoscope inputs -* +tx +ty +tz +rx +ry +rz +sx +sy +sz
opcolor -c 0.80000001192092896 0.80000001192092896 0.80000001192092896 inputs
opset -d on -r off -h off -f off -y off -t off -l off -s off -u off -c off -e on -b off -x off inputs
opexprlanguage -s hscript inputs
opuserdata -n '___Version___' -v '15.0.416' inputs
opcf inputs

# Node scatter_initialPoints (Sop/scatter::2.0)
opadd -e -n scatter::2.0 scatter_initialPoints
oplocate -x 14.222899999999999 -y 1.2946 scatter_initialPoints
opspareds "" scatter_initialPoints
opparm -V 15.0.416 scatter_initialPoints group ( "" ) stdswitcher ( 0 0 ) generateby ( bydensity ) densityscale ( 10 ) usedensityattrib ( off ) densityattrib ( density ) useareaattrib ( off ) areaattrib ( area ) forcetotal ( on ) npts ( 1 ) usedensitytexture ( off ) densitytexture ( default.pic ) primcountattrib ( count ) useemergencylimit ( on ) emergencylimit ( 1000000 ) seed ( 0 ) overrideprimseed ( off ) primseedattrib ( primid ) randomizeorder ( on ) relaxpoints ( on ) relaxiterations ( 0 ) scaleradiiby ( 1 ) usemaxradius ( on ) maxradius ( 10 ) useprimnumattrib ( off ) primnumattrib ( sourceprim ) useprimuvwattrib ( off ) primuvwattrib ( sourceprimuv ) useoutputdensityattrib ( off ) outputdensityattrib ( density ) useoutputradiusattrib ( off ) outputradiusattrib ( pscale ) radiusintexturespace ( off ) pointattribs ( * ) vertattribs ( "" ) primattribs ( "" ) detailattribs ( "" )
chlock scatter_initialPoints -*
chautoscope scatter_initialPoints -*
opcolor -c 0.80000001192092896 0.80000001192092896 0.80000001192092896 scatter_initialPoints
opset -d off -r off -h off -f off -y off -t off -l off -s off -u off -c off -e on -b off scatter_initialPoints
opexprlanguage -s hscript scatter_initialPoints
opuserdata -n '___Version___' -v '15.0.416' scatter_initialPoints

# Node OUT_initialPoints (Sop/null)
opadd -e -n null OUT_initialPoints
oplocate -x 14.222900390625 -y -5.9852428436279297 OUT_initialPoints
opspareds "" OUT_initialPoints
opparm -V 15.0.416 OUT_initialPoints copyinput ( on ) cacheinput ( off )
chlock OUT_initialPoints -*
chautoscope OUT_initialPoints -*
opcolor -c 0.80000001192092896 0.80000001192092896 0.80000001192092896 OUT_initialPoints
opset -d off -r off -h off -f off -y off -t off -l off -s off -u off -c off -e on -b off OUT_initialPoints
opexprlanguage -s hscript OUT_initialPoints
opuserdata -n '___Version___' -v '15.0.416' OUT_initialPoints

# Node vdbFromPolygons (Sop/vdbfrompolygons)
opadd -e -n vdbfrompolygons vdbFromPolygons
oplocate -x 10.8238 -y 2.92882 vdbFromPolygons
opspareds "" vdbFromPolygons
opparm vdbFromPolygons  numattrib ( 1 )
opparm -V 15.0.416 vdbFromPolygons voxelsize ( 0.5 ) group ( "" ) builddistance ( off ) distancename ( SDF ) buildfog ( on ) fogname ( density ) useworldspaceunits ( off ) exteriorbandvoxels ( 10 ) interiorbandvoxels ( 3 ) exteriorband ( 1 ) interiorband ( 1 ) fillinterior ( on ) unsigneddist ( off ) numattrib ( 1 ) attribute1 ( point.v ) attributevdbname1 ( velocity ) vectype1 ( "contravariant relative" )
chlock vdbFromPolygons -*
chautoscope vdbFromPolygons -*
opcolor -c 0.80000001192092896 0.80000001192092896 0.80000001192092896 vdbFromPolygons
opset -d off -r off -h off -f off -y off -t off -l off -s off -u off -c off -e on -b off vdbFromPolygons
opexprlanguage -s hscript vdbFromPolygons
opuserdata -n '___Version___' -v '15.0.416' vdbFromPolygons

# Node OUT_liquidVelocity (Sop/null)
opadd -e -n null OUT_liquidVelocity
oplocate -x 10.8246 -y -5.9947900000000001 OUT_liquidVelocity
opspareds "" OUT_liquidVelocity
opparm -V 15.0.416 OUT_liquidVelocity copyinput ( on ) cacheinput ( off )
chlock OUT_liquidVelocity -*
chautoscope OUT_liquidVelocity -*
opcolor -c 0.80000001192092896 0.80000001192092896 0.80000001192092896 OUT_liquidVelocity
opset -d off -r off -h off -f off -y off -t off -l off -s off -u off -c off -e on -b off OUT_liquidVelocity
opexprlanguage -s hscript OUT_liquidVelocity
opuserdata -n '___Version___' -v '15.0.416' OUT_liquidVelocity

# Node attributeCreate_pscale (Sop/attribcreate::2.0)
opadd -e -n attribcreate::2.0 attributeCreate_pscale
oplocate -x 14.222899999999999 -y 0.49243700000000001 attributeCreate_pscale
opspareds "" attributeCreate_pscale
opparm attributeCreate_pscale  numattr ( 1 )
chblockbegin
chadd -t 0 0 attributeCreate_pscale value1v1
chkey -t 0 -v 0 -m 0 -a 0 -A 0 -T a  -F 'ch("../../controls/maxpscale")/1000.0' attributeCreate_pscale/value1v1
chblockend
opparm -V 15.0.416 attributeCreate_pscale group ( "" ) grouptype ( guess ) numattr ( 1 ) enable1 ( on ) name1 ( pscale ) existing1 ( better ) createvarmap1 ( on ) varname1 ( "" ) class1 ( point ) savetoinfo1 ( off ) type1 ( float ) typeinfo1 ( guess ) precision1 ( 32 ) size1 ( 1 ) default1v ( 0 0 0 0 ) writevalues1 ( on ) uselocal1 ( on ) value1v ( value1v1 0 0 0 ) string1 ( "" )
chlock attributeCreate_pscale -*
chautoscope attributeCreate_pscale -*
opcolor -c 0.80000001192092896 0.80000001192092896 0.80000001192092896 attributeCreate_pscale
opset -d off -r off -h off -f off -y off -t off -l off -s off -u off -c off -e on -b off attributeCreate_pscale
opexprlanguage -s hscript attributeCreate_pscale
opuserdata -n '___Version___' -v '15.0.416' attributeCreate_pscale

# Node OUT_emissionGeometry (Sop/null)
opadd -e -n null OUT_emissionGeometry
oplocate -x 17.6312 -y -6.0034200000000002 OUT_emissionGeometry
opspareds "" OUT_emissionGeometry
opparm -V 15.0.416 OUT_emissionGeometry copyinput ( on ) cacheinput ( off )
chlock OUT_emissionGeometry -*
chautoscope OUT_emissionGeometry -*
opcolor -c 0.80000001192092896 0.80000001192092896 0.80000001192092896 OUT_emissionGeometry
opset -d off -r off -h off -f off -y off -t off -l off -s off -u off -c off -e on -b off OUT_emissionGeometry
opexprlanguage -s hscript OUT_emissionGeometry
opuserdata -n '___Version___' -v '15.0.416' OUT_emissionGeometry

# Node group_highVel (Sop/group)
opadd -e -n group group_highVel
oplocate -x 10.8238 -y 4.5296200000000004 group_highVel
opspareds "" group_highVel
chblockbegin
chadd -t 0 0 group_highVel rangeend
chkey -t 0 -v 0 -m 0 -a 0 -A 0 -T a  -F '$N' group_highVel/rangeend
chblockend
opparm -V 15.0.416 group_highVel group ( "" ) stdswitcher ( 0 0 0 ) docreategrp ( on ) crname ( highVel ) entity ( point ) geotype ( all ) mergeop ( replace ) switcher2 ( 1 1 1 1 ) groupnumber ( on ) ordered ( off ) groupop ( grppattern ) filter ( 1 ) pattern ( "" ) range ( 0 rangeend ) select ( 1 2 ) groupbounding ( on ) boundtype ( usebobject ) size ( 1 1 1 ) t ( 0 0 0 ) iso ( 0 ) invertvolume ( off ) includenotwhollycontained ( off ) groupnormal ( off ) dir ( 0 0 1 ) angle ( 180 ) camerapath ( "" ) nonplanar ( off ) nonplanartol ( 0.001 ) groupedges ( off ) dominedgeangle ( off ) minedgeangle ( 20 ) domaxedgeangle ( off ) maxedgeangle ( 20 ) edgeanglebetweenedges ( off ) dominedgelen ( off ) minedgelen ( 0 ) domaxedgelen ( off ) maxedgelen ( 0 ) dodepth ( off ) edgestep ( 0 ) edgeptgrp ( 0 ) unshared ( off ) boundarygroups ( off ) combineentity ( guess ) grpequal ( "" ) not1 ( off ) grp1 ( "" ) op1 ( none ) not2 ( off ) grp2 ( "" ) op2 ( none ) not3 ( off ) grp3 ( "" ) op3 ( none ) not4 ( off ) grp4 ( "" ) switcher3 ( 0 0 0 ) oldname ( "" ) newname ( "" ) cnvfromtype ( primgroup ) cnvtotype ( ptgroup ) convertg ( "" ) cnvtname ( "" ) preserve ( off ) primswithallpts ( off ) destroyname ( "" ) type ( 1 )
chlock group_highVel -*
chautoscope group_highVel -*
opcolor -c 0.80000001192092896 0.80000001192092896 0.80000001192092896 group_highVel
opset -d off -r off -h on -f off -y off -t off -l off -s off -u off -c off -e on -b off group_highVel
opexprlanguage -s hscript group_highVel
opuserdata -n '___Version___' -v '15.0.416' group_highVel

# Node bound_band (Sop/bound)
opadd -e -n bound bound_band
oplocate -x 11.5893 -y 5.3299500000000002 bound_band
opspareds "" bound_band
opparm -V 15.0.416 bound_band group ( "" ) grouptype ( guess ) keepOriginal ( off ) createempty ( on ) boundtype ( off off ) dodivs ( off ) divs ( 3 3 3 ) rebar ( off ) minsize ( 0 0 0 ) orientedbbox ( off ) orient ( y ) accurate ( off ) minradius ( 0 ) minpad ( -8 1 0 ) maxpad ( -8 1 0 )
chlock bound_band -*
chautoscope bound_band -*
opcolor -c 0.80000001192092896 0.80000001192092896 0.80000001192092896 bound_band
opset -d off -r off -h off -f off -y off -t off -l off -s off -u off -c off -e on -b off bound_band
opexprlanguage -s hscript bound_band
opuserdata -n '___Version___' -v '15.0.416' bound_band

# Node delete_nonVelocity (Sop/delete)
opadd -e -n delete delete_nonVelocity
oplocate -x 10.8246 -y 0.48359000000000002 delete_nonVelocity
opspareds "" delete_nonVelocity
chblockbegin
chadd -t 0 0 delete_nonVelocity rangeend
chkey -t 0 -v 0 -m 0 -a 0 -A 0 -T a  -F '$N' delete_nonVelocity/rangeend
chblockend
opparm -V 15.0.416 delete_nonVelocity group ( '@name=velocity' ) negate ( keep ) entity ( primitive ) geotype ( all ) stdswitcher ( 0 0 0 0 ) affectnumber ( on ) groupop ( pattern ) filter ( 1 ) pattern ( !* ) range ( 0 rangeend ) select ( 1 2 ) affectvolume ( off ) boundtype ( usebbox ) size ( 1 1 1 ) t ( 0 0 0 ) affectnormal ( off ) dir ( 0 0 1 ) angle ( 180 ) camerapath ( "" ) affectdegenerate ( off ) degenerate ( off ) zaf ( off ) doopen ( off ) tol ( 0.001 ) removegrp ( on ) keeppoints ( off )
chlock delete_nonVelocity -*
chautoscope delete_nonVelocity -*
opcolor -c 0.80000001192092896 0.80000001192092896 0.80000001192092896 delete_nonVelocity
opset -d off -r off -h off -f off -y off -t off -l off -s off -u off -c off -e on -b off delete_nonVelocity
opexprlanguage -s hscript delete_nonVelocity
opuserdata -n '___Version___' -v '15.0.416' delete_nonVelocity

# Node OUT_liquidSurface (Sop/null)
opadd -e -n null OUT_liquidSurface
oplocate -x 7.2141599999999997 -y -5.9816799999999999 OUT_liquidSurface
opspareds "" OUT_liquidSurface
opparm -V 15.0.416 OUT_liquidSurface copyinput ( on ) cacheinput ( off )
chlock OUT_liquidSurface -*
chautoscope OUT_liquidSurface -*
opcolor -c 0.80000001192092896 0.80000001192092896 0.80000001192092896 OUT_liquidSurface
opset -d off -r off -h off -f off -y off -t off -l off -s off -u off -c off -e on -b off OUT_liquidSurface
opexprlanguage -s hscript OUT_liquidSurface
opuserdata -n '___Version___' -v '15.0.416' OUT_liquidSurface

# Node attributeCreate_massLiquid (Sop/attribcreate::2.0)
opadd -e -n attribcreate::2.0 attributeCreate_massLiquid
oplocate -x 21.807700000000001 -y 2.4727100000000002 attributeCreate_massLiquid
opspareds "" attributeCreate_massLiquid
opparm attributeCreate_massLiquid  numattr ( 1 )
chblockbegin
chadd -t 0 0 attributeCreate_massLiquid value1v1
chkey -t 0 -v 0 -m 0 -a 0 -A 0 -T a  -F '4.0 * 3.14 * pow($RADIUS, 2) * ch("../../controls/filmthickness")/2.0 * ch("../../controls/airdensity")' attributeCreate_massLiquid/value1v1
chblockend
opparm -V 15.0.416 attributeCreate_massLiquid group ( "" ) grouptype ( guess ) numattr ( 1 ) enable1 ( on ) name1 ( massLiquid ) existing1 ( better ) createvarmap1 ( on ) varname1 ( "" ) class1 ( point ) savetoinfo1 ( off ) type1 ( float ) typeinfo1 ( guess ) precision1 ( 32 ) size1 ( 1 ) default1v ( 0 0 0 0 ) writevalues1 ( on ) uselocal1 ( on ) value1v ( value1v1 0 0 0 ) string1 ( "" )
chlock attributeCreate_massLiquid -*
chautoscope attributeCreate_massLiquid -*
opcolor -c 0.80000001192092896 0.80000001192092896 0.80000001192092896 attributeCreate_massLiquid
opset -d off -r off -h off -f off -y off -t off -l off -s off -u off -c off -e on -b off attributeCreate_massLiquid
opexprlanguage -s hscript attributeCreate_massLiquid
opuserdata -n '___Version___' -v '15.0.416' attributeCreate_massLiquid

# Node attributeCreate_volume (Sop/attribcreate::2.0)
opadd -e -n attribcreate::2.0 attributeCreate_volume
oplocate -x 21.807700000000001 -y 1.67405 attributeCreate_volume
opspareds "" attributeCreate_volume
opparm attributeCreate_volume  numattr ( 1 )
chblockbegin
chadd -t 0 0 attributeCreate_volume value1v1
chkey -t 0 -v 0 -m 0 -a 0 -A 0 -T a  -F '4.0/3.0 * 3.14 * pow($RADIUS, 3)' attributeCreate_volume/value1v1
chblockend
opparm -V 15.0.416 attributeCreate_volume group ( "" ) grouptype ( guess ) numattr ( 1 ) enable1 ( on ) name1 ( volume ) existing1 ( better ) createvarmap1 ( on ) varname1 ( "" ) class1 ( point ) savetoinfo1 ( off ) type1 ( float ) typeinfo1 ( guess ) precision1 ( 32 ) size1 ( 1 ) default1v ( 0 0 0 0 ) writevalues1 ( on ) uselocal1 ( on ) value1v ( value1v1 0 0 0 ) string1 ( "" )
chlock attributeCreate_volume -*
chautoscope attributeCreate_volume -*
opcolor -c 0.80000001192092896 0.80000001192092896 0.80000001192092896 attributeCreate_volume
opset -d off -r off -h off -f off -y off -t off -l off -s off -u off -c off -e on -b off attributeCreate_volume
opexprlanguage -s hscript attributeCreate_volume
opuserdata -n '___Version___' -v '15.0.416' attributeCreate_volume

# Node attributeCreate_radius (Sop/attribcreate::2.0)
opadd -e -n attribcreate::2.0 attributeCreate_radius
oplocate -x 21.807700000000001 -y 3.2713700000000001 attributeCreate_radius
opspareds "" attributeCreate_radius
opparm attributeCreate_radius  numattr ( 1 )
chblockbegin
chadd -t 0 0 attributeCreate_radius value1v1
chkey -t 0 -v 0 -m 0 -a 0 -A 0 -T a  -F '$PSCALE / 2.0' attributeCreate_radius/value1v1
chblockend
opparm -V 15.0.416 attributeCreate_radius group ( "" ) grouptype ( guess ) numattr ( 1 ) enable1 ( on ) name1 ( radius ) existing1 ( better ) createvarmap1 ( on ) varname1 ( "" ) class1 ( point ) savetoinfo1 ( off ) type1 ( float ) typeinfo1 ( guess ) precision1 ( 32 ) size1 ( 1 ) default1v ( 0 0 0 0 ) writevalues1 ( on ) uselocal1 ( on ) value1v ( value1v1 0 0 0 ) string1 ( "" )
chlock attributeCreate_radius -*
chautoscope attributeCreate_radius -*
opcolor -c 0.80000001192092896 0.80000001192092896 0.80000001192092896 attributeCreate_radius
opset -d off -r off -h off -f off -y off -t off -l off -s off -u off -c off -e on -b off attributeCreate_radius
opexprlanguage -s hscript attributeCreate_radius
opuserdata -n '___Version___' -v '15.0.416' attributeCreate_radius

# Node attributeCreate_massAir (Sop/attribcreate::2.0)
opadd -e -n attribcreate::2.0 attributeCreate_massAir
oplocate -x 21.807700000000001 -y 0.908945 attributeCreate_massAir
opspareds "" attributeCreate_massAir
opparm attributeCreate_massAir  numattr ( 1 )
chblockbegin
chadd -t 0 0 attributeCreate_massAir value1v1
chkey -t 0 -v 0 -m 0 -a 0 -A 0 -T a  -F '$VOLUME * ch("../../controls/airdensity")' attributeCreate_massAir/value1v1
chblockend
opparm -V 15.0.416 attributeCreate_massAir group ( "" ) grouptype ( guess ) numattr ( 1 ) enable1 ( on ) name1 ( massAir ) existing1 ( better ) createvarmap1 ( on ) varname1 ( "" ) class1 ( point ) savetoinfo1 ( off ) type1 ( float ) typeinfo1 ( guess ) precision1 ( 32 ) size1 ( 1 ) default1v ( 0 0 0 0 ) writevalues1 ( on ) uselocal1 ( on ) value1v ( value1v1 0 0 0 ) string1 ( "" )
chlock attributeCreate_massAir -*
chautoscope attributeCreate_massAir -*
opcolor -c 0.80000001192092896 0.80000001192092896 0.80000001192092896 attributeCreate_massAir
opset -d off -r off -h off -f off -y off -t off -l off -s off -u off -c off -e on -b off attributeCreate_massAir
opexprlanguage -s hscript attributeCreate_massAir
opuserdata -n '___Version___' -v '15.0.416' attributeCreate_massAir

# Node OUT_newPoints (Sop/null)
opadd -e -n null OUT_newPoints
oplocate -x 21.831700000000001 -y -5.9824000000000002 OUT_newPoints
opspareds "" OUT_newPoints
opparm -V 15.0.416 OUT_newPoints copyinput ( on ) cacheinput ( off )
chlock OUT_newPoints -*
chautoscope OUT_newPoints -*
opcolor -c 0.80000001192092896 0.80000001192092896 0.80000001192092896 OUT_newPoints
opset -d off -r off -h off -f off -y off -t off -l off -s off -u off -c off -e on -b off OUT_newPoints
opexprlanguage -s hscript OUT_newPoints
opuserdata -n '___Version___' -v '15.0.416' OUT_newPoints

# Node dopImport_newPoints (Sop/dopimport)
opadd -e -n dopimport dopImport_newPoints
oplocate -x 21.807701110839844 -y 4.8145956993103027 dopImport_newPoints
opspareds "" dopImport_newPoints
chblockbegin
chadd -t 0 0 dopImport_newPoints integrateovertime
chkey -t 0 -v 0 -m 0 -a 0 -A 0 -T a  -F '1/$FPS' dopImport_newPoints/integrateovertime
chblockend
opparm -V 15.0.416 dopImport_newPoints doppath ( /obj/DOPNetwork ) objpattern ( '`stamps("..", "OBJID", arg(dopnodeobjs(".."),0))`' ) singleobject ( off ) importstyle ( fetch ) pivot ( centroid ) viewportlod ( full ) importbyname ( on ) objectnames ( dopobject ) geodatapath ( '`stamps("..", "DATANAME", chs("../datapath"))`' ) inverseop ( off ) doposxform ( on ) doxform ( on ) keepworldspacepos ( on ) centeratpivot ( on ) addname ( off ) adddopobjectname ( off ) adddopobjectid ( off ) addtoexistingvel ( on ) deleteabandoned ( on ) pointvels ( none ) integrateovertime ( integrateovertime ) donotsim ( on )
chlock dopImport_newPoints -*
chautoscope dopImport_newPoints -*
opcolor -c 0.60000002384185791 0.40000000596046448 1 dopImport_newPoints
opset -d off -r off -h off -f off -y off -t off -l off -s off -u off -c off -e on -b off dopImport_newPoints
opexprlanguage -s hscript dopImport_newPoints
opuserdata -n '___Version___' -v '15.0.416' dopImport_newPoints

# Node facet_computeNormalsLiquid (Sop/facet)
opadd -e -n facet facet_computeNormalsLiquid
oplocate -x 7.2141599999999997 -y -5.1860900000000001 facet_computeNormalsLiquid
opspareds "" facet_computeNormalsLiquid
opparm -V 15.0.416 facet_computeNormalsLiquid group ( "" ) prenml ( off ) unit ( off ) unique ( off ) cons ( none ) dist ( 0.001 ) accurate ( on ) inline ( off ) inlinedist ( 0.001 ) orientPolys ( off ) cusp ( off ) angle ( 20 ) remove ( off ) mkplanar ( off ) postnml ( on ) reversenml ( off )
chlock facet_computeNormalsLiquid -*
chautoscope facet_computeNormalsLiquid -*
opcolor -c 0.80000001192092896 0.80000001192092896 0.80000001192092896 facet_computeNormalsLiquid
opset -d off -r off -h off -f off -y off -t off -l off -s off -u off -c off -e on -b off facet_computeNormalsLiquid
opexprlanguage -s hscript facet_computeNormalsLiquid
opuserdata -n '___Version___' -v '15.0.416' facet_computeNormalsLiquid

# Node attributeCreate_v1 (Sop/attribcreate::2.0)
opadd -e -n attribcreate::2.0 attributeCreate_v1
oplocate -x 10.8238 -y 3.7066599999999998 attributeCreate_v1
opspareds "" attributeCreate_v1
opparm attributeCreate_v1  numattr ( 1 )
opparm -V 15.0.416 attributeCreate_v1 group ( highVel ) grouptype ( guess ) numattr ( 1 ) enable1 ( on ) name1 ( v ) existing1 ( better ) createvarmap1 ( off ) varname1 ( "" ) class1 ( point ) savetoinfo1 ( off ) type1 ( vector ) typeinfo1 ( guess ) precision1 ( 32 ) size1 ( 1 ) default1v ( 0 0 0 0 ) writevalues1 ( on ) uselocal1 ( on ) value1v ( 0 0 -3 0 ) string1 ( "" )
chlock attributeCreate_v1 -*
chautoscope attributeCreate_v1 -*
opcolor -c 0.80000001192092896 0.80000001192092896 0.80000001192092896 attributeCreate_v1
opset -d off -r off -h off -f off -y off -t off -l off -s off -u off -c off -e on -b off attributeCreate_v1
opexprlanguage -s hscript attributeCreate_v1
opuserdata -n '___Version___' -v '15.0.416' attributeCreate_v1

# Node tube (Sop/tube)
opadd -e -n tube tube
oplocate -x 3.8010100000000002 -y 6.9057399999999998 tube
opspareds "" tube
opparm -V 15.0.416 tube type ( poly ) surftype ( quads ) orient ( y ) cap ( on ) consolidatepts ( on ) vertexnormals ( off ) t ( 0 0 0 ) rad ( 1 1 ) radscale ( 10 ) height ( 20 ) rows ( 2 ) cols ( 20 ) orderu ( 4 ) orderv ( 2 ) imperfect ( on )
chlock tube -*
chautoscope tube -*
opcolor -c 0.80000001192092896 0.80000001192092896 0.80000001192092896 tube
opset -d off -r off -h off -f off -y off -t off -l off -s off -u off -c off -e on -b off tube
opexprlanguage -s hscript tube
opuserdata -n '___Version___' -v '15.0.416' tube

# Node OUT_container (Sop/null)
opadd -e -n null OUT_container
oplocate -x 3.81935 -y -5.9817099999999996 OUT_container
opspareds "" OUT_container
opparm -V 15.0.416 OUT_container copyinput ( on ) cacheinput ( off )
chlock OUT_container -*
chautoscope OUT_container -*
opcolor -c 0.80000001192092896 0.80000001192092896 0.80000001192092896 OUT_container
opset -d off -r off -h off -f off -y off -t off -l off -s off -u off -c off -e on -b off OUT_container
opexprlanguage -s hscript OUT_container
opuserdata -n '___Version___' -v '15.0.416' OUT_container

# Node polyextrude_thickness (Sop/polyextrude::2.0)
opadd -e -n polyextrude::2.0 polyextrude_thickness
oplocate -x 3.8162799999999999 -y 4.4185499999999998 polyextrude_thickness
opspareds "" polyextrude_thickness
opparm polyextrude_thickness  thicknessramp ( 2 ) twistramp ( 2 )
opparm -V 15.0.416 polyextrude_thickness group ( "" ) splittype ( components ) usesplitgroup ( off ) splitgroup ( "" ) extrusionmode ( primnormal ) dist ( 0.20000000000000001 ) inset ( 0 ) twist ( 0 ) divs ( 1 ) spinetype ( straight ) stdswitcher ( 0 0 0 ) xformsection ( 0 ) xformfront ( off ) xformspace ( local ) rst ( srt ) xyz ( xyz ) translate ( 0 0 0 ) rotate ( 0 0 0 ) scale ( 1 1 1 ) shear ( 0 0 0 ) pivot ( 0 0 0 ) outputsection ( 0 ) outputfront ( on ) outputfrontgrp ( off ) frontgrp ( extrudeFront ) outputback ( on ) outputbackgrp ( off ) backgrp ( extrudeBack ) outputside ( on ) outputsidegrp ( off ) sidegrp ( extrudeSide ) preservegroups ( on ) insettingsection ( 0 ) limitinset ( on ) commonlimit ( on ) normalsection ( 0 ) addvertexnomrals ( off ) cuspangle ( 60 ) cuspfront ( on ) cuspback ( on ) shapecontrolsection ( 0 ) frontmagnitude ( 1 ) backmagnitude ( 1 ) frontstiffness ( 0 ) backstiffness ( 0 ) interpolation ( rotatingframe ) spacing ( arclengthuniform ) externalspinesection ( 0 ) reversespinedirection ( off ) axialrotation ( 0 ) frontblend ( 0.10000000000000001 ) backblend ( 0.10000000000000001 ) thicknesssection ( 0 ) thicknessscale ( 1 ) usethicknessattrib ( on ) thicknessattrib ( thickness ) usethicknessramp ( on ) thicknessramp ( 2 ) twistsection ( 0 ) usetwistattrib ( on ) twistattrib ( twist ) usetwistramp ( on ) twistramp ( 2 ) twistscale ( 180 ) localattribs ( 0 ) uselocalzscaleattrib ( off ) localzscaleattrib ( zscale ) uselocalinsetscaleattrib ( off ) localinsetscaleattrib ( insetscale ) uselocaltwistattrib ( off ) localtwistscaleattrib ( twistscale ) uselocaldivsattrib ( off ) locadivscaleattrib ( divsscale ) localframeattribs ( 0 ) uselocalxattrib ( off ) localxattrib ( localx ) uselocalzattirb ( off ) localzattirb ( localz ) uselocalctrattrib ( off ) localctrattrib ( localctr ) thicknessramp1pos ( 0 ) thicknessramp1value ( 1 ) thicknessramp1interp ( catmull-rom ) thicknessramp2pos ( 1 ) thicknessramp2value ( 1 ) thicknessramp2interp ( catmull-rom ) twistramp1pos ( 0 ) twistramp1value ( 0.5 ) twistramp1interp ( catmull-rom ) twistramp2pos ( 1 ) twistramp2value ( 0.5 ) twistramp2interp ( catmull-rom )
chlock polyextrude_thickness -*
chautoscope polyextrude_thickness -*
opcolor -c 0.80000001192092896 0.80000001192092896 0.80000001192092896 polyextrude_thickness
opset -d off -r off -h off -f off -y off -t off -l off -s off -u off -c off -e on -b on polyextrude_thickness
opexprlanguage -s hscript polyextrude_thickness
opuserdata -n '___Version___' -v '15.0.416' polyextrude_thickness

# Node facet_reverseNormalsContainer (Sop/facet)
opadd -e -n facet facet_reverseNormalsContainer
oplocate -x 3.816277027130127 -y -4.776914119720459 facet_reverseNormalsContainer
opspareds "" facet_reverseNormalsContainer
opparm -V 15.0.416 facet_reverseNormalsContainer group ( "" ) prenml ( on ) unit ( off ) unique ( off ) cons ( none ) dist ( 0.001 ) accurate ( on ) inline ( off ) inlinedist ( 0.001 ) orientPolys ( off ) cusp ( off ) angle ( 20 ) remove ( off ) mkplanar ( off ) postnml ( off ) reversenml ( on )
chlock facet_reverseNormalsContainer -*
chautoscope facet_reverseNormalsContainer -*
opcolor -c 0.80000001192092896 0.80000001192092896 0.80000001192092896 facet_reverseNormalsContainer
opset -d off -r off -h off -f off -y off -t off -l off -s off -u off -c off -e on -b off facet_reverseNormalsContainer
opexprlanguage -s hscript facet_reverseNormalsContainer
opuserdata -n '___Version___' -v '15.0.416' facet_reverseNormalsContainer

# Node attribcreate_idLocal (Sop/attribcreate::2.0)
opadd -e -n attribcreate::2.0 attribcreate_idLocal
oplocate -x 21.807700000000001 -y 0.111758 attribcreate_idLocal
opspareds "" attribcreate_idLocal
opparm attribcreate_idLocal  numattr ( 1 )
opparm -V 15.0.416 attribcreate_idLocal group ( "" ) grouptype ( guess ) numattr ( 1 ) enable1 ( on ) name1 ( id ) existing1 ( better ) createvarmap1 ( on ) varname1 ( "" ) class1 ( point ) savetoinfo1 ( off ) type1 ( int ) typeinfo1 ( guess ) precision1 ( 32 ) size1 ( 1 ) default1v ( 0 0 0 0 ) writevalues1 ( off ) uselocal1 ( on ) value1v ( 0 0 0 0 ) string1 ( "" )
chlock attribcreate_idLocal -*
chautoscope attribcreate_idLocal -*
opcolor -c 0.80000001192092896 0.80000001192092896 0.80000001192092896 attribcreate_idLocal
opset -d off -r off -h off -f off -y off -t off -l off -s off -u off -c off -e on -b off attribcreate_idLocal
opexprlanguage -s hscript attribcreate_idLocal
opuserdata -n '___Version___' -v '15.0.416' attribcreate_idLocal

# Node wireframe_container (Sop/wire)
opadd -e -n wire wireframe_container
oplocate -x 4.8244499999999997 -y -7.7832600000000003 wireframe_container
opspareds "" wireframe_container
opparm -V 15.0.416 wireframe_container group ( "" ) radius ( 0.050000000000000003 ) corners ( on ) caps ( off ) remove ( on )
chlock wireframe_container -*
chautoscope wireframe_container -*
opcolor -c 0.80000001192092896 0.80000001192092896 0.80000001192092896 wireframe_container
opset -d off -r off -h off -f off -y off -t off -l off -s off -u off -c off -e on -b off wireframe_container
opexprlanguage -s hscript wireframe_container
opuserdata -n '___Version___' -v '15.0.416' wireframe_container

# Node merge_surfaceAndContainer (Sop/merge)
opadd -e -n merge merge_surfaceAndContainer
oplocate -x 5.6195300000000001 -y -8.3781800000000004 merge_surfaceAndContainer
opspareds "" merge_surfaceAndContainer
opparm -V 15.0.416 merge_surfaceAndContainer
chlock merge_surfaceAndContainer -*
chautoscope merge_surfaceAndContainer -*
opcolor -c 0.60000002384185791 1 0.60000002384185791 merge_surfaceAndContainer
opset -d on -r on -h off -f off -y off -t off -l off -s off -u off -c off -e on -b off merge_surfaceAndContainer
opexprlanguage -s hscript merge_surfaceAndContainer
opuserdata -n '___Version___' -v '15.0.416' merge_surfaceAndContainer

# Node attributeCreate_id (Sop/attribcreate::2.0)
opadd -e -n attribcreate::2.0 attributeCreate_id
oplocate -x 14.222899999999999 -y -0.086461999999999997 attributeCreate_id
opspareds "" attributeCreate_id
opparm attributeCreate_id  numattr ( 1 )
chblockbegin
chadd -t 0 0 attributeCreate_id value1v1
chkey -t 0 -v 0 -m 0 -a 0 -A 0 -T a  -F '- $PT - 1' attributeCreate_id/value1v1
chblockend
opparm -V 15.0.416 attributeCreate_id group ( "" ) grouptype ( guess ) numattr ( 1 ) enable1 ( on ) name1 ( id ) existing1 ( better ) createvarmap1 ( off ) varname1 ( "" ) class1 ( point ) savetoinfo1 ( off ) type1 ( int ) typeinfo1 ( guess ) precision1 ( 32 ) size1 ( 1 ) default1v ( 0 0 0 0 ) writevalues1 ( on ) uselocal1 ( on ) value1v ( value1v1 0 0 0 ) string1 ( "" )
chlock attributeCreate_id -*
chautoscope attributeCreate_id -*
opcolor -c 0.80000001192092896 0.80000001192092896 0.80000001192092896 attributeCreate_id
opset -d off -r off -h off -f off -y off -t off -l off -s off -u off -c off -e on -b off attributeCreate_id
opexprlanguage -s hscript attributeCreate_id
opuserdata -n '___Version___' -v '15.0.416' attributeCreate_id

# Node delete_topCap (Sop/delete)
opadd -e -n delete delete_topCap
oplocate -x 3.8010100000000002 -y 6.1052400000000002 delete_topCap
opspareds "" delete_topCap
chblockbegin
chadd -t 0 0 delete_topCap rangeend
chkey -t 0 -v 0 -m 0 -a 0 -A 0 -T a  -F '$N' delete_topCap/rangeend
chblockend
opparm -V 15.0.416 delete_topCap group ( 0 ) negate ( dele ) entity ( primitive ) geotype ( all ) stdswitcher ( 0 0 0 0 ) affectnumber ( on ) groupop ( pattern ) filter ( 1 ) pattern ( !* ) range ( 0 rangeend ) select ( 1 2 ) affectvolume ( off ) boundtype ( usebbox ) size ( 1 1 1 ) t ( 0 0 0 ) affectnormal ( off ) dir ( 0 0 1 ) angle ( 180 ) camerapath ( "" ) affectdegenerate ( off ) degenerate ( off ) zaf ( off ) doopen ( off ) tol ( 0.001 ) removegrp ( on ) keeppoints ( off )
chlock delete_topCap -*
chautoscope delete_topCap -*
opcolor -c 0.80000001192092896 0.80000001192092896 0.80000001192092896 delete_topCap
opset -d off -r off -h off -f off -y off -t off -l off -s off -u off -c off -e on -b off delete_topCap
opexprlanguage -s hscript delete_topCap
opuserdata -n '___Version___' -v '15.0.416' delete_topCap

# Node tube1 (Sop/tube)
opadd -e -n tube tube1
oplocate -x 9.0215800000000002 -y 6.9100900000000003 tube1
opspareds "" tube1
opparm -V 15.0.416 tube1 type ( poly ) surftype ( quads ) orient ( y ) cap ( on ) consolidatepts ( on ) vertexnormals ( off ) t ( 0 -5 0 ) rad ( 1 1 ) radscale ( 9.9000000000000004 ) height ( 10 ) rows ( 2 ) cols ( 20 ) orderu ( 4 ) orderv ( 2 ) imperfect ( on )
chlock tube1 -*
chautoscope tube1 -*
opcolor -c 0.80000001192092896 0.80000001192092896 0.80000001192092896 tube1
opset -d off -r off -h off -f off -y off -t off -l off -s off -u off -c off -e on -b off tube1
opexprlanguage -s hscript tube1
opuserdata -n '___Version___' -v '15.0.416' tube1

# Node delete_nonTop (Sop/delete)
opadd -e -n delete delete_nonTop
oplocate -x 7.2141599999999997 -y 5.90808 delete_nonTop
opspareds "" delete_nonTop
chblockbegin
chadd -t 0 0 delete_nonTop rangeend
chkey -t 0 -v 0 -m 0 -a 0 -A 0 -T a  -F '$N' delete_nonTop/rangeend
chblockend
opparm -V 15.0.416 delete_nonTop group ( 0 ) negate ( keep ) entity ( primitive ) geotype ( all ) stdswitcher ( 0 0 0 0 ) affectnumber ( on ) groupop ( pattern ) filter ( 1 ) pattern ( !* ) range ( 0 rangeend ) select ( 1 2 ) affectvolume ( off ) boundtype ( usebbox ) size ( 1 1 1 ) t ( 0 0 0 ) affectnormal ( off ) dir ( 0 0 1 ) angle ( 180 ) camerapath ( "" ) affectdegenerate ( off ) degenerate ( off ) zaf ( off ) doopen ( off ) tol ( 0.001 ) removegrp ( on ) keeppoints ( off )
chlock delete_nonTop -*
chautoscope delete_nonTop -*
opcolor -c 0.80000001192092896 0.80000001192092896 0.80000001192092896 delete_nonTop
opset -d off -r off -h off -f off -y off -t off -l off -s off -u off -c off -e on -b off delete_nonTop
opexprlanguage -s hscript delete_nonTop
opuserdata -n '___Version___' -v '15.0.416' delete_nonTop

# Node delete_nonDensity (Sop/delete)
opadd -e -n delete delete_nonDensity
oplocate -x 14.222900390625 -y 3.0146834850311279 delete_nonDensity
opspareds "" delete_nonDensity
chblockbegin
chadd -t 0 0 delete_nonDensity rangeend
chkey -t 0 -v 0 -m 0 -a 0 -A 0 -T a  -F '$N' delete_nonDensity/rangeend
chblockend
opparm -V 15.0.416 delete_nonDensity group ( '@name=density' ) negate ( keep ) entity ( primitive ) geotype ( all ) stdswitcher ( 0 0 0 0 ) affectnumber ( on ) groupop ( pattern ) filter ( 1 ) pattern ( !* ) range ( 0 rangeend ) select ( 1 2 ) affectvolume ( off ) boundtype ( usebbox ) size ( 1 1 1 ) t ( 0 0 0 ) affectnormal ( off ) dir ( 0 0 1 ) angle ( 180 ) camerapath ( "" ) affectdegenerate ( off ) degenerate ( off ) zaf ( off ) doopen ( off ) tol ( 0.001 ) removegrp ( on ) keeppoints ( off )
chlock delete_nonDensity -*
chautoscope delete_nonDensity -*
opcolor -c 0.80000001192092896 0.80000001192092896 0.80000001192092896 delete_nonDensity
opset -d off -r off -h off -f off -y off -t off -l off -s off -u off -c off -e on -b off delete_nonDensity
opexprlanguage -s hscript delete_nonDensity
opuserdata -n '___Version___' -v '15.0.416' delete_nonDensity

# Node scatter_sourcePoints (Sop/scatter::2.0)
opadd -e -n scatter::2.0 scatter_sourcePoints
oplocate -x 17.631200790405273 -y 0.41304636001586914 scatter_sourcePoints
opspareds "" scatter_sourcePoints
chblockbegin
chadd -t 0 0 scatter_sourcePoints seed
chkey -t 0 -v 0 -m 0 -a 0 -A 0 -T a  -F '$F' scatter_sourcePoints/seed
chblockend
opparm -V 15.0.416 scatter_sourcePoints group ( "" ) stdswitcher ( 0 0 ) generateby ( bydensity ) densityscale ( 10 ) usedensityattrib ( off ) densityattrib ( density ) useareaattrib ( off ) areaattrib ( area ) forcetotal ( on ) npts ( 20 ) usedensitytexture ( off ) densitytexture ( default.pic ) primcountattrib ( count ) useemergencylimit ( on ) emergencylimit ( 1000000 ) seed ( seed ) overrideprimseed ( off ) primseedattrib ( primid ) randomizeorder ( on ) relaxpoints ( on ) relaxiterations ( 10 ) scaleradiiby ( 1 ) usemaxradius ( on ) maxradius ( 10 ) useprimnumattrib ( off ) primnumattrib ( sourceprim ) useprimuvwattrib ( off ) primuvwattrib ( sourceprimuv ) useoutputdensityattrib ( off ) outputdensityattrib ( density ) useoutputradiusattrib ( off ) outputradiusattrib ( pscale ) radiusintexturespace ( off ) pointattribs ( * ) vertattribs ( "" ) primattribs ( "" ) detailattribs ( "" )
chlock scatter_sourcePoints -*
chautoscope scatter_sourcePoints -*
opcolor -c 0.80000001192092896 0.80000001192092896 0.80000001192092896 scatter_sourcePoints
opset -d off -r off -h off -f off -y off -t off -l off -s off -u off -c off -e on -b off scatter_sourcePoints
opexprlanguage -s hscript scatter_sourcePoints
opuserdata -n '___Version___' -v '15.0.416' scatter_sourcePoints

# Node mountain_waves (Sop/mountain)
opadd -e -n mountain mountain_waves
oplocate -x 7.2141599999999997 -y 3.4222600000000001 mountain_waves
opspareds "" mountain_waves
chblockbegin
chadd -t 0 0 mountain_waves offset1
chkey -t 0 -v 0 -m 0 -a 0 -A 0 -T a  -F '$F/5.0' mountain_waves/offset1
chblockend
opparm mountain_waves vex_group ( "" ) vex_numthreads ( 1perproc ) vex_edit ( 0 ) vex_reload ( 0 ) frac_depth ( 1 ) rough ( 0.47399999999999998 ) height ( 5 ) freq ( 0.10000000000000001 0.29999999999999999 0.20000000000000001 ) offset ( offset1 0 0 ) ntype ( perlin ) do_color ( off ) clr_off ( 0.40000000000000002 ) clr_scale ( 1 )
chlock mountain_waves -*
chautoscope mountain_waves -*
opcolor -c 0.80000001192092896 0.80000001192092896 0.80000001192092896 mountain_waves
opset -d off -r off -h off -f off -y off -t off -l off -s off -u off -c off -e on -b off mountain_waves
opexprlanguage -s hscript mountain_waves
opuserdata -n '___Version___' -v '' mountain_waves

# Node remesh_constantEdges (Sop/remesh)
opadd -e -n remesh remesh_constantEdges
oplocate -x 7.2141599999999997 -y 4.2205399999999997 remesh_constantEdges
opspareds "" remesh_constantEdges
opparm remesh_constantEdges  lfs_ramp ( 2 )
chblockbegin
chadd -t 0 0 remesh_constantEdges target_edge
chkey -t 0 -v 1 -m 0 -a 0 -A 0 -T a  -F 'ch("../../controls/maxpscale")/5.0' remesh_constantEdges/target_edge
chblockend
opparm -V 15.0.416 remesh_constantEdges group ( "" ) hard_edges ( "" ) iterations ( 1 ) recompute_normals ( on ) smoothing_level ( 0 ) element_sizing ( 0 0 ) target_edge ( target_edge ) input_pts_only ( off ) gradation ( 0.25 ) density ( 1 ) limit_below ( off ) min_edge_length ( 1.0000000000000001e-05 ) limit_above ( off ) max_edge_length ( 10000 ) lfs_only ( off ) visualize_lfs ( off ) lfs_ramp ( 2 ) lfs_ramp1pos ( 0 ) lfs_ramp1c ( 0 0 1 ) lfs_ramp1interp ( linear ) lfs_ramp2pos ( 1 ) lfs_ramp2c ( 1 0 0 ) lfs_ramp2interp ( linear )
chlock remesh_constantEdges -*
chautoscope remesh_constantEdges -*
opcolor -c 0.80000001192092896 0.80000001192092896 0.80000001192092896 remesh_constantEdges
opset -d off -r off -h off -f off -y off -t off -l off -s off -u off -c off -e on -b off remesh_constantEdges
opexprlanguage -s hscript remesh_constantEdges
opuserdata -n '___Version___' -v '15.0.416' remesh_constantEdges

# Node polyextrude_extendSides (Sop/polyextrude::2.0)
opadd -e -n polyextrude::2.0 polyextrude_extendSides
oplocate -x 7.2141599999999997 -y -4.3980499999999996 polyextrude_extendSides
opspareds "" polyextrude_extendSides
opparm polyextrude_extendSides  thicknessramp ( 2 ) twistramp ( 2 )
opparm -V 15.0.416 polyextrude_extendSides group ( boundaryEdges ) splittype ( components ) usesplitgroup ( off ) splitgroup ( "" ) extrusionmode ( primnormal ) dist ( 4 ) inset ( 0 ) twist ( 0 ) divs ( 1 ) spinetype ( straight ) stdswitcher ( 0 0 0 ) xformsection ( 0 ) xformfront ( off ) xformspace ( local ) rst ( srt ) xyz ( xyz ) translate ( 3.0299289988937161 1.9923071728070738 1.4002952575683594 ) rotate ( 0 0 0 ) scale ( 1 1 1 ) shear ( 0 0 0 ) pivot ( 0 0 0 ) outputsection ( 0 ) outputfront ( on ) outputfrontgrp ( off ) frontgrp ( extrudeFront ) outputback ( off ) outputbackgrp ( off ) backgrp ( extrudeBack ) outputside ( on ) outputsidegrp ( off ) sidegrp ( extrudeSide ) preservegroups ( on ) insettingsection ( 0 ) limitinset ( on ) commonlimit ( on ) normalsection ( 0 ) addvertexnomrals ( off ) cuspangle ( 60 ) cuspfront ( on ) cuspback ( on ) shapecontrolsection ( 0 ) frontmagnitude ( 1 ) backmagnitude ( 1 ) frontstiffness ( 0 ) backstiffness ( 0 ) interpolation ( rotatingframe ) spacing ( arclengthuniform ) externalspinesection ( 0 ) reversespinedirection ( off ) axialrotation ( 0 ) frontblend ( 0.10000000000000001 ) backblend ( 0.10000000000000001 ) thicknesssection ( 0 ) thicknessscale ( 1 ) usethicknessattrib ( on ) thicknessattrib ( thickness ) usethicknessramp ( on ) thicknessramp ( 2 ) twistsection ( 0 ) usetwistattrib ( on ) twistattrib ( twist ) usetwistramp ( on ) twistramp ( 2 ) twistscale ( 180 ) localattribs ( 0 ) uselocalzscaleattrib ( off ) localzscaleattrib ( zscale ) uselocalinsetscaleattrib ( off ) localinsetscaleattrib ( insetscale ) uselocaltwistattrib ( off ) localtwistscaleattrib ( twistscale ) uselocaldivsattrib ( off ) locadivscaleattrib ( divsscale ) localframeattribs ( 0 ) uselocalxattrib ( off ) localxattrib ( localx ) uselocalzattirb ( off ) localzattirb ( localz ) uselocalctrattrib ( off ) localctrattrib ( localctr ) thicknessramp1pos ( 0 ) thicknessramp1value ( 1 ) thicknessramp1interp ( catmull-rom ) thicknessramp2pos ( 1 ) thicknessramp2value ( 1 ) thicknessramp2interp ( catmull-rom ) twistramp1pos ( 0 ) twistramp1value ( 0.5 ) twistramp1interp ( catmull-rom ) twistramp2pos ( 1 ) twistramp2value ( 0.5 ) twistramp2interp ( catmull-rom )
chlock polyextrude_extendSides -*
chautoscope polyextrude_extendSides -*
opcolor -c 0.80000001192092896 0.80000001192092896 0.80000001192092896 polyextrude_extendSides
opset -d off -r off -h on -f off -y off -t off -l off -s off -u off -c off -e on -b off polyextrude_extendSides
opexprlanguage -s hscript polyextrude_extendSides
opuserdata -n '___Version___' -v '15.0.416' polyextrude_extendSides

# Node group_boundaryPoints (Sop/group)
opadd -e -n group group_boundaryPoints
oplocate -x 7.2141599999999997 -y 2.6177600000000001 group_boundaryPoints
opspareds "" group_boundaryPoints
chblockbegin
chadd -t 0 0 group_boundaryPoints rangeend
chkey -t 0 -v 0 -m 0 -a 0 -A 0 -T a  -F '$N' group_boundaryPoints/rangeend
chblockend
opparm -V 15.0.416 group_boundaryPoints group ( "" ) stdswitcher ( 0 0 0 ) docreategrp ( on ) crname ( boundaryPoints ) entity ( point ) geotype ( all ) mergeop ( replace ) switcher2 ( 3 3 3 3 ) groupnumber ( off ) ordered ( off ) groupop ( grppattern ) filter ( 1 ) pattern ( "" ) range ( 0 rangeend ) select ( 1 2 ) groupbounding ( off ) boundtype ( usebbox ) size ( 1 1 1 ) t ( 0 0 0 ) iso ( 0 ) invertvolume ( off ) includenotwhollycontained ( off ) groupnormal ( off ) dir ( 0 0 1 ) angle ( 180 ) camerapath ( "" ) nonplanar ( off ) nonplanartol ( 0.001 ) groupedges ( on ) dominedgeangle ( off ) minedgeangle ( 20 ) domaxedgeangle ( off ) maxedgeangle ( 20 ) edgeanglebetweenedges ( off ) dominedgelen ( off ) minedgelen ( 0 ) domaxedgelen ( off ) maxedgelen ( 0 ) dodepth ( off ) edgestep ( 0 ) edgeptgrp ( 0 ) unshared ( on ) boundarygroups ( on ) combineentity ( guess ) grpequal ( "" ) not1 ( off ) grp1 ( "" ) op1 ( none ) not2 ( off ) grp2 ( "" ) op2 ( none ) not3 ( off ) grp3 ( "" ) op3 ( none ) not4 ( off ) grp4 ( "" ) switcher3 ( 0 0 0 ) oldname ( "" ) newname ( "" ) cnvfromtype ( primgroup ) cnvtotype ( ptgroup ) convertg ( "" ) cnvtname ( "" ) preserve ( off ) primswithallpts ( off ) destroyname ( "" ) type ( 1 )
chlock group_boundaryPoints -*
chautoscope group_boundaryPoints -*
opcolor -c 0.80000001192092896 0.80000001192092896 0.80000001192092896 group_boundaryPoints
opset -d off -r off -h on -f off -y off -t off -l off -s off -u off -c off -e on -b off group_boundaryPoints
opexprlanguage -s hscript group_boundaryPoints
opuserdata -n '___Version___' -v '15.0.416' group_boundaryPoints

# Node group_boundaryEdges (Sop/group)
opadd -e -n group group_boundaryEdges
oplocate -x 7.2141599999999997 -y -3.5989100000000001 group_boundaryEdges
opspareds "" group_boundaryEdges
chblockbegin
chadd -t 0 0 group_boundaryEdges rangeend
chkey -t 0 -v 0 -m 0 -a 0 -A 0 -T a  -F '$N' group_boundaryEdges/rangeend
chblockend
opparm -V 15.0.416 group_boundaryEdges group ( "" ) stdswitcher ( 2 2 2 ) docreategrp ( off ) crname ( boundaryEdges ) entity ( edge ) geotype ( all ) mergeop ( replace ) switcher2 ( 0 0 0 0 ) groupnumber ( on ) ordered ( off ) groupop ( grppattern ) filter ( 1 ) pattern ( "" ) range ( 0 rangeend ) select ( 1 2 ) groupbounding ( off ) boundtype ( usebbox ) size ( 1 1 1 ) t ( 0 0 0 ) iso ( 0 ) invertvolume ( off ) includenotwhollycontained ( off ) groupnormal ( off ) dir ( 0 0 1 ) angle ( 180 ) camerapath ( "" ) nonplanar ( off ) nonplanartol ( 0.001 ) groupedges ( off ) dominedgeangle ( off ) minedgeangle ( 20 ) domaxedgeangle ( off ) maxedgeangle ( 20 ) edgeanglebetweenedges ( off ) dominedgelen ( off ) minedgelen ( 0 ) domaxedgelen ( off ) maxedgelen ( 0 ) dodepth ( off ) edgestep ( 0 ) edgeptgrp ( 0 ) unshared ( off ) boundarygroups ( off ) combineentity ( guess ) grpequal ( "" ) not1 ( off ) grp1 ( "" ) op1 ( none ) not2 ( off ) grp2 ( "" ) op2 ( none ) not3 ( off ) grp3 ( "" ) op3 ( none ) not4 ( off ) grp4 ( "" ) switcher3 ( 1 1 1 ) oldname ( "" ) newname ( "" ) cnvfromtype ( ptgroup ) cnvtotype ( edgegroup ) convertg ( boundaryPoints ) cnvtname ( boundaryEdges ) preserve ( off ) primswithallpts ( on ) destroyname ( "" ) type ( 1 )
chlock group_boundaryEdges -*
chautoscope group_boundaryEdges -*
opcolor -c 0.80000001192092896 0.80000001192092896 0.80000001192092896 group_boundaryEdges
opset -d off -r off -h on -f off -y off -t off -l off -s off -u off -c off -e on -b off group_boundaryEdges
opexprlanguage -s hscript group_boundaryEdges
opuserdata -n '___Version___' -v '15.0.416' group_boundaryEdges

# Node attributeCreate_pscaleNewPoints (Sop/attribcreate::2.0)
opadd -e -n attribcreate::2.0 attributeCreate_pscaleNewPoints
oplocate -x 21.807701110839844 -y 4.0133018493652344 attributeCreate_pscaleNewPoints
opspareds "" attributeCreate_pscaleNewPoints
opparm attributeCreate_pscaleNewPoints  numattr ( 1 )
chblockbegin
chadd -t 0 0 attributeCreate_pscaleNewPoints value1v1
chkey -t 0 -v 0 -m 0 -a 0 -A 0 -T a  -F 'fit01(chramp("../../controls/ramp", rand($PT), 0), ch("../../controls/minpscale"), ch("../../controls/maxpscale"))' attributeCreate_pscaleNewPoints/value1v1
chblockend
opparm -V 15.0.416 attributeCreate_pscaleNewPoints group ( "" ) grouptype ( guess ) numattr ( 1 ) enable1 ( on ) name1 ( pscale ) existing1 ( better ) createvarmap1 ( on ) varname1 ( "" ) class1 ( point ) savetoinfo1 ( off ) type1 ( float ) typeinfo1 ( guess ) precision1 ( 32 ) size1 ( 1 ) default1v ( 0 0 0 0 ) writevalues1 ( on ) uselocal1 ( on ) value1v ( value1v1 0 0 0 ) string1 ( "" )
chlock attributeCreate_pscaleNewPoints -*
chautoscope attributeCreate_pscaleNewPoints -*
opcolor -c 0.80000001192092896 0.80000001192092896 0.80000001192092896 attributeCreate_pscaleNewPoints
opset -d off -r off -h off -f off -y off -t off -l off -s off -u off -c off -e on -b off attributeCreate_pscaleNewPoints
opexprlanguage -s hscript attributeCreate_pscaleNewPoints
opuserdata -n '___Version___' -v '15.0.416' attributeCreate_pscaleNewPoints

# Node vdbFromPolygons_density (Sop/vdbfrompolygons)
opadd -e -n vdbfrompolygons vdbFromPolygons_density
oplocate -x 14.222900390625 -y 3.9181902408599854 vdbFromPolygons_density
opspareds "" vdbFromPolygons_density
opparm vdbFromPolygons_density  numattrib ( 0 )
opparm -V 15.0.416 vdbFromPolygons_density voxelsize ( 0.10000000000000001 ) group ( "" ) builddistance ( off ) distancename ( SDF ) buildfog ( on ) fogname ( density ) useworldspaceunits ( off ) exteriorbandvoxels ( 1 ) interiorbandvoxels ( 3 ) exteriorband ( 1 ) interiorband ( 1 ) fillinterior ( on ) unsigneddist ( off ) numattrib ( 0 )
chlock vdbFromPolygons_density -*
chautoscope vdbFromPolygons_density -*
opcolor -c 0.80000001192092896 0.80000001192092896 0.80000001192092896 vdbFromPolygons_density
opset -d off -r off -h off -f off -y off -t off -l off -s off -u off -c off -e on -b off vdbFromPolygons_density
opexprlanguage -s hscript vdbFromPolygons_density
opuserdata -n '___Version___' -v '15.0.416' vdbFromPolygons_density

# Node peak_smaller (Sop/peak)
opadd -e -n peak peak_smaller
oplocate -x 14.222900390625 -y 4.8178987503051758 peak_smaller
opspareds "" peak_smaller
opparm -V 15.0.416 peak_smaller group ( "" ) grouptype ( guess ) dist ( -0.5 ) updatenmls ( on )
chlock peak_smaller -*
chautoscope peak_smaller -*
opcolor -c 0.80000001192092896 0.80000001192092896 0.80000001192092896 peak_smaller
opset -d off -r off -h off -f off -y off -t off -l off -s off -u off -c off -e on -b off peak_smaller
opexprlanguage -s hscript peak_smaller
opuserdata -n '___Version___' -v '15.0.416' peak_smaller
oporder -e scatter_initialPoints OUT_initialPoints vdbFromPolygons OUT_liquidVelocity attributeCreate_pscale OUT_emissionGeometry group_highVel bound_band delete_nonVelocity OUT_liquidSurface attributeCreate_massLiquid attributeCreate_volume attributeCreate_radius attributeCreate_massAir OUT_newPoints dopImport_newPoints facet_computeNormalsLiquid attributeCreate_v1 tube OUT_container polyextrude_thickness facet_reverseNormalsContainer attribcreate_idLocal wireframe_container merge_surfaceAndContainer attributeCreate_id delete_topCap tube1 delete_nonTop delete_nonDensity scatter_sourcePoints mountain_waves remesh_constantEdges polyextrude_extendSides group_boundaryPoints group_boundaryEdges attributeCreate_pscaleNewPoints vdbFromPolygons_density peak_smaller 
opcf ..
opcf DOPNetwork

# Node output (Dop/output)
opadd -e -n output output
oplocate -x 0.239152 -y 3.4834200000000002 output
opspareds "" output
chblockbegin
chadd -t 0 0 output f1
chkey -t 0 -v 0 -m 0 -a 0 -A 0 -T a  -F '$FSTART' output/f1
chadd -t 0 0 output f2
chkey -t 0 -v 0 -m 0 -a 0 -A 0 -T a  -F '$FEND' output/f2
chblockend
opparm output execute ( 0 ) executebackground ( 0 ) f ( f1 f2 1 ) take ( _current_ ) dopoutput ( '$HIP/sim/$HIPNAME.`opname("..")`.$SF.sim' ) usesimframes ( on ) mkpath ( on ) initsim ( off ) alfprogress ( off )
chlock output -*
chautoscope output -*
opcolor -c 0.80000001192092896 0.80000001192092896 0.80000001192092896 output
opset -d on -r off -h off -f off -y off -t off -l off -s off -u off -c off -e on -b off output
opexprlanguage -s hscript output
opuserdata -n '___Version___' -v '' output
opuserdata -n '___toolcount___' -v '2' output
opuserdata -n '___toolid___' -v 'dynamics_poplocation' output

# Node popObject_initialPoints (Dop/popobject)
opadd -e -n popobject popObject_initialPoints
oplocate -x -5.76478 -y 8.4177400000000002 popObject_initialPoints
opspareds "" popObject_initialPoints
chblockbegin
chadd -t 0 0 popObject_initialPoints createframe
chkey -t 0 -v 0 -m 0 -a 0 -A 0 -T a  -F 'ch(opcreator(".")+"/startframe")' popObject_initialPoints/createframe
chblockend
opparm popObject_initialPoints usesimframe ( off ) createframe ( createframe ) object_name ( '$OS' ) solvefirstframe ( on ) initial_geo ( /obj/inputs/OUT_initialPoints ) usetransform ( off ) folder0 ( 2 2 2 ) showinstance ( on ) instancecolor ( 0 0 1 ) tol ( 0.01 ) volumeoffset ( 0 ) bounce ( 1 ) bounceforward ( 1 ) friction ( 0 ) dynamicfriction ( 1 ) temperature ( 0 )
chlock popObject_initialPoints -*
chautoscope popObject_initialPoints -*
opcolor -c 0.80000001192092896 0.80000001192092896 0.80000001192092896 popObject_initialPoints
opset -d off -r off -h off -f off -y off -t off -l off -s off -u off -c off -e on -b off popObject_initialPoints
opexprlanguage -s hscript popObject_initialPoints
opuserdata -n '___Version___' -v '' popObject_initialPoints
opuserdata -n '___toolcount___' -v '2' popObject_initialPoints
opuserdata -n '___toolid___' -v 'dynamics_poplocation' popObject_initialPoints

# Node merge_newPoints (Dop/merge)
opadd -e -n merge merge_newPoints
oplocate -x 0.31798599999999999 -y 8.9081700000000001 merge_newPoints
opspareds "" merge_newPoints
chblockbegin
chadd -t 0 0 merge_newPoints activation
chkey -t 0 -v 1 -m 0 -a 0 -A 0 -T a  -F 'constant()' merge_newPoints/activation
chblockend
opparm -V 15.0.416 merge_newPoints activation ( activation ) activationrules ( always ) affectortype ( ordered ) relationship ( SIM_RelationshipCollide )
chlock merge_newPoints -*
chautoscope merge_newPoints -*
opcolor -c 0.80000001192092896 0.80000001192092896 0.80000001192092896 merge_newPoints
opset -d off -r off -h off -f off -y off -t off -l off -s off -u off -c off -e on -b off merge_newPoints
opexprlanguage -s hscript merge_newPoints
opuserdata -n '___Version___' -v '15.0.416' merge_newPoints

# Node POPSolver_prepareNewPoints (Dop/sopsolver::2.0)
opadd -e -n sopsolver::2.0 POPSolver_prepareNewPoints
oplocate -x 1.8418699999999999 -y 10.021100000000001 POPSolver_prepareNewPoints
opspareds "" POPSolver_prepareNewPoints
opparm -V 15.0.416 POPSolver_prepareNewPoints parmop_usesoppath ( default ) usesoppath ( on ) parmop_soppath ( default ) soppath ( /obj/inputs/OUT_newPoints ) parmop_datapath ( default ) datapath ( Geometry ) parmop_transformsopoutput ( default ) transformsopoutput ( on ) parmop_solveinitframe ( default ) solveinitframe ( off ) parmop_usetimestep ( default ) usetimestep ( on ) parmop_timescale ( default ) timescale ( 1 ) defaultparmop ( initial ) addaffectors ( on ) group ( * ) dataname ( '$OS' ) uniquedataname ( on ) solverperobject ( off )
chlock POPSolver_prepareNewPoints -*
chautoscope POPSolver_prepareNewPoints -*
opcolor -c 0.80000001192092896 0.80000001192092896 0.80000001192092896 POPSolver_prepareNewPoints
opset -d off -r off -h off -f off -y off -t off -l off -s off -u off -c off -e on -b off POPSolver_prepareNewPoints
opexprlanguage -s hscript POPSolver_prepareNewPoints
opuserdata -n '___Version___' -v '15.0.416' POPSolver_prepareNewPoints
opcf POPSolver_prepareNewPoints

# Node dop_geometry (Sop/dopimport)
opadd -e -n dopimport dop_geometry
oplocate -x 3.6318600000000001 -y -1.8995500000000001 dop_geometry
opspareds "" dop_geometry
chblockbegin
chadd -t 0 0 dop_geometry doposxform
chkey -t 0 -v 1 -m 0 -a 0 -A 0 -T a  -F 'ch("../transformsopoutput")' dop_geometry/doposxform
chadd -t 0 0 dop_geometry doxform
chkey -t 0 -v 1 -m 0 -a 0 -A 0 -T a  -F 'ch("../transformsopoutput")' dop_geometry/doxform
chadd -t 0 0 dop_geometry integrateovertime
chkey -t 0 -v 0 -m 0 -a 0 -A 0 -T a  -F '1/$FPS' dop_geometry/integrateovertime
chblockend
opparm -V 15.0.416 dop_geometry doppath ( '`stamps("..", "DOPNET", "../..")`' ) objpattern ( '`stamps("..", "OBJID", arg(dopnodeobjs(".."),0))`' ) singleobject ( off ) importstyle ( fetch ) pivot ( centroid ) viewportlod ( full ) importbyname ( on ) objectnames ( dopobject ) geodatapath ( '`stamps("..", "DATANAME", chs("../datapath"))`' ) inverseop ( off ) doposxform ( doposxform ) doxform ( doxform ) keepworldspacepos ( on ) centeratpivot ( on ) addname ( off ) adddopobjectname ( off ) adddopobjectid ( off ) addtoexistingvel ( on ) deleteabandoned ( on ) pointvels ( none ) integrateovertime ( integrateovertime ) donotsim ( on )
chlock dop_geometry -*
chautoscope dop_geometry -*
opcolor -c 0.60000002384185791 0.40000000596046448 1 dop_geometry
opset -d off -r off -h off -f off -y off -t off -l off -s off -u off -c off -e on -b off dop_geometry
opexprlanguage -s hscript dop_geometry
opuserdata -n '___Version___' -v '15.0.416' dop_geometry

# Node impacts (Sop/dopimportrecords)
opadd -e -n dopimportrecords impacts
oplocate -x 6.3931899999999997 -y -1.8601000000000001 impacts
opspareds "" impacts
opparm -V 15.0.416 impacts doppath ( '`stamps("..", "DOPNET", "../..")`' ) objpattern ( '`stamps("..", "OBJID", arg(dopnodeobjs(".."),0))`' ) datapath ( Impacts ) record ( Impacts ) field ( * ) posfield ( 't position' )
chlock impacts -*
chautoscope impacts -*
opcolor -c 0.60000002384185791 0.40000000596046448 1 impacts
opset -d off -r off -h off -f off -y off -t off -l off -s off -u off -c off -e on -b off impacts
opexprlanguage -s hscript impacts
opuserdata -n '___Version___' -v '15.0.416' impacts

# Node feedbacks (Sop/dopimportrecords)
opadd -e -n dopimportrecords feedbacks
oplocate -x 8.6226900000000004 -y -1.9601299999999999 feedbacks
opspareds "" feedbacks
opparm -V 15.0.416 feedbacks doppath ( '`stamps("..", "DOPNET", "../..")`' ) objpattern ( '`stamps("..", "OBJID", arg(dopnodeobjs(".."),0))`' ) datapath ( Feedback ) record ( Impacts ) field ( * ) posfield ( 't position' )
chlock feedbacks -*
chautoscope feedbacks -*
opcolor -c 0.60000002384185791 0.40000000596046448 1 feedbacks
opset -d off -r off -h off -f off -y off -t off -l off -s off -u off -c off -e on -b off feedbacks
opexprlanguage -s hscript feedbacks
opuserdata -n '___Version___' -v '15.0.416' feedbacks

# Node relationship_geometry (Sop/object_merge)
opadd -e -n object_merge relationship_geometry
oplocate -x 11.0848 -y -1.89367 relationship_geometry
opspareds '    group { 	name	"folder0" 	label	"Object Merge"  	parm { 	    name	"xformtype" 	    baseparm 	    label	"Transform" 	    export	none 	} 	parm { 	    name	"xformpath" 	    baseparm 	    label	"Transform Object" 	    export	none 	} 	parm { 	    name	"invertxform" 	    baseparm 	    label	"Invert Transform" 	    export	none 	} 	parm { 	    name	"createptgroups" 	    baseparm 	    label	"Create Point Groups" 	    export	none 	} 	parm { 	    name	"ptgroupprefix" 	    baseparm 	    label	"Point Group Prefix" 	    export	none 	} 	parm { 	    name	"createprimgroups" 	    baseparm 	    label	"Create Primitive Groups" 	    export	none 	} 	parm { 	    name	"primgroupprefix" 	    baseparm 	    label	"Primitive Group Prefix" 	    export	none 	} 	parm { 	    name	"verbosegroups" 	    baseparm 	    label	"Verbose Group Names" 	    export	none 	} 	parm { 	    name	"createptstring" 	    baseparm 	    label	"Create Per-Point Path" 	    export	none 	} 	parm { 	    name	"createprimstring" 	    baseparm 	    label	"Create Per-Primitive Path" 	    export	none 	} 	parm { 	    name	"pathattrib" 	    baseparm 	    label	"Path Attribute" 	    export	none 	} 	parm { 	    name	"pack" 	    baseparm 	    label	"Pack Geometry Before Merging" 	    export	none 	} 	parm { 	    name	"pivot" 	    baseparm 	    label	"Pivot Location" 	    export	none 	} 	parm { 	    name	"viewportlod" 	    baseparm 	    label	"Display As" 	    export	none 	} 	parm { 	    name	"addpath" 	    baseparm 	    label	"Add Path Attribute" 	    export	none 	} 	parm { 	    name	"_separator" 	    baseparm 	    label	"" 	    export	none 	} 	multiparm { 	    name	"numobj" 	    label	"Number of Objects" 	    baseparm 	    default	1  	    parm { 		name	"enable#" 		baseparm 		label	"Enable Merge #" 		export	none 	    } 	    parm { 		name	"objpath#" 		baseparm 		label	"Object #" 		export	none 	    } 	    parm { 		name	"group#" 		baseparm 		label	"Group #" 		export	none 	    } 	    parm { 		name	"expand#" 		baseparm 		label	"Expand Group #" 		export	none 	    } 	}      }      group { 	name	"folder0_1" 	label	"Custom Parameters"  	parm { 	    name	"relnode" 	    label	"Relationship" 	    type	oppath 	    default	{ "../.." } 	    range	{ 0 1 } 	    export	none 	    parmtag	{ "opfilter" "!!DOP!!" } 	    parmtag	{ "oprelative" "." } 	}     }      parm { 	name	"suffixfirstgroup" 	baseparm 	label	"Add Suffix to First Group" 	export	none     } ' relationship_geometry
opparm relationship_geometry  numobj ( 1 )
chblockbegin
chadd -t 0 0 relationship_geometry relnode
chkey -t 0 -v 0 -m 0 -a 0 -A 0 -T a  -F 'import toolutils\n\nnode = hou.node(".")\nsopsolver = hou.node("..")\n\n# Attempt to discover a constraint network that we\'re wired to.\nnodetypes = ["constraintnetwork", "gluenetworkconstraint", "springnetworkconstraint"]\nfor nodetype in nodetypes:\n    network = toolutils.findOutputNodeOfBaseType(sopsolver, nodetype)\n    if network:\n        return node.relativePathTo(network)\n\nreturn "../.."' -l p relationship_geometry/relnode
chblockend
opparm -V 15.0.416 relationship_geometry numobj ( 1 ) _separator ( ) xformtype ( object ) xformpath ( "" ) invertxform ( off ) createptgroups ( off ) ptgroupprefix ( _ptgrp_ ) createprimgroups ( off ) primgroupprefix ( _primgrp_ ) verbosegroups ( off ) suffixfirstgroup ( on ) createptstring ( off ) createprimstring ( off ) pathattrib ( objname ) pack ( off ) pivot ( centroid ) viewportlod ( full ) addpath ( on ) enable1 ( on ) objpath1 ( '`stamps("..", "DATAPATH", chsop("relnode") + ":Relationships/" + chs(chsop("relnode") + "/relname") + "/" + chs(chsop("relnode") + "/relationship/dataname") + "/Geometry")`' ) group1 ( "" ) expand1 ( off ) folder0 ( 1 1 ) relnode ( relnode )
chlock relationship_geometry -*
chautoscope relationship_geometry -*
opcolor -c 0.60000002384185791 0.40000000596046448 1 relationship_geometry
opset -d off -r off -h off -f off -y off -t off -l off -s off -u off -c off -e on -b off relationship_geometry
opexprlanguage -s hscript relationship_geometry
opuserdata -n '___Version___' -v '15.0.416' relationship_geometry

# Node attributeCreate_pscale (Sop/attribcreate::2.0)
opadd -e -n attribcreate::2.0 attributeCreate_pscale
oplocate -x 3.6318600000000001 -y -2.5841099999999999 attributeCreate_pscale
opspareds "" attributeCreate_pscale
opparm attributeCreate_pscale  numattr ( 1 )
chblockbegin
chadd -t 0 0 attributeCreate_pscale value1v1
chkey -t 0 -v 0 -m 0 -a 0 -A 0 -T a  -F '4.0*exp(rand($PT)-1.0)' attributeCreate_pscale/value1v1
chblockend
opparm -V 15.0.416 attributeCreate_pscale group ( "" ) grouptype ( guess ) numattr ( 1 ) enable1 ( on ) name1 ( pscale ) existing1 ( better ) createvarmap1 ( on ) varname1 ( "" ) class1 ( point ) savetoinfo1 ( off ) type1 ( float ) typeinfo1 ( guess ) precision1 ( 32 ) size1 ( 1 ) default1v ( 0 0 0 0 ) writevalues1 ( on ) uselocal1 ( on ) value1v ( value1v1 0 0 0 ) string1 ( "" )
chlock attributeCreate_pscale -*
chautoscope attributeCreate_pscale -*
opcolor -c 0.80000001192092896 0.80000001192092896 0.80000001192092896 attributeCreate_pscale
opset -d off -r off -h off -f off -y off -t off -l off -s off -u off -c off -e on -b on attributeCreate_pscale
opexprlanguage -s hscript attributeCreate_pscale
opuserdata -n '___Version___' -v '15.0.416' attributeCreate_pscale

# Node attributeCreate_massLiquid (Sop/attribcreate::2.0)
opadd -e -n attribcreate::2.0 attributeCreate_massLiquid
oplocate -x 3.6318600000000001 -y -4.1814299999999998 attributeCreate_massLiquid
opspareds "" attributeCreate_massLiquid
opparm attributeCreate_massLiquid  numattr ( 1 )
chblockbegin
chadd -t 0 0 attributeCreate_massLiquid value1v1
chkey -t 0 -v 0 -m 0 -a 0 -A 0 -T a  -F '4.0 * 3.14 * pow($RADIUS, 2) * ch("../controls/filmthickness")/2.0 * ch("../controls/airdensity")' attributeCreate_massLiquid/value1v1
chblockend
opparm -V 15.0.416 attributeCreate_massLiquid group ( "" ) grouptype ( guess ) numattr ( 1 ) enable1 ( on ) name1 ( massLiquid ) existing1 ( better ) createvarmap1 ( on ) varname1 ( "" ) class1 ( point ) savetoinfo1 ( off ) type1 ( float ) typeinfo1 ( guess ) precision1 ( 32 ) size1 ( 1 ) default1v ( 0 0 0 0 ) writevalues1 ( on ) uselocal1 ( on ) value1v ( value1v1 0 0 0 ) string1 ( "" )
chlock attributeCreate_massLiquid -*
chautoscope attributeCreate_massLiquid -*
opcolor -c 0.80000001192092896 0.80000001192092896 0.80000001192092896 attributeCreate_massLiquid
opset -d off -r off -h off -f off -y off -t off -l off -s off -u off -c off -e on -b on attributeCreate_massLiquid
opexprlanguage -s hscript attributeCreate_massLiquid
opuserdata -n '___Version___' -v '15.0.416' attributeCreate_massLiquid

# Node attributeCreate_volume (Sop/attribcreate::2.0)
opadd -e -n attribcreate::2.0 attributeCreate_volume
oplocate -x 3.6318600000000001 -y -4.9800899999999997 attributeCreate_volume
opspareds "" attributeCreate_volume
opparm attributeCreate_volume  numattr ( 1 )
chblockbegin
chadd -t 0 0 attributeCreate_volume value1v1
chkey -t 0 -v 0 -m 0 -a 0 -A 0 -T a  -F '4.0/3.0 * 3.14 * pow($RADIUS, 3)' attributeCreate_volume/value1v1
chblockend
opparm -V 15.0.416 attributeCreate_volume group ( "" ) grouptype ( guess ) numattr ( 1 ) enable1 ( on ) name1 ( volume ) existing1 ( better ) createvarmap1 ( on ) varname1 ( "" ) class1 ( point ) savetoinfo1 ( off ) type1 ( float ) typeinfo1 ( guess ) precision1 ( 32 ) size1 ( 1 ) default1v ( 0 0 0 0 ) writevalues1 ( on ) uselocal1 ( on ) value1v ( value1v1 0 0 0 ) string1 ( "" )
chlock attributeCreate_volume -*
chautoscope attributeCreate_volume -*
opcolor -c 0.80000001192092896 0.80000001192092896 0.80000001192092896 attributeCreate_volume
opset -d off -r off -h off -f off -y off -t off -l off -s off -u off -c off -e on -b on attributeCreate_volume
opexprlanguage -s hscript attributeCreate_volume
opuserdata -n '___Version___' -v '15.0.416' attributeCreate_volume

# Node attributeCreate_radius (Sop/attribcreate::2.0)
opadd -e -n attribcreate::2.0 attributeCreate_radius
oplocate -x 3.6318600000000001 -y -3.3827699999999998 attributeCreate_radius
opspareds "" attributeCreate_radius
opparm attributeCreate_radius  numattr ( 1 )
chblockbegin
chadd -t 0 0 attributeCreate_radius value1v1
chkey -t 0 -v 0 -m 0 -a 0 -A 0 -T a  -F '$PSCALE/2.0' attributeCreate_radius/value1v1
chblockend
opparm -V 15.0.416 attributeCreate_radius group ( "" ) grouptype ( guess ) numattr ( 1 ) enable1 ( on ) name1 ( radius ) existing1 ( better ) createvarmap1 ( on ) varname1 ( "" ) class1 ( point ) savetoinfo1 ( off ) type1 ( float ) typeinfo1 ( guess ) precision1 ( 32 ) size1 ( 1 ) default1v ( 0 0 0 0 ) writevalues1 ( on ) uselocal1 ( on ) value1v ( value1v1 0 0 0 ) string1 ( "" )
chlock attributeCreate_radius -*
chautoscope attributeCreate_radius -*
opcolor -c 0.80000001192092896 0.80000001192092896 0.80000001192092896 attributeCreate_radius
opset -d off -r off -h off -f off -y off -t off -l off -s off -u off -c off -e on -b on attributeCreate_radius
opexprlanguage -s hscript attributeCreate_radius
opuserdata -n '___Version___' -v '15.0.416' attributeCreate_radius

# Node attributeCreate_massAir (Sop/attribcreate::2.0)
opadd -e -n attribcreate::2.0 attributeCreate_massAir
oplocate -x 3.6318600000000001 -y -5.7854599999999996 attributeCreate_massAir
opspareds "" attributeCreate_massAir
opparm attributeCreate_massAir  numattr ( 1 )
chblockbegin
chadd -t 0 0 attributeCreate_massAir value1v1
chkey -t 0 -v 0 -m 0 -a 0 -A 0 -T a  -F '$VOLUME * ch("../controls/airdensity")' attributeCreate_massAir/value1v1
chblockend
opparm -V 15.0.416 attributeCreate_massAir group ( "" ) grouptype ( guess ) numattr ( 1 ) enable1 ( on ) name1 ( massAir ) existing1 ( better ) createvarmap1 ( on ) varname1 ( "" ) class1 ( point ) savetoinfo1 ( off ) type1 ( float ) typeinfo1 ( guess ) precision1 ( 32 ) size1 ( 1 ) default1v ( 0 0 0 0 ) writevalues1 ( on ) uselocal1 ( on ) value1v ( value1v1 0 0 0 ) string1 ( "" )
chlock attributeCreate_massAir -*
chautoscope attributeCreate_massAir -*
opcolor -c 0.80000001192092896 0.80000001192092896 0.80000001192092896 attributeCreate_massAir
opset -d on -r on -h off -f off -y off -t off -l off -s off -u off -c off -e on -b on attributeCreate_massAir
opexprlanguage -s hscript attributeCreate_massAir
opuserdata -n '___Version___' -v '15.0.416' attributeCreate_massAir
oporder -e dop_geometry impacts feedbacks relationship_geometry attributeCreate_pscale attributeCreate_massLiquid attributeCreate_volume attributeCreate_radius attributeCreate_massAir 
opcf ..

# Node forces (Dop/sopsolver::2.0)
opadd -e -n sopsolver::2.0 forces
oplocate -x 6.2019900000000003 -y 6.6528400000000003 forces
opspareds "" forces
opparm -V 15.0.416 forces parmop_usesoppath ( default ) usesoppath ( on ) parmop_soppath ( default ) soppath ( /obj/forces/OUT ) parmop_datapath ( default ) datapath ( Geometry ) parmop_transformsopoutput ( default ) transformsopoutput ( on ) parmop_solveinitframe ( default ) solveinitframe ( off ) parmop_usetimestep ( default ) usetimestep ( on ) parmop_timescale ( default ) timescale ( 1 ) defaultparmop ( initial ) addaffectors ( on ) group ( * ) dataname ( '$OS' ) uniquedataname ( on ) solverperobject ( off )
chlock forces -*
chautoscope forces -*
opcolor -c 0.80000001192092896 0.80000001192092896 0.80000001192092896 forces
opset -d off -r off -h off -f off -y off -t off -l off -s off -u off -c off -e on -b off forces
opexprlanguage -s hscript forces
opuserdata -n '___Version___' -v '15.0.416' forces
opcf forces

# Node dop_geometry (Sop/dopimport)
opadd -e -n dopimport dop_geometry
oplocate -x 3.6318600000000001 -y -1.8995500000000001 dop_geometry
opspareds "" dop_geometry
chblockbegin
chadd -t 0 0 dop_geometry doposxform
chkey -t 0 -v 1 -m 0 -a 0 -A 0 -T a  -F 'ch("../transformsopoutput")' dop_geometry/doposxform
chadd -t 0 0 dop_geometry doxform
chkey -t 0 -v 1 -m 0 -a 0 -A 0 -T a  -F 'ch("../transformsopoutput")' dop_geometry/doxform
chadd -t 0 0 dop_geometry integrateovertime
chkey -t 0 -v 0 -m 0 -a 0 -A 0 -T a  -F '1/$FPS' dop_geometry/integrateovertime
chblockend
opparm -V 15.0.416 dop_geometry doppath ( '`stamps("..", "DOPNET", "../..")`' ) objpattern ( '`stamps("..", "OBJID", arg(dopnodeobjs(".."),0))`' ) singleobject ( off ) importstyle ( fetch ) pivot ( centroid ) viewportlod ( full ) importbyname ( on ) objectnames ( dopobject ) geodatapath ( '`stamps("..", "DATANAME", chs("../datapath"))`' ) inverseop ( off ) doposxform ( doposxform ) doxform ( doxform ) keepworldspacepos ( on ) centeratpivot ( on ) addname ( off ) adddopobjectname ( off ) adddopobjectid ( off ) addtoexistingvel ( on ) deleteabandoned ( on ) pointvels ( none ) integrateovertime ( integrateovertime ) donotsim ( on )
chlock dop_geometry -*
chautoscope dop_geometry -*
opcolor -c 0.60000002384185791 0.40000000596046448 1 dop_geometry
opset -d on -r on -h off -f off -y off -t off -l off -s off -u off -c off -e on -b off dop_geometry
opexprlanguage -s hscript dop_geometry
opuserdata -n '___Version___' -v '15.0.416' dop_geometry

# Node impacts (Sop/dopimportrecords)
opadd -e -n dopimportrecords impacts
oplocate -x 6.3931899999999997 -y -1.8601000000000001 impacts
opspareds "" impacts
opparm -V 15.0.416 impacts doppath ( '`stamps("..", "DOPNET", "../..")`' ) objpattern ( '`stamps("..", "OBJID", arg(dopnodeobjs(".."),0))`' ) datapath ( Impacts ) record ( Impacts ) field ( * ) posfield ( 't position' )
chlock impacts -*
chautoscope impacts -*
opcolor -c 0.60000002384185791 0.40000000596046448 1 impacts
opset -d off -r off -h off -f off -y off -t off -l off -s off -u off -c off -e on -b off impacts
opexprlanguage -s hscript impacts
opuserdata -n '___Version___' -v '15.0.416' impacts

# Node feedbacks (Sop/dopimportrecords)
opadd -e -n dopimportrecords feedbacks
oplocate -x 8.6226900000000004 -y -1.9601299999999999 feedbacks
opspareds "" feedbacks
opparm -V 15.0.416 feedbacks doppath ( '`stamps("..", "DOPNET", "../..")`' ) objpattern ( '`stamps("..", "OBJID", arg(dopnodeobjs(".."),0))`' ) datapath ( Feedback ) record ( Impacts ) field ( * ) posfield ( 't position' )
chlock feedbacks -*
chautoscope feedbacks -*
opcolor -c 0.60000002384185791 0.40000000596046448 1 feedbacks
opset -d off -r off -h off -f off -y off -t off -l off -s off -u off -c off -e on -b off feedbacks
opexprlanguage -s hscript feedbacks
opuserdata -n '___Version___' -v '15.0.416' feedbacks

# Node relationship_geometry (Sop/object_merge)
opadd -e -n object_merge relationship_geometry
oplocate -x 11.0848 -y -1.89367 relationship_geometry
opspareds '    group { 	name	"folder0" 	label	"Object Merge"  	parm { 	    name	"xformtype" 	    baseparm 	    label	"Transform" 	    export	none 	} 	parm { 	    name	"xformpath" 	    baseparm 	    label	"Transform Object" 	    export	none 	} 	parm { 	    name	"invertxform" 	    baseparm 	    label	"Invert Transform" 	    export	none 	} 	parm { 	    name	"createptgroups" 	    baseparm 	    label	"Create Point Groups" 	    export	none 	} 	parm { 	    name	"ptgroupprefix" 	    baseparm 	    label	"Point Group Prefix" 	    export	none 	} 	parm { 	    name	"createprimgroups" 	    baseparm 	    label	"Create Primitive Groups" 	    export	none 	} 	parm { 	    name	"primgroupprefix" 	    baseparm 	    label	"Primitive Group Prefix" 	    export	none 	} 	parm { 	    name	"verbosegroups" 	    baseparm 	    label	"Verbose Group Names" 	    export	none 	} 	parm { 	    name	"createptstring" 	    baseparm 	    label	"Create Per-Point Path" 	    export	none 	} 	parm { 	    name	"createprimstring" 	    baseparm 	    label	"Create Per-Primitive Path" 	    export	none 	} 	parm { 	    name	"pathattrib" 	    baseparm 	    label	"Path Attribute" 	    export	none 	} 	parm { 	    name	"pack" 	    baseparm 	    label	"Pack Geometry Before Merging" 	    export	none 	} 	parm { 	    name	"pivot" 	    baseparm 	    label	"Pivot Location" 	    export	none 	} 	parm { 	    name	"viewportlod" 	    baseparm 	    label	"Display As" 	    export	none 	} 	parm { 	    name	"addpath" 	    baseparm 	    label	"Add Path Attribute" 	    export	none 	} 	parm { 	    name	"_separator" 	    baseparm 	    label	"" 	    export	none 	} 	multiparm { 	    name	"numobj" 	    label	"Number of Objects" 	    baseparm 	    default	1  	    parm { 		name	"enable#" 		baseparm 		label	"Enable Merge #" 		export	none 	    } 	    parm { 		name	"objpath#" 		baseparm 		label	"Object #" 		export	none 	    } 	    parm { 		name	"group#" 		baseparm 		label	"Group #" 		export	none 	    } 	    parm { 		name	"expand#" 		baseparm 		label	"Expand Group #" 		export	none 	    } 	}      }      group { 	name	"folder0_1" 	label	"Custom Parameters"  	parm { 	    name	"relnode" 	    label	"Relationship" 	    type	oppath 	    default	{ "../.." } 	    range	{ 0 1 } 	    export	none 	    parmtag	{ "opfilter" "!!DOP!!" } 	    parmtag	{ "oprelative" "." } 	}     }      parm { 	name	"suffixfirstgroup" 	baseparm 	label	"Add Suffix to First Group" 	export	none     } ' relationship_geometry
opparm relationship_geometry  numobj ( 1 )
chblockbegin
chadd -t 0 0 relationship_geometry relnode
chkey -t 0 -v 0 -m 0 -a 0 -A 0 -T a  -F 'import toolutils\n\nnode = hou.node(".")\nsopsolver = hou.node("..")\n\n# Attempt to discover a constraint network that we\'re wired to.\nnodetypes = ["constraintnetwork", "gluenetworkconstraint", "springnetworkconstraint"]\nfor nodetype in nodetypes:\n    network = toolutils.findOutputNodeOfBaseType(sopsolver, nodetype)\n    if network:\n        return node.relativePathTo(network)\n\nreturn "../.."' -l p relationship_geometry/relnode
chblockend
opparm -V 15.0.416 relationship_geometry numobj ( 1 ) _separator ( ) xformtype ( object ) xformpath ( "" ) invertxform ( off ) createptgroups ( off ) ptgroupprefix ( _ptgrp_ ) createprimgroups ( off ) primgroupprefix ( _primgrp_ ) verbosegroups ( off ) suffixfirstgroup ( on ) createptstring ( off ) createprimstring ( off ) pathattrib ( objname ) pack ( off ) pivot ( centroid ) viewportlod ( full ) addpath ( on ) enable1 ( on ) objpath1 ( '`stamps("..", "DATAPATH", chsop("relnode") + ":Relationships/" + chs(chsop("relnode") + "/relname") + "/" + chs(chsop("relnode") + "/relationship/dataname") + "/Geometry")`' ) group1 ( "" ) expand1 ( off ) folder0 ( 1 1 ) relnode ( relnode )
chlock relationship_geometry -*
chautoscope relationship_geometry -*
opcolor -c 0.60000002384185791 0.40000000596046448 1 relationship_geometry
opset -d off -r off -h off -f off -y off -t off -l off -s off -u off -c off -e on -b off relationship_geometry
opexprlanguage -s hscript relationship_geometry
opuserdata -n '___Version___' -v '15.0.416' relationship_geometry
oporder -e dop_geometry impacts feedbacks relationship_geometry 
opcf ..

# Node POPSolver_updateNumbers (Dop/sopsolver::2.0)
opadd -e -n sopsolver::2.0 POPSolver_updateNumbers
oplocate -x 2.0489199999999999 -y 8.3339200000000009 POPSolver_updateNumbers
opspareds "" POPSolver_updateNumbers
opparm -V 15.0.416 POPSolver_updateNumbers parmop_usesoppath ( default ) usesoppath ( on ) parmop_soppath ( default ) soppath ( /obj/numbers/OUT_points ) parmop_datapath ( default ) datapath ( Geometry ) parmop_transformsopoutput ( default ) transformsopoutput ( on ) parmop_solveinitframe ( default ) solveinitframe ( off ) parmop_usetimestep ( default ) usetimestep ( on ) parmop_timescale ( default ) timescale ( 1 ) defaultparmop ( initial ) addaffectors ( on ) group ( * ) dataname ( '$OS' ) uniquedataname ( on ) solverperobject ( off )
chlock POPSolver_updateNumbers -*
chautoscope POPSolver_updateNumbers -*
opcolor -c 0.80000001192092896 0.80000001192092896 0.80000001192092896 POPSolver_updateNumbers
opset -d off -r off -h off -f off -y off -t off -l off -s off -u off -c off -e on -b off POPSolver_updateNumbers
opexprlanguage -s hscript POPSolver_updateNumbers
opuserdata -n '___Version___' -v '15.0.416' POPSolver_updateNumbers
opcf POPSolver_updateNumbers

# Node dop_geometry (Sop/dopimport)
opadd -e -n dopimport dop_geometry
oplocate -x 3.6318600000000001 -y -1.8995500000000001 dop_geometry
opspareds "" dop_geometry
chblockbegin
chadd -t 0 0 dop_geometry doposxform
chkey -t 0 -v 1 -m 0 -a 0 -A 0 -T a  -F 'ch("../transformsopoutput")' dop_geometry/doposxform
chadd -t 0 0 dop_geometry doxform
chkey -t 0 -v 1 -m 0 -a 0 -A 0 -T a  -F 'ch("../transformsopoutput")' dop_geometry/doxform
chadd -t 0 0 dop_geometry integrateovertime
chkey -t 0 -v 0 -m 0 -a 0 -A 0 -T a  -F '1/$FPS' dop_geometry/integrateovertime
chblockend
opparm -V 15.0.416 dop_geometry doppath ( '`stamps("..", "DOPNET", "../..")`' ) objpattern ( '`stamps("..", "OBJID", arg(dopnodeobjs(".."),0))`' ) singleobject ( off ) importstyle ( fetch ) pivot ( centroid ) viewportlod ( full ) importbyname ( on ) objectnames ( dopobject ) geodatapath ( '`stamps("..", "DATANAME", chs("../datapath"))`' ) inverseop ( off ) doposxform ( doposxform ) doxform ( doxform ) keepworldspacepos ( on ) centeratpivot ( on ) addname ( off ) adddopobjectname ( off ) adddopobjectid ( off ) addtoexistingvel ( on ) deleteabandoned ( on ) pointvels ( none ) integrateovertime ( integrateovertime ) donotsim ( on )
chlock dop_geometry -*
chautoscope dop_geometry -*
opcolor -c 0.60000002384185791 0.40000000596046448 1 dop_geometry
opset -d off -r off -h off -f off -y off -t off -l off -s off -u off -c off -e on -b off dop_geometry
opexprlanguage -s hscript dop_geometry
opuserdata -n '___Version___' -v '15.0.416' dop_geometry

# Node impacts (Sop/dopimportrecords)
opadd -e -n dopimportrecords impacts
oplocate -x 6.3931899999999997 -y -1.8601000000000001 impacts
opspareds "" impacts
opparm -V 15.0.416 impacts doppath ( '`stamps("..", "DOPNET", "../..")`' ) objpattern ( '`stamps("..", "OBJID", arg(dopnodeobjs(".."),0))`' ) datapath ( Impacts ) record ( Impacts ) field ( * ) posfield ( 't position' )
chlock impacts -*
chautoscope impacts -*
opcolor -c 0.60000002384185791 0.40000000596046448 1 impacts
opset -d off -r off -h off -f off -y off -t off -l off -s off -u off -c off -e on -b off impacts
opexprlanguage -s hscript impacts
opuserdata -n '___Version___' -v '15.0.416' impacts

# Node feedbacks (Sop/dopimportrecords)
opadd -e -n dopimportrecords feedbacks
oplocate -x 8.6226900000000004 -y -1.9601299999999999 feedbacks
opspareds "" feedbacks
opparm -V 15.0.416 feedbacks doppath ( '`stamps("..", "DOPNET", "../..")`' ) objpattern ( '`stamps("..", "OBJID", arg(dopnodeobjs(".."),0))`' ) datapath ( Feedback ) record ( Impacts ) field ( * ) posfield ( 't position' )
chlock feedbacks -*
chautoscope feedbacks -*
opcolor -c 0.60000002384185791 0.40000000596046448 1 feedbacks
opset -d off -r off -h off -f off -y off -t off -l off -s off -u off -c off -e on -b off feedbacks
opexprlanguage -s hscript feedbacks
opuserdata -n '___Version___' -v '15.0.416' feedbacks

# Node relationship_geometry (Sop/object_merge)
opadd -e -n object_merge relationship_geometry
oplocate -x 11.0848 -y -1.89367 relationship_geometry
opspareds '    group { 	name	"folder0" 	label	"Object Merge"  	parm { 	    name	"xformtype" 	    baseparm 	    label	"Transform" 	    export	none 	} 	parm { 	    name	"xformpath" 	    baseparm 	    label	"Transform Object" 	    export	none 	} 	parm { 	    name	"invertxform" 	    baseparm 	    label	"Invert Transform" 	    export	none 	} 	parm { 	    name	"createptgroups" 	    baseparm 	    label	"Create Point Groups" 	    export	none 	} 	parm { 	    name	"ptgroupprefix" 	    baseparm 	    label	"Point Group Prefix" 	    export	none 	} 	parm { 	    name	"createprimgroups" 	    baseparm 	    label	"Create Primitive Groups" 	    export	none 	} 	parm { 	    name	"primgroupprefix" 	    baseparm 	    label	"Primitive Group Prefix" 	    export	none 	} 	parm { 	    name	"verbosegroups" 	    baseparm 	    label	"Verbose Group Names" 	    export	none 	} 	parm { 	    name	"createptstring" 	    baseparm 	    label	"Create Per-Point Path" 	    export	none 	} 	parm { 	    name	"createprimstring" 	    baseparm 	    label	"Create Per-Primitive Path" 	    export	none 	} 	parm { 	    name	"pathattrib" 	    baseparm 	    label	"Path Attribute" 	    export	none 	} 	parm { 	    name	"pack" 	    baseparm 	    label	"Pack Geometry Before Merging" 	    export	none 	} 	parm { 	    name	"pivot" 	    baseparm 	    label	"Pivot Location" 	    export	none 	} 	parm { 	    name	"viewportlod" 	    baseparm 	    label	"Display As" 	    export	none 	} 	parm { 	    name	"addpath" 	    baseparm 	    label	"Add Path Attribute" 	    export	none 	} 	parm { 	    name	"_separator" 	    baseparm 	    label	"" 	    export	none 	} 	multiparm { 	    name	"numobj" 	    label	"Number of Objects" 	    baseparm 	    default	1  	    parm { 		name	"enable#" 		baseparm 		label	"Enable Merge #" 		export	none 	    } 	    parm { 		name	"objpath#" 		baseparm 		label	"Object #" 		export	none 	    } 	    parm { 		name	"group#" 		baseparm 		label	"Group #" 		export	none 	    } 	    parm { 		name	"expand#" 		baseparm 		label	"Expand Group #" 		export	none 	    } 	}      }      group { 	name	"folder0_1" 	label	"Custom Parameters"  	parm { 	    name	"relnode" 	    label	"Relationship" 	    type	oppath 	    default	{ "../.." } 	    range	{ 0 1 } 	    export	none 	    parmtag	{ "opfilter" "!!DOP!!" } 	    parmtag	{ "oprelative" "." } 	}     }      parm { 	name	"suffixfirstgroup" 	baseparm 	label	"Add Suffix to First Group" 	export	none     } ' relationship_geometry
opparm relationship_geometry  numobj ( 1 )
chblockbegin
chadd -t 0 0 relationship_geometry relnode
chkey -t 0 -v 0 -m 0 -a 0 -A 0 -T a  -F 'import toolutils\n\nnode = hou.node(".")\nsopsolver = hou.node("..")\n\n# Attempt to discover a constraint network that we\'re wired to.\nnodetypes = ["constraintnetwork", "gluenetworkconstraint", "springnetworkconstraint"]\nfor nodetype in nodetypes:\n    network = toolutils.findOutputNodeOfBaseType(sopsolver, nodetype)\n    if network:\n        return node.relativePathTo(network)\n\nreturn "../.."' -l p relationship_geometry/relnode
chblockend
opparm -V 15.0.416 relationship_geometry numobj ( 1 ) _separator ( ) xformtype ( object ) xformpath ( "" ) invertxform ( off ) createptgroups ( off ) ptgroupprefix ( _ptgrp_ ) createprimgroups ( off ) primgroupprefix ( _primgrp_ ) verbosegroups ( off ) suffixfirstgroup ( on ) createptstring ( off ) createprimstring ( off ) pathattrib ( objname ) pack ( off ) pivot ( centroid ) viewportlod ( full ) addpath ( on ) enable1 ( on ) objpath1 ( '`stamps("..", "DATAPATH", chsop("relnode") + ":Relationships/" + chs(chsop("relnode") + "/relname") + "/" + chs(chsop("relnode") + "/relationship/dataname") + "/Geometry")`' ) group1 ( "" ) expand1 ( off ) folder0 ( 1 1 ) relnode ( relnode )
chlock relationship_geometry -*
chautoscope relationship_geometry -*
opcolor -c 0.60000002384185791 0.40000000596046448 1 relationship_geometry
opset -d off -r off -h off -f off -y off -t off -l off -s off -u off -c off -e on -b off relationship_geometry
opexprlanguage -s hscript relationship_geometry
opuserdata -n '___Version___' -v '15.0.416' relationship_geometry

# Node attributeCreate_pscale (Sop/attribcreate::2.0)
opadd -e -n attribcreate::2.0 attributeCreate_pscale
oplocate -x 3.6318600000000001 -y -2.5841099999999999 attributeCreate_pscale
opspareds "" attributeCreate_pscale
opparm attributeCreate_pscale  numattr ( 1 )
chblockbegin
chadd -t 0 0 attributeCreate_pscale value1v1
chkey -t 0 -v 0 -m 0 -a 0 -A 0 -T a  -F '4.0*exp(rand($PT)-1.0)' attributeCreate_pscale/value1v1
chblockend
opparm -V 15.0.416 attributeCreate_pscale group ( "" ) grouptype ( guess ) numattr ( 1 ) enable1 ( on ) name1 ( pscale ) existing1 ( better ) createvarmap1 ( on ) varname1 ( "" ) class1 ( point ) savetoinfo1 ( off ) type1 ( float ) typeinfo1 ( guess ) precision1 ( 32 ) size1 ( 1 ) default1v ( 0 0 0 0 ) writevalues1 ( on ) uselocal1 ( on ) value1v ( value1v1 0 0 0 ) string1 ( "" )
chlock attributeCreate_pscale -*
chautoscope attributeCreate_pscale -*
opcolor -c 0.80000001192092896 0.80000001192092896 0.80000001192092896 attributeCreate_pscale
opset -d off -r off -h off -f off -y off -t off -l off -s off -u off -c off -e on -b off attributeCreate_pscale
opexprlanguage -s hscript attributeCreate_pscale
opuserdata -n '___Version___' -v '15.0.416' attributeCreate_pscale

# Node attributeCreate_massLiquid (Sop/attribcreate::2.0)
opadd -e -n attribcreate::2.0 attributeCreate_massLiquid
oplocate -x 3.6318600000000001 -y -4.1814299999999998 attributeCreate_massLiquid
opspareds "" attributeCreate_massLiquid
opparm attributeCreate_massLiquid  numattr ( 1 )
chblockbegin
chadd -t 0 0 attributeCreate_massLiquid value1v1
chkey -t 0 -v 0 -m 0 -a 0 -A 0 -T a  -F '4.0 * 3.14 * pow($RADIUS, 2) * ch("../controls/filmthickness")/2.0 * ch("../controls/airdensity")' attributeCreate_massLiquid/value1v1
chblockend
opparm -V 15.0.416 attributeCreate_massLiquid group ( "" ) grouptype ( guess ) numattr ( 1 ) enable1 ( on ) name1 ( massLiquid ) existing1 ( better ) createvarmap1 ( on ) varname1 ( "" ) class1 ( point ) savetoinfo1 ( off ) type1 ( float ) typeinfo1 ( guess ) precision1 ( 32 ) size1 ( 1 ) default1v ( 0 0 0 0 ) writevalues1 ( on ) uselocal1 ( on ) value1v ( value1v1 0 0 0 ) string1 ( "" )
chlock attributeCreate_massLiquid -*
chautoscope attributeCreate_massLiquid -*
opcolor -c 0.80000001192092896 0.80000001192092896 0.80000001192092896 attributeCreate_massLiquid
opset -d off -r off -h off -f off -y off -t off -l off -s off -u off -c off -e on -b off attributeCreate_massLiquid
opexprlanguage -s hscript attributeCreate_massLiquid
opuserdata -n '___Version___' -v '15.0.416' attributeCreate_massLiquid

# Node attributeCreate_volume (Sop/attribcreate::2.0)
opadd -e -n attribcreate::2.0 attributeCreate_volume
oplocate -x 3.6318600000000001 -y -4.9800899999999997 attributeCreate_volume
opspareds "" attributeCreate_volume
opparm attributeCreate_volume  numattr ( 1 )
chblockbegin
chadd -t 0 0 attributeCreate_volume value1v1
chkey -t 0 -v 0 -m 0 -a 0 -A 0 -T a  -F '4.0/3.0 * 3.14 * pow($RADIUS, 3)' attributeCreate_volume/value1v1
chblockend
opparm -V 15.0.416 attributeCreate_volume group ( "" ) grouptype ( guess ) numattr ( 1 ) enable1 ( on ) name1 ( volume ) existing1 ( better ) createvarmap1 ( on ) varname1 ( "" ) class1 ( point ) savetoinfo1 ( off ) type1 ( float ) typeinfo1 ( guess ) precision1 ( 32 ) size1 ( 1 ) default1v ( 0 0 0 0 ) writevalues1 ( on ) uselocal1 ( on ) value1v ( value1v1 0 0 0 ) string1 ( "" )
chlock attributeCreate_volume -*
chautoscope attributeCreate_volume -*
opcolor -c 0.80000001192092896 0.80000001192092896 0.80000001192092896 attributeCreate_volume
opset -d off -r off -h off -f off -y off -t off -l off -s off -u off -c off -e on -b off attributeCreate_volume
opexprlanguage -s hscript attributeCreate_volume
opuserdata -n '___Version___' -v '15.0.416' attributeCreate_volume

# Node attributeCreate_radius (Sop/attribcreate::2.0)
opadd -e -n attribcreate::2.0 attributeCreate_radius
oplocate -x 3.6318600000000001 -y -3.3827699999999998 attributeCreate_radius
opspareds "" attributeCreate_radius
opparm attributeCreate_radius  numattr ( 1 )
chblockbegin
chadd -t 0 0 attributeCreate_radius value1v1
chkey -t 0 -v 0 -m 0 -a 0 -A 0 -T a  -F '$PSCALE/2.0' attributeCreate_radius/value1v1
chblockend
opparm -V 15.0.416 attributeCreate_radius group ( "" ) grouptype ( guess ) numattr ( 1 ) enable1 ( on ) name1 ( radius ) existing1 ( better ) createvarmap1 ( on ) varname1 ( "" ) class1 ( point ) savetoinfo1 ( off ) type1 ( float ) typeinfo1 ( guess ) precision1 ( 32 ) size1 ( 1 ) default1v ( 0 0 0 0 ) writevalues1 ( on ) uselocal1 ( on ) value1v ( value1v1 0 0 0 ) string1 ( "" )
chlock attributeCreate_radius -*
chautoscope attributeCreate_radius -*
opcolor -c 0.80000001192092896 0.80000001192092896 0.80000001192092896 attributeCreate_radius
opset -d off -r off -h off -f off -y off -t off -l off -s off -u off -c off -e on -b off attributeCreate_radius
opexprlanguage -s hscript attributeCreate_radius
opuserdata -n '___Version___' -v '15.0.416' attributeCreate_radius

# Node controls (Sop/null)
opadd -e -n null controls
oplocate -x 1.2291799999999999 -y -2.5841099999999999 controls
opspareds '    parm { 	name	"copyinput" 	baseparm 	label	"Copy Input" 	invisible 	export	none     }     parm { 	name	"cacheinput" 	baseparm 	label	"Cache Input" 	invisible 	export	none     }     parm { 	name	"filmthickness" 	label	"Film Thickness" 	type	float 	default	{ "0" } 	range	{ 0 10 } 	export	none     }     parm { 	name	"airdensity" 	label	"Air Density" 	type	float 	default	{ "0" } 	range	{ 0 10 } 	export	none     }     parm { 	name	"liquiddensity" 	label	"Liquid Density" 	type	float 	default	{ "0" } 	range	{ 0 10 } 	export	none     }     parm { 	name	"pscale" 	label	"Pscale" 	type	ramp_flt 	default	{ "2" } 	range	{ 1! 10 } 	export	none     } ' controls
opparm controls  pscale ( 2 )
opparm -V 15.0.416 controls copyinput ( on ) cacheinput ( off ) filmthickness ( 0.050000000000000003 ) airdensity ( 0.001225 ) liquiddensity ( 1 ) pscale ( 2 ) pscale1pos ( 0 ) pscale1value ( 0 ) pscale1interp ( linear ) pscale2pos ( 1 ) pscale2value ( 1 ) pscale2interp ( linear )
chlock controls -*
chautoscope controls -*
opcolor -c 0.66699999570846558 0 0 controls
opset -d off -r off -h off -f off -y off -t off -l off -s off -u off -c off -e on -b off controls
opexprlanguage -s hscript controls
opuserdata -n '___Version___' -v '15.0.416' controls

# Node attributeCreate_massAir (Sop/attribcreate::2.0)
opadd -e -n attribcreate::2.0 attributeCreate_massAir
oplocate -x 3.6318600000000001 -y -5.7854599999999996 attributeCreate_massAir
opspareds "" attributeCreate_massAir
opparm attributeCreate_massAir  numattr ( 1 )
chblockbegin
chadd -t 0 0 attributeCreate_massAir value1v1
chkey -t 0 -v 0 -m 0 -a 0 -A 0 -T a  -F '$VOLUME * ch("../controls/airdensity")' attributeCreate_massAir/value1v1
chblockend
opparm -V 15.0.416 attributeCreate_massAir group ( "" ) grouptype ( guess ) numattr ( 1 ) enable1 ( on ) name1 ( massAir ) existing1 ( better ) createvarmap1 ( on ) varname1 ( "" ) class1 ( point ) savetoinfo1 ( off ) type1 ( float ) typeinfo1 ( guess ) precision1 ( 32 ) size1 ( 1 ) default1v ( 0 0 0 0 ) writevalues1 ( on ) uselocal1 ( on ) value1v ( value1v1 0 0 0 ) string1 ( "" )
chlock attributeCreate_massAir -*
chautoscope attributeCreate_massAir -*
opcolor -c 0.80000001192092896 0.80000001192092896 0.80000001192092896 attributeCreate_massAir
opset -d on -r on -h off -f off -y off -t off -l off -s off -u off -c off -e on -b off attributeCreate_massAir
opexprlanguage -s hscript attributeCreate_massAir
opuserdata -n '___Version___' -v '15.0.416' attributeCreate_massAir
oporder -e dop_geometry impacts feedbacks relationship_geometry attributeCreate_pscale attributeCreate_massLiquid attributeCreate_volume attributeCreate_radius controls attributeCreate_massAir 
opcf ..

# Node merge_updatedPoints (Dop/merge)
opadd -e -n merge merge_updatedPoints
oplocate -x 0.27856900000000001 -y 7.6218899999999996 merge_updatedPoints
opspareds "" merge_updatedPoints
chblockbegin
chadd -t 0 0 merge_updatedPoints activation
chkey -t 0 -v 1 -m 0 -a 0 -A 0 -T a  -F 'constant()' merge_updatedPoints/activation
chblockend
opparm -V 15.0.416 merge_updatedPoints activation ( activation ) activationrules ( always ) affectortype ( ordered ) relationship ( SIM_RelationshipCollide )
chlock merge_updatedPoints -*
chautoscope merge_updatedPoints -*
opcolor -c 0.80000001192092896 0.80000001192092896 0.80000001192092896 merge_updatedPoints
opset -d off -r off -h off -f off -y off -t off -l off -s off -u off -c off -e on -b on merge_updatedPoints
opexprlanguage -s hscript merge_updatedPoints
opuserdata -n '___Version___' -v '15.0.416' merge_updatedPoints

# Node merge2 (Dop/merge)
opadd -e -n merge merge2
oplocate -x 0.27856900000000001 -y 6.4226700000000001 merge2
opspareds "" merge2
chblockbegin
chadd -t 0 0 merge2 activation
chkey -t 0 -v 1 -m 0 -a 0 -A 0 -T a  -F 'constant()' merge2/activation
chblockend
opparm -V 15.0.416 merge2 activation ( activation ) activationrules ( always ) affectortype ( ordered ) relationship ( SIM_RelationshipCollide )
chlock merge2 -*
chautoscope merge2 -*
opcolor -c 0.80000001192092896 0.80000001192092896 0.80000001192092896 merge2
opset -d off -r off -h off -f off -y off -t off -l off -s off -u off -c off -e on -b off merge2
opexprlanguage -s hscript merge2
opuserdata -n '___Version___' -v '15.0.416' merge2
oporder -e output popSolver popObject_initialPoints popsource_newPoints merge_newPoints POPSolver_prepareNewPoints forces POPSolver_updateNumbers merge_updatedPoints popAdvectByVolumes merge2 
opcf ..
opcf shapes

# Node sphere (Sop/sphere)
opadd -e -n sphere sphere
oplocate -x 1.5076799999999999 -y 2.2807499999999998 sphere
opspareds "" sphere
chblockbegin
chadd -t 0 0 sphere scale
chkey -t 0 -v 0 -m 0 -a 0 -A 0 -T a  -F '0.5*stamp("../copy_spheres", "size", 1.0)' sphere/scale
chblockend
opparm -V 15.0.416 sphere type ( poly ) surftype ( quads ) rad ( 1 1 1 ) t ( 0 0 0 ) scale ( scale ) orient ( y ) freq ( 1 ) rows ( 13 ) cols ( 24 ) orderu ( 4 ) orderv ( 4 ) imperfect ( on ) upole ( off ) accurate ( on ) triangularpoles ( on )
chlock sphere -*
chautoscope sphere -*
opcolor -c 0.80000001192092896 0.80000001192092896 0.80000001192092896 sphere
opset -d off -r off -h off -f off -y off -t off -l off -s off -u off -c off -e on -b off sphere
opexprlanguage -s hscript sphere
opuserdata -n '___Version___' -v '15.0.416' sphere

# Node subdivide_sphere (Sop/subdivide)
opadd -e -n subdivide subdivide_sphere
oplocate -x 1.5076799999999999 -y 1.58918 subdivide_sphere
opspareds "" subdivide_sphere
opparm -V 15.0.416 subdivide_sphere subdivide ( "" ) creases ( "" ) algorithm ( osdcc ) iterations ( 2 ) overridecrease ( off ) creaseweight ( 0 ) outputcrease ( off ) outcreasegroup ( creases ) closeholes ( pull ) surroundpoly ( edges ) bias ( 1 ) updatenmls ( on ) smoothvertex ( on ) consisttopology ( off ) linearcreases ( off ) buildpolysoups ( off ) indepcurves ( off ) interpolateboundary ( corner ) vertexinterpolateboundary ( corner )
chlock subdivide_sphere -*
chautoscope subdivide_sphere -*
opcolor -c 0.80000001192092896 0.80000001192092896 0.80000001192092896 subdivide_sphere
opset -d off -r off -h off -f off -y off -t off -l off -s off -u off -c off -e on -b off subdivide_sphere
opexprlanguage -s hscript subdivide_sphere
opuserdata -n '___Version___' -v '15.0.416' subdivide_sphere

# Node copy_spheres (Sop/copy)
opadd -e -n copy copy_spheres
oplocate -x 3.0385599999999999 -y 0.40604200000000001 copy_spheres
opspareds "" copy_spheres
chblockbegin
chadd -t 0 0 copy_spheres tx
chkey -t 0 -v 0 -m 0 -a 0 -A 0 -T a  -F @P.x copy_spheres/tx
chadd -t 0 0 copy_spheres ty
chkey -t 0 -v 0 -m 0 -a 0 -A 0 -T a  -F @P.y copy_spheres/ty
chadd -t 0 0 copy_spheres tz
chkey -t 0 -v 0 -m 0 -a 0 -A 0 -T a  -F @P.z copy_spheres/tz
chadd -t 0 0 copy_spheres val1
chkey -t 0 -v 0 -m 0 -a 0 -A 0 -T a  -F '$PSCALE' copy_spheres/val1
chblockend
opparm -V 15.0.416 copy_spheres sourceGrp ( "" ) templateGrp ( "" ) stdswitcher ( 2 2 2 ) ncy ( 1 ) nml ( off ) cum ( on ) xOrd ( srt ) rOrd ( xyz ) t ( tx ty tz ) r ( 0 0 0 ) s ( 1 1 1 ) shear ( 0 0 0 ) p ( 0 0 0 ) scale ( 1 ) vlength ( on ) newg ( off ) preservegroups ( off ) copyg ( 'copyGroup`$CY`_`$TPT`' ) stamp ( on ) cacheinput ( off ) pack ( off ) pivot ( centroid ) viewportlod ( full ) attribstamps ( "" ) stampswitch ( 0 0 0 0 0 ) param1 ( size ) val1 ( val1 ) param2 ( "" ) val2 ( 0 ) param3 ( "" ) val3 ( 0 ) param4 ( "" ) val4 ( 0 ) param5 ( "" ) val5 ( 0 ) param6 ( "" ) val6 ( 0 ) param7 ( "" ) val7 ( 0 ) param8 ( "" ) val8 ( 0 ) param9 ( "" ) val9 ( 0 ) param10 ( "" ) val10 ( 0 ) param11 ( "" ) val11 ( 0 ) param12 ( "" ) val12 ( 0 ) param13 ( "" ) val13 ( 0 ) param14 ( "" ) val14 ( 0 ) param15 ( "" ) val15 ( 0 ) param16 ( "" ) val16 ( 0 ) param17 ( "" ) val17 ( 0 ) param18 ( "" ) val18 ( 0 ) param19 ( "" ) val19 ( 0 ) param20 ( "" ) val20 ( 0 ) param21 ( "" ) val21 ( 0 ) param22 ( "" ) val22 ( 0 ) param23 ( "" ) val23 ( 0 ) param24 ( "" ) val24 ( 0 ) param25 ( "" ) val25 ( 0 ) param26 ( "" ) val26 ( 0 ) param27 ( "" ) val27 ( 0 ) param28 ( "" ) val28 ( 0 ) param29 ( "" ) val29 ( 0 ) param30 ( "" ) val30 ( 0 ) param31 ( "" ) val31 ( 0 ) param32 ( "" ) val32 ( 0 ) param33 ( "" ) val33 ( 0 ) param34 ( "" ) val34 ( 0 ) param35 ( "" ) val35 ( 0 ) param36 ( "" ) val36 ( 0 ) param37 ( "" ) val37 ( 0 ) param38 ( "" ) val38 ( 0 ) param39 ( "" ) val39 ( 0 ) param40 ( "" ) val40 ( 0 ) param41 ( "" ) val41 ( 0 ) param42 ( "" ) val42 ( 0 ) param43 ( "" ) val43 ( 0 ) param44 ( "" ) val44 ( 0 ) param45 ( "" ) val45 ( 0 ) param46 ( "" ) val46 ( 0 ) param47 ( "" ) val47 ( 0 ) param48 ( "" ) val48 ( 0 ) param49 ( "" ) val49 ( 0 ) param50 ( "" ) val50 ( 0 ) doattr ( on ) _label_ ( Set Mult Add Sub ) setpt ( '^v,^Alpha, Cd' ) mulpt ( Alpha ) addpt ( v ) subpt ( "" ) setprim ( "" ) mulprim ( "" ) addprim ( "" ) subprim ( "" ) setvtx ( "" ) mulvtx ( "" ) addvtx ( "" ) subvtx ( "" ) copyvariable ( on )
chlock copy_spheres -*
chautoscope copy_spheres -*
opcolor -c 0.80000001192092896 0.80000001192092896 0.80000001192092896 copy_spheres
opset -d off -r off -h off -f off -y off -t off -l off -s off -u off -c off -e on -b off copy_spheres
opexprlanguage -s hscript copy_spheres
opuserdata -n '___Version___' -v '15.0.416' copy_spheres

# Node objectMerge_simulationPoints (Sop/object_merge)
opadd -e -n object_merge objectMerge_simulationPoints
oplocate -x 3.8274499999999998 -y 6.02013 objectMerge_simulationPoints
opspareds "" objectMerge_simulationPoints
opparm objectMerge_simulationPoints  numobj ( 1 )
opparm -V 15.0.416 objectMerge_simulationPoints numobj ( 1 ) _separator ( ) xformtype ( object ) xformpath ( "" ) invertxform ( off ) createptgroups ( off ) ptgroupprefix ( _ptgrp_ ) createprimgroups ( off ) primgroupprefix ( _primgrp_ ) verbosegroups ( off ) suffixfirstgroup ( on ) createptstring ( off ) createprimstring ( off ) pathattrib ( objname ) pack ( off ) pivot ( centroid ) viewportlod ( full ) addpath ( on ) enable1 ( on ) objpath1 ( /obj/DOPNetwork ) group1 ( "" ) expand1 ( off )
chlock objectMerge_simulationPoints -*
chautoscope objectMerge_simulationPoints -*
opcolor -c 0.80000001192092896 0.80000001192092896 0.80000001192092896 objectMerge_simulationPoints
opset -d off -r off -h off -f off -y off -t off -l off -s off -u off -c off -e on -b off objectMerge_simulationPoints
opexprlanguage -s hscript objectMerge_simulationPoints
opuserdata -n '___Version___' -v '15.0.416' objectMerge_simulationPoints

# Node delete_primitives (Sop/delete)
opadd -e -n delete delete_primitives
oplocate -x 3.81779 -y 5.2160399999999996 delete_primitives
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

# Node point_alpha (Sop/point)
opadd -e -n point point_alpha
oplocate -x 3.0385599999999999 -y -0.181036 point_alpha
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
opparm -V 15.0.416 point_alpha group ( "" ) matchbyattribute ( off ) attributetomatch ( id ) stdswitcher ( 0 0 0 0 ) t ( tx ty tz ) doweight ( off ) weight ( weight ) doclr ( off ) diff ( diffr diffg diffb ) doalpha ( on ) alpha ( 0.69999999999999996 ) donml ( off ) n ( nx ny nz ) douvw ( off ) map ( mapu mapv mapw ) domass ( off ) mass ( 1 ) drag ( 1 ) dotension ( off ) tension ( tension ) dospringk ( off ) springk ( springk ) dovel ( off ) v ( vx vy vz ) doup ( off ) up ( upx upy upz ) dopscale ( off ) pscale ( pscale ) doinstance ( off ) instancepath ( "" ) doradius ( off ) radiusf ( 1 ) doscale ( off ) scalef ( 1 ) doradialf ( off ) radialf ( 0 ) donormalf ( off ) normalf ( 0 ) doedgef ( off ) edgef ( 0 ) dodirf ( off ) dirf ( 0 0 0 ) numcustom ( 1 ) apply1 ( on ) name1 ( "" ) val1i ( 0 0 0 0 ) sval1 ( "" )
chlock point_alpha -*
chautoscope point_alpha -*
opcolor -c 0.80000001192092896 0.80000001192092896 0.80000001192092896 point_alpha
opset -d on -r on -h off -f off -y off -t off -l off -s off -u off -c off -e on -b off point_alpha
opexprlanguage -s hscript point_alpha
opuserdata -n '___Version___' -v '15.0.416' point_alpha

# Node switch_colorGroups (Sop/switch)
opadd -e -n switch switch_colorGroups
oplocate -x 3.81779 -y 2.0139999999999998 switch_colorGroups
opspareds "" switch_colorGroups
opparm -V 15.0.416 switch_colorGroups input ( 1 )
chlock switch_colorGroups -*
chautoscope switch_colorGroups -*
opcolor -c 0.80000001192092896 0.80000001192092896 0.80000001192092896 switch_colorGroups
opset -d off -r off -h off -f off -y off -t off -l off -s off -u off -c off -e on -b off switch_colorGroups
opexprlanguage -s hscript switch_colorGroups
opuserdata -n '___Version___' -v '15.0.416' switch_colorGroups
oporder -e sphere subdivide_sphere copy_spheres objectMerge_simulationPoints delete_primitives point_alpha color_inLiquid color_inAir color_onSurface color_outside switch_colorGroups 
opcf ..
opcf forces

# Node dopImport_previousFrame (Sop/dopimport)
opadd -e -n dopimport dopImport_previousFrame
oplocate -x -6.0024100000000002 -y 8.4539399999999993 dopImport_previousFrame
opspareds "" dopImport_previousFrame
chblockbegin
chadd -t 0 0 dopImport_previousFrame integrateovertime
chkey -t 0 -v 0 -m 0 -a 0 -A 0 -T a  -F '1/$FPS' dopImport_previousFrame/integrateovertime
chblockend
opparm -V 15.0.416 dopImport_previousFrame doppath ( /obj/DOPNetwork ) objpattern ( '`stamps("..", "OBJID", arg(dopnodeobjs(".."),0))`' ) singleobject ( off ) importstyle ( fetch ) pivot ( centroid ) viewportlod ( full ) importbyname ( on ) objectnames ( dopobject ) geodatapath ( '`stamps("..", "DATANAME", chs("../datapath"))`' ) inverseop ( off ) doposxform ( on ) doxform ( on ) keepworldspacepos ( on ) centeratpivot ( on ) addname ( off ) adddopobjectname ( off ) adddopobjectid ( off ) addtoexistingvel ( on ) deleteabandoned ( on ) pointvels ( none ) integrateovertime ( integrateovertime ) donotsim ( on )
chlock dopImport_previousFrame -*
chautoscope dopImport_previousFrame -*
opcolor -c 0.80000001192092896 0.80000001192092896 0.80000001192092896 dopImport_previousFrame
opset -d off -r off -h off -f off -y off -t off -l off -s off -u off -c off -e on -b off dopImport_previousFrame
opexprlanguage -s hscript dopImport_previousFrame
opuserdata -n '___Version___' -v '15.0.416' dopImport_previousFrame

# Node OUT (Sop/null)
opadd -e -n null OUT
oplocate -x 20.8292 -y -3.3789099999999999 OUT
opspareds "" OUT
opparm -V 15.0.416 OUT copyinput ( on ) cacheinput ( off )
chlock OUT -*
chautoscope OUT -*
opcolor -c 0.80000001192092896 0.80000001192092896 0.80000001192092896 OUT
opset -d on -r on -h off -f off -y off -t off -l off -s off -u off -c off -e on -b off OUT
opexprlanguage -s hscript OUT
opuserdata -n '___Version___' -v '15.0.416' OUT

# Node attributePromote_Pi (Sop/attribpromote)
opadd -e -n attribpromote attributePromote_Pi
oplocate -x 9.0197500000000002 -y 4.8509200000000003 attributePromote_Pi
opspareds "" attributePromote_Pi
opparm -V 15.0.416 attributePromote_Pi inname ( P ) inclass ( point ) outclass ( primitive ) method ( first ) useoutname ( on ) outname ( Pi ) deletein ( off )
chlock attributePromote_Pi -*
chautoscope attributePromote_Pi -*
opcolor -c 0.80000001192092896 0.80000001192092896 0.80000001192092896 attributePromote_Pi
opset -d off -r off -h off -f off -y off -t off -l off -s off -u off -c off -e on -b off attributePromote_Pi
opexprlanguage -s hscript attributePromote_Pi
opuserdata -n '___Version___' -v '15.0.416' attributePromote_Pi

# Node attributePromote_Pj (Sop/attribpromote)
opadd -e -n attribpromote attributePromote_Pj
oplocate -x 9.0197500000000002 -y 4.1979199999999999 attributePromote_Pj
opspareds "" attributePromote_Pj
opparm -V 15.0.416 attributePromote_Pj inname ( P ) inclass ( point ) outclass ( primitive ) method ( last ) useoutname ( on ) outname ( Pj ) deletein ( off )
chlock attributePromote_Pj -*
chautoscope attributePromote_Pj -*
opcolor -c 0.80000001192092896 0.80000001192092896 0.80000001192092896 attributePromote_Pj
opset -d off -r off -h off -f off -y off -t off -l off -s off -u off -c off -e on -b off attributePromote_Pj
opexprlanguage -s hscript attributePromote_Pj
opuserdata -n '___Version___' -v '15.0.416' attributePromote_Pj

# Node attributeCreate_sign (Sop/attribcreate::2.0)
opadd -e -n attribcreate::2.0 attributeCreate_sign
oplocate -x 9.0217299999999998 -y 5.4555899999999999 attributeCreate_sign
opspareds "" attributeCreate_sign
opparm attributeCreate_sign  numattr ( 1 )
chblockbegin
chadd -t 0 0 attributeCreate_sign value1v1
chkey -t 0 -v 0 -m 0 -a 0 -A 0 -T a  -F 'if($VTX==0, 1.0, -1.0)' attributeCreate_sign/value1v1
chblockend
opparm -V 15.0.416 attributeCreate_sign group ( "" ) grouptype ( guess ) numattr ( 1 ) enable1 ( on ) name1 ( sign ) existing1 ( better ) createvarmap1 ( off ) varname1 ( "" ) class1 ( vertex ) savetoinfo1 ( off ) type1 ( float ) typeinfo1 ( guess ) precision1 ( 32 ) size1 ( 1 ) default1v ( 0 0 0 0 ) writevalues1 ( on ) uselocal1 ( on ) value1v ( value1v1 0 0 0 ) string1 ( "" )
chlock attributeCreate_sign -*
chautoscope attributeCreate_sign -*
opcolor -c 0.80000001192092896 0.80000001192092896 0.80000001192092896 attributeCreate_sign
opset -d off -r off -h off -f off -y off -t off -l off -s off -u off -c off -e on -b off attributeCreate_sign
opexprlanguage -s hscript attributeCreate_sign
opuserdata -n '___Version___' -v '15.0.416' attributeCreate_sign

# Node attributePromote_strongInteractionToVertex (Sop/attribpromote)
opadd -e -n attribpromote attributePromote_strongInteractionToVertex
oplocate -x 14.0015 -y 3.82098 attributePromote_strongInteractionToVertex
opspareds "" attributePromote_strongInteractionToVertex
opparm -V 15.0.416 attributePromote_strongInteractionToVertex inname ( strongInteraction ) inclass ( primitive ) outclass ( vertex ) method ( first ) useoutname ( off ) outname ( "" ) deletein ( off )
chlock attributePromote_strongInteractionToVertex -*
chautoscope attributePromote_strongInteractionToVertex -*
opcolor -c 0.80000001192092896 0.80000001192092896 0.80000001192092896 attributePromote_strongInteractionToVertex
opset -d off -r off -h off -f off -y off -t off -l off -s off -u off -c off -e on -b off attributePromote_strongInteractionToVertex
opexprlanguage -s hscript attributePromote_strongInteractionToVertex
opuserdata -n '___Version___' -v '15.0.416' attributePromote_strongInteractionToVertex

# Node attributePromote_strongInteractionUpToPoint (Sop/attribpromote)
opadd -e -n attribpromote attributePromote_strongInteractionUpToPoint
oplocate -x 13.996600000000001 -y 2.02793 attributePromote_strongInteractionUpToPoint
opspareds "" attributePromote_strongInteractionUpToPoint
opparm -V 15.0.416 attributePromote_strongInteractionUpToPoint inname ( strongInteraction ) inclass ( vertex ) outclass ( point ) method ( sum ) useoutname ( off ) outname ( Pi ) deletein ( off )
chlock attributePromote_strongInteractionUpToPoint -*
chautoscope attributePromote_strongInteractionUpToPoint -*
opcolor -c 0.80000001192092896 0.80000001192092896 0.80000001192092896 attributePromote_strongInteractionUpToPoint
opset -d off -r off -h off -f off -y off -t off -l off -s off -u off -c off -e on -b off attributePromote_strongInteractionUpToPoint
opexprlanguage -s hscript attributePromote_strongInteractionUpToPoint
opuserdata -n '___Version___' -v '15.0.416' attributePromote_strongInteractionUpToPoint

# Node delete_allPrimitives (Sop/delete)
opadd -e -n delete delete_allPrimitives
oplocate -x -6.0024100000000002 -y 5.9873099999999999 delete_allPrimitives
opspareds "" delete_allPrimitives
chblockbegin
chadd -t 0 0 delete_allPrimitives rangeend
chkey -t 0 -v 0 -m 0 -a 0 -A 0 -T a  -F '$N' delete_allPrimitives/rangeend
chblockend
opparm -V 15.0.416 delete_allPrimitives group ( "" ) negate ( dele ) entity ( primitive ) geotype ( all ) stdswitcher ( 0 0 0 0 ) affectnumber ( on ) groupop ( pattern ) filter ( 1 ) pattern ( * ) range ( 0 rangeend ) select ( 1 2 ) affectvolume ( off ) boundtype ( usebbox ) size ( 1 1 1 ) t ( 0 0 0 ) affectnormal ( off ) dir ( 0 0 1 ) angle ( 180 ) camerapath ( "" ) affectdegenerate ( off ) degenerate ( off ) zaf ( off ) doopen ( off ) tol ( 0.001 ) removegrp ( on ) keeppoints ( on )
chlock delete_allPrimitives -*
chautoscope delete_allPrimitives -*
opcolor -c 0.80000001192092896 0.80000001192092896 0.80000001192092896 delete_allPrimitives
opset -d off -r off -h off -f off -y off -t off -l off -s off -u off -c off -e on -b off delete_allPrimitives
opexprlanguage -s hscript delete_allPrimitives
opuserdata -n '___Version___' -v '15.0.416' delete_allPrimitives

# Node attributePromote_Ri (Sop/attribpromote)
opadd -e -n attribpromote attributePromote_Ri
oplocate -x 3.6175700000000002 -y 2.6586400000000001 attributePromote_Ri
opspareds "" attributePromote_Ri
opparm -V 15.0.416 attributePromote_Ri inname ( radius ) inclass ( point ) outclass ( primitive ) method ( first ) useoutname ( on ) outname ( Ri ) deletein ( off )
chlock attributePromote_Ri -*
chautoscope attributePromote_Ri -*
opcolor -c 0.80000001192092896 0.80000001192092896 0.80000001192092896 attributePromote_Ri
opset -d off -r off -h off -f off -y off -t off -l off -s off -u off -c off -e on -b off attributePromote_Ri
opexprlanguage -s hscript attributePromote_Ri
opuserdata -n '___Version___' -v '15.0.416' attributePromote_Ri

# Node attributePromote_Rj (Sop/attribpromote)
opadd -e -n attribpromote attributePromote_Rj
oplocate -x 3.6175700000000002 -y 2.0617000000000001 attributePromote_Rj
opspareds "" attributePromote_Rj
opparm -V 15.0.416 attributePromote_Rj inname ( radius ) inclass ( point ) outclass ( primitive ) method ( last ) useoutname ( on ) outname ( Rj ) deletein ( off )
chlock attributePromote_Rj -*
chautoscope attributePromote_Rj -*
opcolor -c 0.80000001192092896 0.80000001192092896 0.80000001192092896 attributePromote_Rj
opset -d off -r off -h off -f off -y off -t off -l off -s off -u off -c off -e on -b off attributePromote_Rj
opexprlanguage -s hscript attributePromote_Rj
opuserdata -n '___Version___' -v '15.0.416' attributePromote_Rj

# Node delete_nonRelevant (Sop/delete)
opadd -e -n delete delete_nonRelevant
oplocate -x 3.6195499999999998 -y -0.40481299999999998 delete_nonRelevant
opspareds "" delete_nonRelevant
chblockbegin
chadd -t 0 0 delete_nonRelevant rangeend
chkey -t 0 -v 0 -m 0 -a 0 -A 0 -T a  -F '$N' delete_nonRelevant/rangeend
chblockend
opparm -V 15.0.416 delete_nonRelevant group ( 'strongInteraction weakInteraction' ) negate ( keep ) entity ( primitive ) geotype ( all ) stdswitcher ( 0 0 0 0 ) affectnumber ( off ) groupop ( pattern ) filter ( 0 ) pattern ( * ) range ( 0 rangeend ) select ( 1 2 ) affectvolume ( off ) boundtype ( usebbox ) size ( 1 1 1 ) t ( 0 0 0 ) affectnormal ( off ) dir ( 0 0 1 ) angle ( 180 ) camerapath ( "" ) affectdegenerate ( off ) degenerate ( off ) zaf ( off ) doopen ( off ) tol ( 0.001 ) removegrp ( on ) keeppoints ( on )
chlock delete_nonRelevant -*
chautoscope delete_nonRelevant -*
opcolor -c 0.80000001192092896 0.80000001192092896 0.80000001192092896 delete_nonRelevant
opset -d off -r off -h off -f off -y off -t off -l off -s off -u off -c off -e on -b off delete_nonRelevant
opexprlanguage -s hscript delete_nonRelevant
opuserdata -n '___Version___' -v '15.0.416' delete_nonRelevant

# Node attributesCreate_mutiple (Sop/attribcreate::2.0)
opadd -e -n attribcreate::2.0 attributesCreate_mutiple
oplocate -x 3.6175700000000002 -y 5.6514899999999999 attributesCreate_mutiple
opspareds "" attributesCreate_mutiple
opparm attributesCreate_mutiple  numattr ( 7 )
opparm -V 15.0.416 attributesCreate_mutiple group ( "" ) grouptype ( guess ) numattr ( 7 ) enable1 ( on ) name1 ( inside ) existing1 ( better ) createvarmap1 ( on ) varname1 ( "" ) class1 ( point ) savetoinfo1 ( off ) type1 ( float ) typeinfo1 ( guess ) precision1 ( 32 ) size1 ( 1 ) default1v ( 0 0 0 0 ) writevalues1 ( on ) uselocal1 ( on ) value1v ( 0 0 0 0 ) string1 ( "" ) enable2 ( on ) name2 ( selectedMinLength ) existing2 ( better ) createvarmap2 ( on ) varname2 ( "" ) class2 ( primitive ) savetoinfo2 ( off ) type2 ( float ) typeinfo2 ( guess ) precision2 ( 32 ) size2 ( 1 ) default2v ( 0 0 0 0 ) writevalues2 ( on ) uselocal2 ( on ) value2v ( 0 0 0 0 ) string2 ( "" ) enable3 ( on ) name3 ( Rmax ) existing3 ( better ) createvarmap3 ( on ) varname3 ( "" ) class3 ( primitive ) savetoinfo3 ( off ) type3 ( float ) typeinfo3 ( guess ) precision3 ( 32 ) size3 ( 1 ) default3v ( 0 0 0 0 ) writevalues3 ( on ) uselocal3 ( on ) value3v ( 0 0 0 0 ) string3 ( "" ) enable4 ( on ) name4 ( restlength ) existing4 ( better ) createvarmap4 ( on ) varname4 ( "" ) class4 ( primitive ) savetoinfo4 ( off ) type4 ( float ) typeinfo4 ( guess ) precision4 ( 32 ) size4 ( 1 ) default4v ( 0 0 0 0 ) writevalues4 ( on ) uselocal4 ( on ) value4v ( 0 0 0 0 ) string4 ( "" ) enable5 ( on ) name5 ( length ) existing5 ( better ) createvarmap5 ( on ) varname5 ( "" ) class5 ( primitive ) savetoinfo5 ( off ) type5 ( float ) typeinfo5 ( guess ) precision5 ( 32 ) size5 ( 1 ) default5v ( 0 0 0 0 ) writevalues5 ( on ) uselocal5 ( on ) value5v ( 0 0 0 0 ) string5 ( "" ) enable6 ( on ) name6 ( Ri ) existing6 ( better ) createvarmap6 ( on ) varname6 ( "" ) class6 ( primitive ) savetoinfo6 ( off ) type6 ( float ) typeinfo6 ( guess ) precision6 ( 32 ) size6 ( 1 ) default6v ( 0 0 0 0 ) writevalues6 ( on ) uselocal6 ( on ) value6v ( 0 0 0 0 ) string6 ( "" ) enable7 ( on ) name7 ( Rj ) existing7 ( better ) createvarmap7 ( on ) varname7 ( "" ) class7 ( primitive ) savetoinfo7 ( off ) type7 ( float ) typeinfo7 ( guess ) precision7 ( 32 ) size7 ( 1 ) default7v ( 0 0 0 0 ) writevalues7 ( on ) uselocal7 ( on ) value7v ( 0 0 0 0 ) string7 ( "" )
chlock attributesCreate_mutiple -*
chautoscope attributesCreate_mutiple -*
opcolor -c 0.80000001192092896 0.80000001192092896 0.80000001192092896 attributesCreate_mutiple
opset -d off -r off -h off -f off -y off -t off -l off -s off -u off -c off -e on -b off attributesCreate_mutiple
opexprlanguage -s hscript attributesCreate_mutiple
opuserdata -n '___Version___' -v '15.0.416' attributesCreate_mutiple

# Node group_weakInteraction (Sop/group)
opadd -e -n group group_weakInteraction
oplocate -x 3.6175700000000002 -y 4.4655199999999997 group_weakInteraction
opspareds "" group_weakInteraction
chblockbegin
chadd -t 0 0 group_weakInteraction rangeend
chkey -t 0 -v 0 -m 0 -a 0 -A 0 -T a  -F '$N' group_weakInteraction/rangeend
chblockend
opparm -V 15.0.416 group_weakInteraction group ( "" ) stdswitcher ( 0 0 0 ) docreategrp ( on ) crname ( weakInteraction ) entity ( primitive ) geotype ( all ) mergeop ( replace ) switcher2 ( 1 1 1 1 ) groupnumber ( on ) ordered ( off ) groupop ( grppattern ) filter ( 1 ) pattern ( "" ) range ( 0 rangeend ) select ( 1 2 ) groupbounding ( off ) boundtype ( usebbox ) size ( 1 1 1 ) t ( 0 0 0 ) iso ( 0 ) invertvolume ( off ) includenotwhollycontained ( off ) groupnormal ( off ) dir ( 0 0 1 ) angle ( 180 ) camerapath ( "" ) nonplanar ( off ) nonplanartol ( 0.001 ) groupedges ( off ) dominedgeangle ( off ) minedgeangle ( 20 ) domaxedgeangle ( off ) maxedgeangle ( 20 ) edgeanglebetweenedges ( off ) dominedgelen ( off ) minedgelen ( 0 ) domaxedgelen ( off ) maxedgelen ( 0 ) dodepth ( off ) edgestep ( 0 ) edgeptgrp ( 0 ) unshared ( off ) boundarygroups ( off ) combineentity ( guess ) grpequal ( "" ) not1 ( off ) grp1 ( "" ) op1 ( none ) not2 ( off ) grp2 ( "" ) op2 ( none ) not3 ( off ) grp3 ( "" ) op3 ( none ) not4 ( off ) grp4 ( "" ) switcher3 ( 2 2 2 ) oldname ( "" ) newname ( "" ) cnvfromtype ( primgroup ) cnvtotype ( ptgroup ) convertg ( "" ) cnvtname ( "" ) preserve ( off ) primswithallpts ( off ) destroyname ( "" ) type ( 1 )
chlock group_weakInteraction -*
chautoscope group_weakInteraction -*
opcolor -c 0.80000001192092896 0.80000001192092896 0.80000001192092896 group_weakInteraction
opset -d off -r off -h on -f off -y off -t off -l off -s off -u off -c off -e on -b off group_weakInteraction
opexprlanguage -s hscript group_weakInteraction
opuserdata -n '___Version___' -v '15.0.416' group_weakInteraction

# Node tetrahedralize_connectNeighbours (Sop/tetrahedralize)
opadd -e -n tetrahedralize tetrahedralize_connectNeighbours
oplocate -x 3.6175700000000002 -y 5.06792 tetrahedralize_connectNeighbours
opspareds "" tetrahedralize_connectNeighbours
opparm -V 15.0.416 tetrahedralize_connectNeighbours group ( "" ) output ( polyline ) batch ( entire ) pieceattrib ( name ) prim ( off ) remove ( on ) onefacepertet ( off ) propnormal ( on ) internattrib ( on ) refine ( off ) noboundmod ( off ) stdswitcher ( 0 0 0 ) usequality ( on ) radedgetol ( 1.5 ) dihedralangtol ( 10 ) usemetricattrib ( off ) metricattrib ( edge_metric ) volconst ( novolconst ) uniformmaxvol ( 0.10000000000000001 ) maxvolattrib ( max_vol ) usemaxiter ( off ) maxiter ( 100000 ) usemaxsteiner ( off ) maxsteiner ( 1000 ) optiterations ( 2 ) optedgeface ( on ) optvtxsmooth ( on ) optvtxmod ( on ) failures ( removefailed ) randomseed ( 3 ) precisiontol ( 1.0000000000000001e-09 ) useinvalidcolor ( on ) invalidprimclr ( 0.20000000000000001 0 0 ) useinvalidgrp ( on ) invalidprimgrp ( invalid_prim_grp ) useisectcolor ( on ) isectpolyclr ( 0.90000000000000002 0 0 ) useisectgrp ( on ) isectpolygrp ( intersecting_polygon_grp )
chlock tetrahedralize_connectNeighbours -*
chautoscope tetrahedralize_connectNeighbours -*
opcolor -c 0.80000001192092896 0.80000001192092896 0.80000001192092896 tetrahedralize_connectNeighbours
opset -d off -r off -h off -f off -y off -t off -l off -s off -u off -c off -e on -b off tetrahedralize_connectNeighbours
opexprlanguage -s hscript tetrahedralize_connectNeighbours
opuserdata -n '___Version___' -v '15.0.416' tetrahedralize_connectNeighbours

# Node group_strongInteraction (Sop/group)
opadd -e -n group group_strongInteraction
oplocate -x 3.6175700000000002 -y 3.2628599999999999 group_strongInteraction
opspareds "" group_strongInteraction
chblockbegin
chadd -t 0 0 group_strongInteraction rangeend
chkey -t 0 -v 0 -m 0 -a 0 -A 0 -T a  -F '$N' group_strongInteraction/rangeend
chblockend
opparm -V 15.0.416 group_strongInteraction group ( "" ) stdswitcher ( 0 0 0 ) docreategrp ( on ) crname ( strongInteraction ) entity ( primitive ) geotype ( all ) mergeop ( replace ) switcher2 ( 0 0 0 0 ) groupnumber ( off ) ordered ( off ) groupop ( grppattern ) filter ( 1 ) pattern ( "" ) range ( 0 rangeend ) select ( 1 2 ) groupbounding ( off ) boundtype ( usebbox ) size ( 1 1 1 ) t ( 0 0 0 ) iso ( 0 ) invertvolume ( off ) includenotwhollycontained ( off ) groupnormal ( off ) dir ( 0 0 1 ) angle ( 180 ) camerapath ( "" ) nonplanar ( off ) nonplanartol ( 0.001 ) groupedges ( off ) dominedgeangle ( off ) minedgeangle ( 20 ) domaxedgeangle ( off ) maxedgeangle ( 20 ) edgeanglebetweenedges ( off ) dominedgelen ( off ) minedgelen ( 0 ) domaxedgelen ( off ) maxedgelen ( 0 ) dodepth ( off ) edgestep ( 0 ) edgeptgrp ( 0 ) unshared ( off ) boundarygroups ( off ) combineentity ( guess ) grpequal ( strongInteraction ) not1 ( on ) grp1 ( weakInteraction ) op1 ( none ) not2 ( off ) grp2 ( "" ) op2 ( none ) not3 ( off ) grp3 ( "" ) op3 ( none ) not4 ( off ) grp4 ( "" ) switcher3 ( 0 0 0 ) oldname ( "" ) newname ( "" ) cnvfromtype ( primgroup ) cnvtotype ( ptgroup ) convertg ( "" ) cnvtname ( "" ) preserve ( off ) primswithallpts ( off ) destroyname ( "" ) type ( 1 )
chlock group_strongInteraction -*
chautoscope group_strongInteraction -*
opcolor -c 0.80000001192092896 0.80000001192092896 0.80000001192092896 group_strongInteraction
opset -d off -r off -h on -f off -y off -t off -l off -s off -u off -c off -e on -b off group_strongInteraction
opexprlanguage -s hscript group_strongInteraction
opuserdata -n '___Version___' -v '15.0.416' group_strongInteraction

# Node attributePromote_weakInteractionToVertex (Sop/attribpromote)
opadd -e -n attribpromote attributePromote_weakInteractionToVertex
oplocate -x 13.996600000000001 -y 3.2223299999999999 attributePromote_weakInteractionToVertex
opspareds "" attributePromote_weakInteractionToVertex
opparm -V 15.0.416 attributePromote_weakInteractionToVertex inname ( weakInteraction ) inclass ( primitive ) outclass ( vertex ) method ( first ) useoutname ( off ) outname ( "" ) deletein ( off )
chlock attributePromote_weakInteractionToVertex -*
chautoscope attributePromote_weakInteractionToVertex -*
opcolor -c 0.80000001192092896 0.80000001192092896 0.80000001192092896 attributePromote_weakInteractionToVertex
opset -d off -r off -h off -f off -y off -t off -l off -s off -u off -c off -e on -b off attributePromote_weakInteractionToVertex
opexprlanguage -s hscript attributePromote_weakInteractionToVertex
opuserdata -n '___Version___' -v '15.0.416' attributePromote_weakInteractionToVertex

# Node attributePromote_weakInteractionUpToPoint (Sop/attribpromote)
opadd -e -n attribpromote attributePromote_weakInteractionUpToPoint
oplocate -x 13.996600000000001 -y 1.5542199999999999 attributePromote_weakInteractionUpToPoint
opspareds "" attributePromote_weakInteractionUpToPoint
opparm -V 15.0.416 attributePromote_weakInteractionUpToPoint inname ( weakInteraction ) inclass ( vertex ) outclass ( point ) method ( sum ) useoutname ( off ) outname ( "" ) deletein ( off )
chlock attributePromote_weakInteractionUpToPoint -*
chautoscope attributePromote_weakInteractionUpToPoint -*
opcolor -c 0.80000001192092896 0.80000001192092896 0.80000001192092896 attributePromote_weakInteractionUpToPoint
opset -d off -r off -h off -f off -y off -t off -l off -s off -u off -c off -e on -b off attributePromote_weakInteractionUpToPoint
opexprlanguage -s hscript attributePromote_weakInteractionUpToPoint
opuserdata -n '___Version___' -v '15.0.416' attributePromote_weakInteractionUpToPoint

# Node attributeDelete_vertexAttributes (Sop/attribdelete)
opadd -e -n attribdelete attributeDelete_vertexAttributes
oplocate -x -6.0024100000000002 -y 5.3872099999999996 attributeDelete_vertexAttributes
opspareds "" attributeDelete_vertexAttributes
opparm attributeDelete_vertexAttributes ptdel ( 'ri rj' ) vtxdel ( * ) primdel ( * ) dtldel ( "" ) updatevar ( on )
chlock attributeDelete_vertexAttributes -*
chautoscope attributeDelete_vertexAttributes -*
opcolor -c 0.80000001192092896 0.80000001192092896 0.80000001192092896 attributeDelete_vertexAttributes
opset -d off -r off -h off -f off -y off -t off -l off -s off -u off -c off -e on -b off attributeDelete_vertexAttributes
opexprlanguage -s hscript attributeDelete_vertexAttributes
opuserdata -n '___Version___' -v '' attributeDelete_vertexAttributes

# Node attributePromote_minLinkLength (Sop/attribpromote)
opadd -e -n attribpromote attributePromote_minLinkLength
oplocate -x 9.0197500000000002 -y 2.3911799999999999 attributePromote_minLinkLength
opspareds "" attributePromote_minLinkLength
opparm -V 15.0.416 attributePromote_minLinkLength inname ( lengthWeak ) inclass ( primitive ) outclass ( point ) method ( min ) useoutname ( on ) outname ( minLinkLength ) deletein ( off )
chlock attributePromote_minLinkLength -*
chautoscope attributePromote_minLinkLength -*
opcolor -c 0.80000001192092896 0.80000001192092896 0.80000001192092896 attributePromote_minLinkLength
opset -d off -r off -h off -f off -y off -t off -l off -s off -u off -c off -e on -b off attributePromote_minLinkLength
opexprlanguage -s hscript attributePromote_minLinkLength
opuserdata -n '___Version___' -v '15.0.416' attributePromote_minLinkLength

# Node attributePromote_selectedMinLength (Sop/attribpromote)
opadd -e -n attribpromote attributePromote_selectedMinLength
oplocate -x 9.0197500000000002 -y 1.7670699999999999 attributePromote_selectedMinLength
opspareds "" attributePromote_selectedMinLength
opparm -V 15.0.416 attributePromote_selectedMinLength inname ( minLinkLength ) inclass ( point ) outclass ( primitive ) method ( max ) useoutname ( on ) outname ( selectedMinLength ) deletein ( off )
chlock attributePromote_selectedMinLength -*
chautoscope attributePromote_selectedMinLength -*
opcolor -c 0.80000001192092896 0.80000001192092896 0.80000001192092896 attributePromote_selectedMinLength
opset -d off -r off -h off -f off -y off -t off -l off -s off -u off -c off -e on -b off attributePromote_selectedMinLength
opexprlanguage -s hscript attributePromote_selectedMinLength
opuserdata -n '___Version___' -v '15.0.416' attributePromote_selectedMinLength

# Node delete_nonInteraction (Sop/delete)
opadd -e -n delete delete_nonInteraction
oplocate -x 9.0197500000000002 -y 0.57181300000000002 delete_nonInteraction
opspareds "" delete_nonInteraction
chblockbegin
chadd -t 0 0 delete_nonInteraction rangeend
chkey -t 0 -v 0 -m 0 -a 0 -A 0 -T a  -F '$N' delete_nonInteraction/rangeend
chblockend
opparm -V 15.0.416 delete_nonInteraction group ( 'weakInteraction strongInteraction' ) negate ( keep ) entity ( primitive ) geotype ( all ) stdswitcher ( 0 0 0 0 ) affectnumber ( off ) groupop ( filter ) filter ( 1 ) pattern ( !* ) range ( 0 rangeend ) select ( 1 2 ) affectvolume ( off ) boundtype ( usebbox ) size ( 1 1 1 ) t ( 0 0 0 ) affectnormal ( off ) dir ( 0 0 1 ) angle ( 180 ) camerapath ( "" ) affectdegenerate ( off ) degenerate ( off ) zaf ( off ) doopen ( off ) tol ( 0.001 ) removegrp ( on ) keeppoints ( on )
chlock delete_nonInteraction -*
chautoscope delete_nonInteraction -*
opcolor -c 0.80000001192092896 0.80000001192092896 0.80000001192092896 delete_nonInteraction
opset -d off -r off -h off -f off -y off -t off -l off -s off -u off -c off -e on -b off delete_nonInteraction
opexprlanguage -s hscript delete_nonInteraction
opuserdata -n '___Version___' -v '15.0.416' delete_nonInteraction

# Node group_weakInteractionUpdate2 (Sop/group)
opadd -e -n group group_weakInteractionUpdate2
oplocate -x 9.0197500000000002 -y 1.17547 group_weakInteractionUpdate2
opspareds "" group_weakInteractionUpdate2
chblockbegin
chadd -t 0 0 group_weakInteractionUpdate2 filter
chkey -t 0 -v 1 -m 0 -a 0 -A 0 -T a  -F '$LENGTH > $SELECTEDMINLENGTH + 0.1' group_weakInteractionUpdate2/filter
chadd -t 0 0 group_weakInteractionUpdate2 rangeend
chkey -t 0 -v 0 -m 0 -a 0 -A 0 -T a  -F '$N' group_weakInteractionUpdate2/rangeend
chblockend
opparm -V 15.0.416 group_weakInteractionUpdate2 group ( "" ) stdswitcher ( 0 0 0 ) docreategrp ( on ) crname ( weakInteraction ) entity ( primitive ) geotype ( all ) mergeop ( subtract ) switcher2 ( 0 0 0 0 ) groupnumber ( on ) ordered ( off ) groupop ( grpexpression ) filter ( filter ) pattern ( "" ) range ( 0 rangeend ) select ( 1 2 ) groupbounding ( off ) boundtype ( usebbox ) size ( 1 1 1 ) t ( 0 0 0 ) iso ( 0 ) invertvolume ( off ) includenotwhollycontained ( off ) groupnormal ( off ) dir ( 0 0 1 ) angle ( 180 ) camerapath ( "" ) nonplanar ( off ) nonplanartol ( 0.001 ) groupedges ( off ) dominedgeangle ( off ) minedgeangle ( 20 ) domaxedgeangle ( off ) maxedgeangle ( 20 ) edgeanglebetweenedges ( off ) dominedgelen ( off ) minedgelen ( 0 ) domaxedgelen ( off ) maxedgelen ( 0 ) dodepth ( off ) edgestep ( 0 ) edgeptgrp ( 0 ) unshared ( off ) boundarygroups ( off ) combineentity ( guess ) grpequal ( "" ) not1 ( off ) grp1 ( "" ) op1 ( none ) not2 ( off ) grp2 ( "" ) op2 ( none ) not3 ( off ) grp3 ( "" ) op3 ( none ) not4 ( off ) grp4 ( "" ) switcher3 ( 0 0 0 ) oldname ( "" ) newname ( "" ) cnvfromtype ( primgroup ) cnvtotype ( ptgroup ) convertg ( "" ) cnvtname ( "" ) preserve ( off ) primswithallpts ( off ) destroyname ( "" ) type ( 1 )
chlock group_weakInteractionUpdate2 -*
chautoscope group_weakInteractionUpdate2 -*
opcolor -c 0.80000001192092896 0.80000001192092896 0.80000001192092896 group_weakInteractionUpdate2
opset -d off -r off -h on -f off -y off -t off -l off -s off -u off -c off -e on -b off group_weakInteractionUpdate2
opexprlanguage -s hscript group_weakInteractionUpdate2
opuserdata -n '___Version___' -v '15.0.416' group_weakInteractionUpdate2

# Node group_strongInteractionUpdate (Sop/group)
opadd -e -n group group_strongInteractionUpdate
oplocate -x 3.6175700000000002 -y 0.86189700000000002 group_strongInteractionUpdate
opspareds "" group_strongInteractionUpdate
chblockbegin
chadd -t 0 0 group_strongInteractionUpdate filter
chkey -t 0 -v 1 -m 0 -a 0 -A 0 -T a  -F '$LENGTH <= $RESTLENGTH' group_strongInteractionUpdate/filter
chadd -t 0 0 group_strongInteractionUpdate rangeend
chkey -t 0 -v 0 -m 0 -a 0 -A 0 -T a  -F '$N' group_strongInteractionUpdate/rangeend
chblockend
opparm -V 15.0.416 group_strongInteractionUpdate group ( "" ) stdswitcher ( 0 0 0 ) docreategrp ( on ) crname ( strongInteraction ) entity ( primitive ) geotype ( all ) mergeop ( intersect ) switcher2 ( 0 0 0 0 ) groupnumber ( on ) ordered ( off ) groupop ( grpexpression ) filter ( filter ) pattern ( "" ) range ( 0 rangeend ) select ( 1 2 ) groupbounding ( off ) boundtype ( usebbox ) size ( 1 1 1 ) t ( 0 0 0 ) iso ( 0 ) invertvolume ( off ) includenotwhollycontained ( off ) groupnormal ( off ) dir ( 0 0 1 ) angle ( 180 ) camerapath ( "" ) nonplanar ( off ) nonplanartol ( 0.001 ) groupedges ( off ) dominedgeangle ( off ) minedgeangle ( 20 ) domaxedgeangle ( off ) maxedgeangle ( 20 ) edgeanglebetweenedges ( off ) dominedgelen ( off ) minedgelen ( 0 ) domaxedgelen ( off ) maxedgelen ( 0 ) dodepth ( off ) edgestep ( 0 ) edgeptgrp ( 0 ) unshared ( off ) boundarygroups ( off ) combineentity ( guess ) grpequal ( "" ) not1 ( off ) grp1 ( "" ) op1 ( none ) not2 ( off ) grp2 ( "" ) op2 ( none ) not3 ( off ) grp3 ( "" ) op3 ( none ) not4 ( off ) grp4 ( "" ) switcher3 ( 0 0 0 ) oldname ( "" ) newname ( "" ) cnvfromtype ( primgroup ) cnvtotype ( ptgroup ) convertg ( "" ) cnvtname ( "" ) preserve ( off ) primswithallpts ( off ) destroyname ( "" ) type ( 1 )
chlock group_strongInteractionUpdate -*
chautoscope group_strongInteractionUpdate -*
opcolor -c 0.80000001192092896 0.80000001192092896 0.80000001192092896 group_strongInteractionUpdate
opset -d off -r off -h on -f off -y off -t off -l off -s off -u off -c off -e on -b off group_strongInteractionUpdate
opexprlanguage -s hscript group_strongInteractionUpdate
opuserdata -n '___Version___' -v '15.0.416' group_strongInteractionUpdate

# Node group_weakInteractionUpdate (Sop/group)
opadd -e -n group group_weakInteractionUpdate
oplocate -x 3.6195499999999998 -y 0.193527 group_weakInteractionUpdate
opspareds "" group_weakInteractionUpdate
chblockbegin
chadd -t 0 0 group_weakInteractionUpdate filter
chkey -t 0 -v 1 -m 0 -a 0 -A 0 -T a  -F '$LENGTH > $RESTLENGTH' group_weakInteractionUpdate/filter
chadd -t 0 0 group_weakInteractionUpdate rangeend
chkey -t 0 -v 0 -m 0 -a 0 -A 0 -T a  -F '$N' group_weakInteractionUpdate/rangeend
chblockend
opparm -V 15.0.416 group_weakInteractionUpdate group ( "" ) stdswitcher ( 0 0 0 ) docreategrp ( on ) crname ( weakInteraction ) entity ( primitive ) geotype ( all ) mergeop ( intersect ) switcher2 ( 0 0 0 0 ) groupnumber ( on ) ordered ( off ) groupop ( grpexpression ) filter ( filter ) pattern ( "" ) range ( 0 rangeend ) select ( 1 2 ) groupbounding ( off ) boundtype ( usebbox ) size ( 1 1 1 ) t ( 0 0 0 ) iso ( 0 ) invertvolume ( off ) includenotwhollycontained ( off ) groupnormal ( off ) dir ( 0 0 1 ) angle ( 180 ) camerapath ( "" ) nonplanar ( off ) nonplanartol ( 0.001 ) groupedges ( off ) dominedgeangle ( off ) minedgeangle ( 20 ) domaxedgeangle ( off ) maxedgeangle ( 20 ) edgeanglebetweenedges ( off ) dominedgelen ( off ) minedgelen ( 0 ) domaxedgelen ( off ) maxedgelen ( 0 ) dodepth ( off ) edgestep ( 0 ) edgeptgrp ( 0 ) unshared ( off ) boundarygroups ( off ) combineentity ( guess ) grpequal ( "" ) not1 ( off ) grp1 ( "" ) op1 ( none ) not2 ( off ) grp2 ( "" ) op2 ( none ) not3 ( off ) grp3 ( "" ) op3 ( none ) not4 ( off ) grp4 ( "" ) switcher3 ( 0 0 0 ) oldname ( "" ) newname ( "" ) cnvfromtype ( primgroup ) cnvtotype ( ptgroup ) convertg ( "" ) cnvtname ( "" ) preserve ( off ) primswithallpts ( off ) destroyname ( "" ) type ( 1 )
chlock group_weakInteractionUpdate -*
chautoscope group_weakInteractionUpdate -*
opcolor -c 0.80000001192092896 0.80000001192092896 0.80000001192092896 group_weakInteractionUpdate
opset -d off -r off -h on -f off -y off -t off -l off -s off -u off -c off -e on -b off group_weakInteractionUpdate
opexprlanguage -s hscript group_weakInteractionUpdate
opuserdata -n '___Version___' -v '15.0.416' group_weakInteractionUpdate

# Node objectMerge_liquidSurface (Sop/object_merge)
opadd -e -n object_merge objectMerge_liquidSurface
oplocate -x -1.17571 -y 9.8070500000000003 objectMerge_liquidSurface
opspareds "" objectMerge_liquidSurface
opparm objectMerge_liquidSurface  numobj ( 1 )
opparm -V 15.0.416 objectMerge_liquidSurface numobj ( 1 ) _separator ( ) xformtype ( object ) xformpath ( "" ) invertxform ( off ) createptgroups ( off ) ptgroupprefix ( _ptgrp_ ) createprimgroups ( off ) primgroupprefix ( _primgrp_ ) verbosegroups ( off ) suffixfirstgroup ( on ) createptstring ( off ) createprimstring ( off ) pathattrib ( objname ) pack ( off ) pivot ( centroid ) viewportlod ( full ) addpath ( on ) enable1 ( on ) objpath1 ( /obj/inputs/OUT_liquidSurface ) group1 ( "" ) expand1 ( off )
chlock objectMerge_liquidSurface -*
chautoscope objectMerge_liquidSurface -*
opcolor -c 0.80000001192092896 0.80000001192092896 0.80000001192092896 objectMerge_liquidSurface
opset -d off -r off -h off -f off -y off -t off -l off -s off -u off -c off -e on -b off objectMerge_liquidSurface
opexprlanguage -s hscript objectMerge_liquidSurface
opuserdata -n '___Version___' -v '15.0.416' objectMerge_liquidSurface

# Node ray_inLiquid (Sop/ray)
opadd -e -n ray ray_inLiquid
oplocate -x -2.4801700000000002 -y 6.8709499999999997 ray_inLiquid
opspareds "" ray_inLiquid
opparm -V 15.0.416 ray_inLiquid group ( "" ) entity ( primitive ) collision ( "" ) method ( project ) dir ( 0 1 0 ) dotrans ( off ) lookfar ( off ) putnml ( off ) putdist ( on ) reverserays ( off ) rtolerance ( 0.01 ) scale ( 1 ) lift ( 0 ) bias ( 0 ) maxraydistcheck ( off ) maxraydist ( 0 ) sample ( 1 ) jitter ( 0 ) combinetype ( average ) seed ( 1 ) newgrp ( on ) hitgrp ( inLiquid ) useprimnumattrib ( off ) primnumattrib ( hitprim ) useprimuvwattrib ( off ) primuvwattrib ( hitprimuv ) getptattribs ( on ) ptattribnames ( N ) vertexattribnames ( "" ) primitiveattribnames ( "" ) detailattribnames ( "" )
chlock ray_inLiquid -*
chautoscope ray_inLiquid -*
opcolor -c 0.80000001192092896 0.80000001192092896 0.80000001192092896 ray_inLiquid
opset -d off -r off -h off -f off -y off -t off -l off -s off -u off -c off -e on -b off ray_inLiquid
opexprlanguage -s hscript ray_inLiquid
opuserdata -n '___Version___' -v '15.0.416' ray_inLiquid

# Node ray_inAir (Sop/ray)
opadd -e -n ray ray_inAir
oplocate -x -1.57443 -y 5.6686899999999998 ray_inAir
opspareds "" ray_inAir
opparm -V 15.0.416 ray_inAir group ( "" ) entity ( primitive ) collision ( "" ) method ( project ) dir ( 0 -1 0 ) dotrans ( off ) lookfar ( off ) putnml ( off ) putdist ( on ) reverserays ( off ) rtolerance ( 0.01 ) scale ( 1 ) lift ( 0 ) bias ( 0 ) maxraydistcheck ( off ) maxraydist ( 0 ) sample ( 1 ) jitter ( 0 ) combinetype ( average ) seed ( 1 ) newgrp ( on ) hitgrp ( inAir ) useprimnumattrib ( off ) primnumattrib ( hitprim ) useprimuvwattrib ( off ) primuvwattrib ( hitprimuv ) getptattribs ( on ) ptattribnames ( N ) vertexattribnames ( "" ) primitiveattribnames ( "" ) detailattribnames ( "" )
chlock ray_inAir -*
chautoscope ray_inAir -*
opcolor -c 0.80000001192092896 0.80000001192092896 0.80000001192092896 ray_inAir
opset -d off -r off -h off -f off -y off -t off -l off -s off -u off -c off -e on -b off ray_inAir
opexprlanguage -s hscript ray_inAir
opuserdata -n '___Version___' -v '15.0.416' ray_inAir

# Node attributeDelete_vertexAttributes2 (Sop/attribdelete)
opadd -e -n attribdelete attributeDelete_vertexAttributes2
oplocate -x 14.024699999999999 -y -2.7789100000000002 attributeDelete_vertexAttributes2
opspareds "" attributeDelete_vertexAttributes2
opparm attributeDelete_vertexAttributes2 ptdel ( "" ) vtxdel ( * ) primdel ( * ) dtldel ( "" ) updatevar ( on )
chlock attributeDelete_vertexAttributes2 -*
chautoscope attributeDelete_vertexAttributes2 -*
opcolor -c 0.80000001192092896 0.80000001192092896 0.80000001192092896 attributeDelete_vertexAttributes2
opset -d off -r off -h off -f off -y off -t off -l off -s off -u off -c off -e on -b off attributeDelete_vertexAttributes2
opexprlanguage -s hscript attributeDelete_vertexAttributes2
opuserdata -n '___Version___' -v '' attributeDelete_vertexAttributes2

# Node ray_liquidToBubbles (Sop/ray)
opadd -e -n ray ray_liquidToBubbles
oplocate -x 0.019271900000000002 -y 2.2647200000000001 ray_liquidToBubbles
opspareds "" ray_liquidToBubbles
chblockbegin
chadd -t 0 0 ray_liquidToBubbles dirx
chkey -t 0 -v 0 -m 0 -a 0 -A 0 -T a  -F '$NX' ray_liquidToBubbles/dirx
chadd -t 0 0 ray_liquidToBubbles diry
chkey -t 0 -v -1 -m 0 -a 0 -A 0 -T a  -F '$NY' ray_liquidToBubbles/diry
chadd -t 0 0 ray_liquidToBubbles dirz
chkey -t 0 -v 0 -m 0 -a 0 -A 0 -T a  -F '$NZ' ray_liquidToBubbles/dirz
chblockend
opparm -V 15.0.416 ray_liquidToBubbles group ( "" ) entity ( primitive ) collision ( "" ) method ( project ) dir ( dirx diry dirz ) dotrans ( on ) lookfar ( off ) putnml ( off ) putdist ( on ) reverserays ( off ) rtolerance ( 0.01 ) scale ( 1 ) lift ( 0 ) bias ( 0 ) maxraydistcheck ( off ) maxraydist ( 0 ) sample ( 1 ) jitter ( 0 ) combinetype ( average ) seed ( 1 ) newgrp ( off ) hitgrp ( rayhitgroup ) useprimnumattrib ( off ) primnumattrib ( hitprim ) useprimuvwattrib ( off ) primuvwattrib ( hitprimuv ) getptattribs ( off ) ptattribnames ( * ) vertexattribnames ( "" ) primitiveattribnames ( "" ) detailattribnames ( "" )
chlock ray_liquidToBubbles -*
chautoscope ray_liquidToBubbles -*
opcolor -c 0.80000001192092896 0.80000001192092896 0.80000001192092896 ray_liquidToBubbles
opset -d off -r off -h off -f off -y off -t off -l off -s off -u off -c off -e on -b off ray_liquidToBubbles
opexprlanguage -s hscript ray_liquidToBubbles
opuserdata -n '___Version___' -v '15.0.416' ray_liquidToBubbles

# Node transform1 (Sop/xform)
opadd -e -n xform transform1
oplocate -x -0.49101 -y 3.06935 transform1
opspareds "" transform1
opparm -V 15.0.416 transform1 group ( "" ) grouptype ( guess ) xOrd ( srt ) rOrd ( xyz ) t ( 0 -10 0 ) r ( 0 0 0 ) s ( 1 1 1 ) shear ( 0 0 0 ) p ( 0 0 0 ) scale ( 1 ) movecentroid ( 0 ) attribs ( * ) updatenmls ( off ) updateaffectednmls ( on ) vlength ( on ) invertxform ( off )
chlock transform1 -*
chautoscope transform1 -*
opcolor -c 0.80000001192092896 0.80000001192092896 0.80000001192092896 transform1
opset -d off -r off -h off -f off -y off -t off -l off -s off -u off -c off -e on -b off transform1
opexprlanguage -s hscript transform1
opuserdata -n '___Version___' -v '15.0.416' transform1

# Node group_onSurface (Sop/group)
opadd -e -n group group_onSurface
oplocate -x -1.57443 -y 3.8646400000000001 group_onSurface
opspareds "" group_onSurface
chblockbegin
chadd -t 0 0 group_onSurface filter
chkey -t 0 -v 1 -m 0 -a 0 -A 0 -T a  -F 'abs($AIRDISTANCE)<$RADIUS' group_onSurface/filter
chadd -t 0 0 group_onSurface rangeend
chkey -t 0 -v 0 -m 0 -a 0 -A 0 -T a  -F '$N' group_onSurface/rangeend
chblockend
opparm -V 15.0.416 group_onSurface group ( "" ) stdswitcher ( 0 0 0 ) docreategrp ( on ) crname ( onSurface ) entity ( point ) geotype ( all ) mergeop ( replace ) switcher2 ( 0 0 0 0 ) groupnumber ( on ) ordered ( off ) groupop ( grpexpression ) filter ( filter ) pattern ( "" ) range ( 0 rangeend ) select ( 1 2 ) groupbounding ( off ) boundtype ( usebbox ) size ( 1 1 1 ) t ( 0 0 0 ) iso ( 0 ) invertvolume ( off ) includenotwhollycontained ( off ) groupnormal ( off ) dir ( 0 0 1 ) angle ( 180 ) camerapath ( "" ) nonplanar ( off ) nonplanartol ( 0.001 ) groupedges ( off ) dominedgeangle ( off ) minedgeangle ( 20 ) domaxedgeangle ( off ) maxedgeangle ( 20 ) edgeanglebetweenedges ( off ) dominedgelen ( off ) minedgelen ( 0 ) domaxedgelen ( off ) maxedgelen ( 0 ) dodepth ( off ) edgestep ( 0 ) edgeptgrp ( 0 ) unshared ( off ) boundarygroups ( off ) combineentity ( guess ) grpequal ( "" ) not1 ( off ) grp1 ( "" ) op1 ( none ) not2 ( off ) grp2 ( "" ) op2 ( none ) not3 ( off ) grp3 ( "" ) op3 ( none ) not4 ( off ) grp4 ( "" ) switcher3 ( 0 0 0 ) oldname ( "" ) newname ( "" ) cnvfromtype ( primgroup ) cnvtotype ( ptgroup ) convertg ( "" ) cnvtname ( "" ) preserve ( off ) primswithallpts ( off ) destroyname ( "" ) type ( 1 )
chlock group_onSurface -*
chautoscope group_onSurface -*
opcolor -c 0.80000001192092896 0.80000001192092896 0.80000001192092896 group_onSurface
opset -d off -r off -h on -f off -y off -t off -l off -s off -u off -c off -e on -b off group_onSurface
opexprlanguage -s hscript group_onSurface
opuserdata -n '___Version___' -v '15.0.416' group_onSurface

# Node sphere1 (Sop/sphere)
opadd -e -n sphere sphere1
oplocate -x 0.81907099999999999 -y 4.2039499999999999 sphere1
opspareds "" sphere1
chblockbegin
chadd -t 0 0 sphere1 scale
chkey -t 0 -v 0 -m 0 -a 0 -A 0 -T a  -F '0.5*stamp("../copy1", "size", 1.0)' sphere1/scale
chblockend
opparm -V 15.0.416 sphere1 type ( poly ) surftype ( quads ) rad ( 1 1 1 ) t ( 0 0 0 ) scale ( scale ) orient ( y ) freq ( 2 ) rows ( 13 ) cols ( 24 ) orderu ( 4 ) orderv ( 4 ) imperfect ( on ) upole ( off ) accurate ( on ) triangularpoles ( on )
chlock sphere1 -*
chautoscope sphere1 -*
opcolor -c 0.80000001192092896 0.80000001192092896 0.80000001192092896 sphere1
opset -d off -r off -h off -f off -y off -t off -l off -s off -u off -c off -e on -b off sphere1
opexprlanguage -s hscript sphere1
opuserdata -n '___Version___' -v '15.0.416' sphere1

# Node copy1 (Sop/copy)
opadd -e -n copy copy1
oplocate -x 0.81907200000000002 -y 3.0748000000000002 copy1
opspareds "" copy1
chblockbegin
chadd -t 0 0 copy1 tx
chkey -t 0 -v 0 -m 0 -a 0 -A 0 -T a  -F @P.x copy1/tx
chadd -t 0 0 copy1 ty
chkey -t 0 -v 0 -m 0 -a 0 -A 0 -T a  -F @P.y copy1/ty
chadd -t 0 0 copy1 tz
chkey -t 0 -v 0 -m 0 -a 0 -A 0 -T a  -F @P.z copy1/tz
chadd -t 0 0 copy1 val1
chkey -t 0 -v 0 -m 0 -a 0 -A 0 -T a  -F '$PSCALE' copy1/val1
chblockend
opparm -V 15.0.416 copy1 sourceGrp ( "" ) templateGrp ( "" ) stdswitcher ( 2 2 2 ) ncy ( 1 ) nml ( off ) cum ( on ) xOrd ( srt ) rOrd ( xyz ) t ( tx ty tz ) r ( 0 0 0 ) s ( 1 1 1 ) shear ( 0 0 0 ) p ( 0 0 0 ) scale ( 1 ) vlength ( on ) newg ( off ) preservegroups ( off ) copyg ( 'copyGroup`$CY`_`$TPT`' ) stamp ( on ) cacheinput ( off ) pack ( on ) pivot ( centroid ) viewportlod ( full ) attribstamps ( "" ) stampswitch ( 0 0 0 0 0 ) param1 ( size ) val1 ( val1 ) param2 ( "" ) val2 ( 0 ) param3 ( "" ) val3 ( 0 ) param4 ( "" ) val4 ( 0 ) param5 ( "" ) val5 ( 0 ) param6 ( "" ) val6 ( 0 ) param7 ( "" ) val7 ( 0 ) param8 ( "" ) val8 ( 0 ) param9 ( "" ) val9 ( 0 ) param10 ( "" ) val10 ( 0 ) param11 ( "" ) val11 ( 0 ) param12 ( "" ) val12 ( 0 ) param13 ( "" ) val13 ( 0 ) param14 ( "" ) val14 ( 0 ) param15 ( "" ) val15 ( 0 ) param16 ( "" ) val16 ( 0 ) param17 ( "" ) val17 ( 0 ) param18 ( "" ) val18 ( 0 ) param19 ( "" ) val19 ( 0 ) param20 ( "" ) val20 ( 0 ) param21 ( "" ) val21 ( 0 ) param22 ( "" ) val22 ( 0 ) param23 ( "" ) val23 ( 0 ) param24 ( "" ) val24 ( 0 ) param25 ( "" ) val25 ( 0 ) param26 ( "" ) val26 ( 0 ) param27 ( "" ) val27 ( 0 ) param28 ( "" ) val28 ( 0 ) param29 ( "" ) val29 ( 0 ) param30 ( "" ) val30 ( 0 ) param31 ( "" ) val31 ( 0 ) param32 ( "" ) val32 ( 0 ) param33 ( "" ) val33 ( 0 ) param34 ( "" ) val34 ( 0 ) param35 ( "" ) val35 ( 0 ) param36 ( "" ) val36 ( 0 ) param37 ( "" ) val37 ( 0 ) param38 ( "" ) val38 ( 0 ) param39 ( "" ) val39 ( 0 ) param40 ( "" ) val40 ( 0 ) param41 ( "" ) val41 ( 0 ) param42 ( "" ) val42 ( 0 ) param43 ( "" ) val43 ( 0 ) param44 ( "" ) val44 ( 0 ) param45 ( "" ) val45 ( 0 ) param46 ( "" ) val46 ( 0 ) param47 ( "" ) val47 ( 0 ) param48 ( "" ) val48 ( 0 ) param49 ( "" ) val49 ( 0 ) param50 ( "" ) val50 ( 0 ) doattr ( on ) _label_ ( Set Mult Add Sub ) setpt ( *,^v,^Alpha ) mulpt ( Alpha ) addpt ( v ) subpt ( "" ) setprim ( id ) mulprim ( "" ) addprim ( "" ) subprim ( "" ) setvtx ( "" ) mulvtx ( "" ) addvtx ( "" ) subvtx ( "" ) copyvariable ( on )
chlock copy1 -*
chautoscope copy1 -*
opcolor -c 0.80000001192092896 0.80000001192092896 0.80000001192092896 copy1
opset -d off -r off -h off -f off -y off -t off -l off -s off -u off -c off -e on -b off copy1
opexprlanguage -s hscript copy1
opuserdata -n '___Version___' -v '15.0.416' copy1

# Node ray_onSurface (Sop/ray)
opadd -e -n ray ray_onSurface
oplocate -x -1.57443 -y 1.41981 ray_onSurface
opspareds "" ray_onSurface
chblockbegin
chadd -t 0 0 ray_onSurface dirx
chkey -t 0 -v 0 -m 0 -a 0 -A 0 -T a  -F @N.x ray_onSurface/dirx
chadd -t 0 0 ray_onSurface diry
chkey -t 0 -v 0 -m 0 -a 0 -A 0 -T a  -F @N.y ray_onSurface/diry
chadd -t 0 0 ray_onSurface dirz
chkey -t 0 -v 0 -m 0 -a 0 -A 0 -T a  -F @N.z ray_onSurface/dirz
chblockend
opparm -V 15.0.416 ray_onSurface group ( onSurface ) entity ( point ) collision ( "" ) method ( minimum ) dir ( dirx diry dirz ) dotrans ( off ) lookfar ( off ) putnml ( off ) putdist ( on ) reverserays ( off ) rtolerance ( 0.01 ) scale ( 1 ) lift ( 0 ) bias ( 0 ) maxraydistcheck ( off ) maxraydist ( 0 ) sample ( 1 ) jitter ( 0 ) combinetype ( average ) seed ( 1 ) newgrp ( off ) hitgrp ( rayHitGroup ) useprimnumattrib ( off ) primnumattrib ( hitprim ) useprimuvwattrib ( off ) primuvwattrib ( hitprimuv ) getptattribs ( off ) ptattribnames ( * ) vertexattribnames ( "" ) primitiveattribnames ( "" ) detailattribnames ( "" )
chlock ray_onSurface -*
chautoscope ray_onSurface -*
opcolor -c 0.80000001192092896 0.80000001192092896 0.80000001192092896 ray_onSurface
opset -d off -r off -h off -f off -y off -t off -l off -s off -u off -c off -e on -b off ray_onSurface
opexprlanguage -s hscript ray_onSurface
opuserdata -n '___Version___' -v '15.0.416' ray_onSurface

# Node group_updateOnSurface (Sop/group)
opadd -e -n group group_updateOnSurface
oplocate -x -1.57443 -y 0.817774 group_updateOnSurface
opspareds "" group_updateOnSurface
chblockbegin
chadd -t 0 0 group_updateOnSurface filter
chkey -t 0 -v 1 -m 0 -a 0 -A 0 -T a  -F '$DIST>$RADIUS+0.01' group_updateOnSurface/filter
chadd -t 0 0 group_updateOnSurface rangeend
chkey -t 0 -v 0 -m 0 -a 0 -A 0 -T a  -F '$N' group_updateOnSurface/rangeend
chblockend
opparm -V 15.0.416 group_updateOnSurface group ( "" ) stdswitcher ( 0 0 0 ) docreategrp ( on ) crname ( onSurface ) entity ( point ) geotype ( all ) mergeop ( subtract ) switcher2 ( 0 0 0 0 ) groupnumber ( on ) ordered ( off ) groupop ( grpexpression ) filter ( filter ) pattern ( "" ) range ( 0 rangeend ) select ( 1 2 ) groupbounding ( off ) boundtype ( usebbox ) size ( 1 1 1 ) t ( 0 0 0 ) iso ( 0 ) invertvolume ( off ) includenotwhollycontained ( off ) groupnormal ( off ) dir ( 0 0 1 ) angle ( 180 ) camerapath ( "" ) nonplanar ( off ) nonplanartol ( 0.001 ) groupedges ( off ) dominedgeangle ( off ) minedgeangle ( 20 ) domaxedgeangle ( off ) maxedgeangle ( 20 ) edgeanglebetweenedges ( off ) dominedgelen ( off ) minedgelen ( 0 ) domaxedgelen ( off ) maxedgelen ( 0 ) dodepth ( off ) edgestep ( 0 ) edgeptgrp ( 0 ) unshared ( off ) boundarygroups ( off ) combineentity ( guess ) grpequal ( "" ) not1 ( off ) grp1 ( "" ) op1 ( none ) not2 ( off ) grp2 ( "" ) op2 ( none ) not3 ( off ) grp3 ( "" ) op3 ( none ) not4 ( off ) grp4 ( "" ) switcher3 ( 0 0 0 ) oldname ( "" ) newname ( "" ) cnvfromtype ( primgroup ) cnvtotype ( ptgroup ) convertg ( "" ) cnvtname ( "" ) preserve ( off ) primswithallpts ( off ) destroyname ( "" ) type ( 1 )
chlock group_updateOnSurface -*
chautoscope group_updateOnSurface -*
opcolor -c 0.80000001192092896 0.80000001192092896 0.80000001192092896 group_updateOnSurface
opset -d off -r off -h on -f off -y off -t off -l off -s off -u off -c off -e on -b off group_updateOnSurface
opexprlanguage -s hscript group_updateOnSurface
opuserdata -n '___Version___' -v '15.0.416' group_updateOnSurface

# Node attributeCreate_dist (Sop/attribcreate::2.0)
opadd -e -n attribcreate::2.0 attributeCreate_dist
oplocate -x -1.57443 -y 2.25448 attributeCreate_dist
opspareds "" attributeCreate_dist
opparm attributeCreate_dist  numattr ( 1 )
opparm -V 15.0.416 attributeCreate_dist group ( "" ) grouptype ( guess ) numattr ( 1 ) enable1 ( on ) name1 ( dist ) existing1 ( better ) createvarmap1 ( on ) varname1 ( "" ) class1 ( point ) savetoinfo1 ( off ) type1 ( float ) typeinfo1 ( guess ) precision1 ( 32 ) size1 ( 1 ) default1v ( 0 0 0 0 ) writevalues1 ( on ) uselocal1 ( on ) value1v ( 100000000 0 0 0 ) string1 ( "" )
chlock attributeCreate_dist -*
chautoscope attributeCreate_dist -*
opcolor -c 0.80000001192092896 0.80000001192092896 0.80000001192092896 attributeCreate_dist
opset -d off -r off -h off -f off -y off -t off -l off -s off -u off -c off -e on -b off attributeCreate_dist
opexprlanguage -s hscript attributeCreate_dist
opuserdata -n '___Version___' -v '15.0.416' attributeCreate_dist

# Node group_updateInAir (Sop/group)
opadd -e -n group group_updateInAir
oplocate -x -1.57443 -y 0.213674 group_updateInAir
opspareds "" group_updateInAir
chblockbegin
chadd -t 0 0 group_updateInAir rangeend
chkey -t 0 -v 0 -m 0 -a 0 -A 0 -T a  -F '$N' group_updateInAir/rangeend
chblockend
opparm -V 15.0.416 group_updateInAir group ( "" ) stdswitcher ( 1 1 1 ) docreategrp ( off ) crname ( group2 ) entity ( primitive ) geotype ( all ) mergeop ( replace ) switcher2 ( 0 0 0 0 ) groupnumber ( on ) ordered ( off ) groupop ( grppattern ) filter ( 1 ) pattern ( "" ) range ( 0 rangeend ) select ( 1 2 ) groupbounding ( off ) boundtype ( usebbox ) size ( 1 1 1 ) t ( 0 0 0 ) iso ( 0 ) invertvolume ( off ) includenotwhollycontained ( off ) groupnormal ( off ) dir ( 0 0 1 ) angle ( 180 ) camerapath ( "" ) nonplanar ( off ) nonplanartol ( 0.001 ) groupedges ( off ) dominedgeangle ( off ) minedgeangle ( 20 ) domaxedgeangle ( off ) maxedgeangle ( 20 ) edgeanglebetweenedges ( off ) dominedgelen ( off ) minedgelen ( 0 ) domaxedgelen ( off ) maxedgelen ( 0 ) dodepth ( off ) edgestep ( 0 ) edgeptgrp ( 0 ) unshared ( off ) boundarygroups ( off ) combineentity ( guess ) grpequal ( inAir ) not1 ( off ) grp1 ( inAir ) op1 ( sub ) not2 ( off ) grp2 ( onSurface ) op2 ( none ) not3 ( off ) grp3 ( "" ) op3 ( none ) not4 ( off ) grp4 ( "" ) switcher3 ( 0 0 0 ) oldname ( "" ) newname ( "" ) cnvfromtype ( primgroup ) cnvtotype ( ptgroup ) convertg ( "" ) cnvtname ( "" ) preserve ( off ) primswithallpts ( off ) destroyname ( "" ) type ( 1 )
chlock group_updateInAir -*
chautoscope group_updateInAir -*
opcolor -c 0.80000001192092896 0.80000001192092896 0.80000001192092896 group_updateInAir
opset -d off -r off -h on -f off -y off -t off -l off -s off -u off -c off -e on -b off group_updateInAir
opexprlanguage -s hscript group_updateInAir
opuserdata -n '___Version___' -v '15.0.416' group_updateInAir

# Node group_updateInLiquid (Sop/group)
opadd -e -n group group_updateInLiquid
oplocate -x -1.57443 -y -0.39814899999999998 group_updateInLiquid
opspareds "" group_updateInLiquid
chblockbegin
chadd -t 0 0 group_updateInLiquid rangeend
chkey -t 0 -v 0 -m 0 -a 0 -A 0 -T a  -F '$N' group_updateInLiquid/rangeend
chblockend
opparm -V 15.0.416 group_updateInLiquid group ( "" ) stdswitcher ( 1 1 1 ) docreategrp ( off ) crname ( group2 ) entity ( primitive ) geotype ( all ) mergeop ( replace ) switcher2 ( 0 0 0 0 ) groupnumber ( on ) ordered ( off ) groupop ( grppattern ) filter ( 1 ) pattern ( "" ) range ( 0 rangeend ) select ( 1 2 ) groupbounding ( off ) boundtype ( usebbox ) size ( 1 1 1 ) t ( 0 0 0 ) iso ( 0 ) invertvolume ( off ) includenotwhollycontained ( off ) groupnormal ( off ) dir ( 0 0 1 ) angle ( 180 ) camerapath ( "" ) nonplanar ( off ) nonplanartol ( 0.001 ) groupedges ( off ) dominedgeangle ( off ) minedgeangle ( 20 ) domaxedgeangle ( off ) maxedgeangle ( 20 ) edgeanglebetweenedges ( off ) dominedgelen ( off ) minedgelen ( 0 ) domaxedgelen ( off ) maxedgelen ( 0 ) dodepth ( off ) edgestep ( 0 ) edgeptgrp ( 0 ) unshared ( off ) boundarygroups ( off ) combineentity ( guess ) grpequal ( inLiquid ) not1 ( off ) grp1 ( inLiquid ) op1 ( sub ) not2 ( off ) grp2 ( onSurface ) op2 ( none ) not3 ( off ) grp3 ( "" ) op3 ( none ) not4 ( off ) grp4 ( "" ) switcher3 ( 0 0 0 ) oldname ( "" ) newname ( "" ) cnvfromtype ( primgroup ) cnvtotype ( ptgroup ) convertg ( "" ) cnvtname ( "" ) preserve ( off ) primswithallpts ( off ) destroyname ( "" ) type ( 1 )
chlock group_updateInLiquid -*
chautoscope group_updateInLiquid -*
opcolor -c 0.80000001192092896 0.80000001192092896 0.80000001192092896 group_updateInLiquid
opset -d off -r off -h on -f off -y off -t off -l off -s off -u off -c off -e on -b off group_updateInLiquid
opexprlanguage -s hscript group_updateInLiquid
opuserdata -n '___Version___' -v '15.0.416' group_updateInLiquid

# Node group_delete (Sop/group)
opadd -e -n group group_delete
oplocate -x -6.0024100000000002 -y 4.7834099999999999 group_delete
opspareds "" group_delete
chblockbegin
chadd -t 0 0 group_delete rangeend
chkey -t 0 -v 0 -m 0 -a 0 -A 0 -T a  -F '$N' group_delete/rangeend
chblockend
opparm -V 15.0.416 group_delete group ( "" ) stdswitcher ( 2 2 2 ) docreategrp ( on ) crname ( group1 ) entity ( primitive ) geotype ( all ) mergeop ( replace ) switcher2 ( 0 0 0 0 ) groupnumber ( on ) ordered ( off ) groupop ( grppattern ) filter ( 1 ) pattern ( "" ) range ( 0 rangeend ) select ( 1 2 ) groupbounding ( off ) boundtype ( usebbox ) size ( 1 1 1 ) t ( 0 0 0 ) iso ( 0 ) invertvolume ( off ) includenotwhollycontained ( off ) groupnormal ( off ) dir ( 0 0 1 ) angle ( 180 ) camerapath ( "" ) nonplanar ( off ) nonplanartol ( 0.001 ) groupedges ( off ) dominedgeangle ( off ) minedgeangle ( 20 ) domaxedgeangle ( off ) maxedgeangle ( 20 ) edgeanglebetweenedges ( off ) dominedgelen ( off ) minedgelen ( 0 ) domaxedgelen ( off ) maxedgelen ( 0 ) dodepth ( off ) edgestep ( 0 ) edgeptgrp ( 0 ) unshared ( off ) boundarygroups ( off ) combineentity ( guess ) grpequal ( "" ) not1 ( off ) grp1 ( "" ) op1 ( none ) not2 ( off ) grp2 ( "" ) op2 ( none ) not3 ( off ) grp3 ( "" ) op3 ( none ) not4 ( off ) grp4 ( "" ) switcher3 ( 2 2 2 ) oldname ( "" ) newname ( "" ) cnvfromtype ( primgroup ) cnvtotype ( ptgroup ) convertg ( "" ) cnvtname ( "" ) preserve ( off ) primswithallpts ( off ) destroyname ( 'inAir inLiquid onSurface closeSolid contactSolid outside' ) type ( 1 )
chlock group_delete -*
chautoscope group_delete -*
opcolor -c 0.80000001192092896 0.80000001192092896 0.80000001192092896 group_delete
opset -d off -r off -h on -f off -y off -t off -l off -s off -u off -c off -e on -b off group_delete
opexprlanguage -s hscript group_delete
opuserdata -n '___Version___' -v '15.0.416' group_delete

# Node attributeCreate_multiple3 (Sop/attribcreate::2.0)
opadd -e -n attribcreate::2.0 attributeCreate_multiple3
oplocate -x -6.0024100000000002 -y 2.0147900000000001 attributeCreate_multiple3
opspareds "" attributeCreate_multiple3
opparm attributeCreate_multiple3  numattr ( 4 )
opparm -V 15.0.416 attributeCreate_multiple3 group ( "" ) grouptype ( guess ) numattr ( 4 ) enable1 ( on ) name1 ( containerN ) existing1 ( better ) createvarmap1 ( on ) varname1 ( "" ) class1 ( point ) savetoinfo1 ( off ) type1 ( vector ) typeinfo1 ( guess ) precision1 ( 32 ) size1 ( 1 ) default1v ( 0 0 0 0 ) writevalues1 ( on ) uselocal1 ( on ) value1v ( 0 0 0 0 ) string1 ( "" ) enable2 ( on ) name2 ( outside ) existing2 ( better ) createvarmap2 ( on ) varname2 ( "" ) class2 ( point ) savetoinfo2 ( off ) type2 ( float ) typeinfo2 ( guess ) precision2 ( 32 ) size2 ( 1 ) default2v ( 0 0 0 0 ) writevalues2 ( on ) uselocal2 ( on ) value2v ( 0 0 0 0 ) string2 ( "" ) enable3 ( on ) name3 ( N ) existing3 ( better ) createvarmap3 ( on ) varname3 ( "" ) class3 ( point ) savetoinfo3 ( off ) type3 ( vector ) typeinfo3 ( guess ) precision3 ( 32 ) size3 ( 1 ) default3v ( 0 0 0 0 ) writevalues3 ( on ) uselocal3 ( on ) value3v ( 0 0 0 0 ) string3 ( "" ) enable4 ( on ) name4 ( airDistance ) existing4 ( better ) createvarmap4 ( on ) varname4 ( "" ) class4 ( point ) savetoinfo4 ( off ) type4 ( float ) typeinfo4 ( guess ) precision4 ( 32 ) size4 ( 1 ) default4v ( 0 0 0 0 ) writevalues4 ( on ) uselocal4 ( on ) value4v ( 100000000 0 0 0 ) string4 ( "" )
chlock attributeCreate_multiple3 -*
chautoscope attributeCreate_multiple3 -*
opcolor -c 0.80000001192092896 0.80000001192092896 0.80000001192092896 attributeCreate_multiple3
opset -d off -r off -h off -f off -y off -t off -l off -s off -u off -c off -e on -b off attributeCreate_multiple3
opexprlanguage -s hscript attributeCreate_multiple3
opuserdata -n '___Version___' -v '15.0.416' attributeCreate_multiple3

# Node controls (Sop/null)
opadd -e -n null controls
oplocate -x 10.831 -y 8.0386600000000001 controls
opspareds '    parm { 	name	"copyinput" 	baseparm 	label	"Copy Input" 	invisible 	export	none     }     parm { 	name	"cacheinput" 	baseparm 	label	"Cache Input" 	invisible 	export	none     }     parm { 	name	"gravityon" 	label	"Label" 	type	toggle 	nolabel 	joinnext 	default	{ "1" } 	range	{ 0 1 } 	export	none     }     parm { 	name	"gravity" 	label	"Gravity" 	type	vector 	size	3 	default	{ "0" "0" "0" } 	disablewhen	"{ gravityon == 0 }" 	range	{ -1 1 } 	export	none     }     parm { 	name	"buoyancyon" 	label	"Label" 	type	toggle 	nolabel 	joinnext 	default	{ "1" } 	disablewhen	"{ gravityon == 0 }" 	range	{ 0 1 } 	export	none     }     parm { 	name	"buoyancy" 	label	"Buoyancy" 	type	float 	default	{ "0" } 	disablewhen	"{ gravityon == 0 } { buoyancyon == 0 }" 	range	{ 0 1 } 	export	none     }     parm { 	name	"surfacetensionon" 	label	"Label" 	type	toggle 	nolabel 	joinnext 	default	{ "1" } 	range	{ 0 1 } 	export	none     }     parm { 	name	"surfacetension" 	label	"SurfaceTension" 	type	float 	default	{ "0" } 	disablewhen	"{ surfacetensionon == 0 }" 	range	{ 0 1 } 	export	none     }     parm { 	name	"sepparm2" 	label	"Separator" 	type	separator 	default	{ "" } 	range	{ 0 1 } 	export	none     }     parm { 	name	"solidcollision" 	label	"Solid Collision" 	type	toggle 	default	{ "1" } 	range	{ 0 1 } 	export	none     }     parm { 	name	"solidstronginteractionon" 	label	"Label" 	type	toggle 	nolabel 	joinnext 	default	{ "1" } 	disablewhen	"{ solidcollision == 0 }" 	range	{ 0 1 } 	export	none     }     parm { 	name	"solidstronginteraction" 	label	"Solid Strong Interaction" 	type	float 	default	{ "0" } 	disablewhen	"{ solidcollision == 0 } { solidstronginteractionon == 0 }" 	range	{ 0 1 } 	export	none     }     parm { 	name	"solidattractionon" 	label	"Label" 	type	toggle 	nolabel 	joinnext 	default	{ "1" } 	disablewhen	"{ solidcollision == 0 }" 	range	{ 0 1 } 	export	none     }     parm { 	name	"solidattraction" 	label	"Solid Attraction" 	type	float 	default	{ "0" } 	disablewhen	"{ solidcollision == 0 } { solidattractionon == 0 }" 	range	{ 0 1 } 	export	none     }     parm { 	name	"sepparm3" 	label	"Separator" 	type	separator 	default	{ "" } 	range	{ 0 1 } 	export	none     }     parm { 	name	"stronginteractionon" 	label	"Label" 	type	toggle 	nolabel 	joinnext 	default	{ "1" } 	range	{ 0 1 } 	export	none     }     parm { 	name	"stronginteraction" 	label	"Strong Interaction" 	type	float 	default	{ "0" } 	disablewhen	"{ stronginteractionon == 0 }" 	range	{ 0 1 } 	export	none     }     parm { 	name	"weakinteractionon" 	label	"Label" 	type	toggle 	nolabel 	joinnext 	default	{ "1" } 	range	{ 0 1 } 	export	none     }     parm { 	name	"weakinteraction" 	label	"Weak Interaction" 	type	float 	default	{ "0" } 	disablewhen	"{ weakinteractionon == 0 }" 	range	{ 0 1 } 	export	none     }     parm { 	name	"sepparm" 	label	"Separator" 	type	separator 	default	{ "" } 	range	{ 0 1 } 	export	none     }     parm { 	name	"dampingon" 	label	"Label" 	type	toggle 	nolabel 	joinnext 	default	{ "1" } 	range	{ 0 1 } 	export	none     }     parm { 	name	"damping" 	label	"Damping" 	type	float 	default	{ "0" } 	disablewhen	"{ dampingon == 0 }" 	range	{ 0 1 } 	export	none     }     parm { 	name	"generalscaleon" 	label	"Label" 	type	toggle 	nolabel 	joinnext 	default	{ "1" } 	range	{ 0 1 } 	export	none     }     parm { 	name	"generalscale" 	label	"General Scale" 	type	float 	default	{ "0" } 	disablewhen	"{ generalscaleon == 0 }" 	range	{ 0 1 } 	export	none     } ' controls
chblockbegin
chadd -t 0 0 controls gravityon
chkey -t 0 -v 1 -m 0 -a 0 -A 0 -T a  -F 'ch("../../controls/gravityon")' controls/gravityon
chadd -t 0 0 controls gravityx
chkey -t 0 -v 0 -m 0 -a 0 -A 0 -T a  -F 'ch("../../controls/gravityx")' controls/gravityx
chadd -t 0 0 controls gravityy
chkey -t 0 -v -0.098066500000000001 -m 0 -a 0 -A 0 -T a  -F 'ch("../../controls/gravityy")' controls/gravityy
chadd -t 0 0 controls gravityz
chkey -t 0 -v 0 -m 0 -a 0 -A 0 -T a  -F 'ch("../../controls/gravityz")' controls/gravityz
chadd -t 0 0 controls buoyancyon
chkey -t 0 -v 1 -m 0 -a 0 -A 0 -T a  -F 'ch("../../controls/buoyancyon")' controls/buoyancyon
chadd -t 0 0 controls buoyancy
chkey -t 0 -v 0.0029999999999999996 -m 0 -a 0 -A 0 -T a  -F 'ch("../../controls/buoyancy")' controls/buoyancy
chadd -t 0 0 controls surfacetensionon
chkey -t 0 -v 1 -m 0 -a 0 -A 0 -T a  -F 'ch("../../controls/surfacetensionon")' controls/surfacetensionon
chadd -t 0 0 controls surfacetension
chkey -t 0 -v 0.90000000000000002 -m 0 -a 0 -A 0 -T a  -F 'ch("../../controls/surfacetension")' controls/surfacetension
chadd -t 0 0 controls solidcollision
chkey -t 0 -v 1 -m 0 -a 0 -A 0 -T a  -F 'ch("../../controls/solidcollision")' controls/solidcollision
chadd -t 0 0 controls solidstronginteractionon
chkey -t 0 -v 1 -m 0 -a 0 -A 0 -T a  -F 'ch("../../controls/solidstronginteractionon")' controls/solidstronginteractionon
chadd -t 0 0 controls solidstronginteraction
chkey -t 0 -v 0 -m 0 -a 0 -A 0 -T a  -F 'ch("../../controls/solidstronginteraction")' controls/solidstronginteraction
chadd -t 0 0 controls solidattractionon
chkey -t 0 -v 1 -m 0 -a 0 -A 0 -T a  -F 'ch("../../controls/solidattractionon")' controls/solidattractionon
chadd -t 0 0 controls solidattraction
chkey -t 0 -v 0 -m 0 -a 0 -A 0 -T a  -F 'ch("../../controls/solidattraction")' controls/solidattraction
chadd -t 0 0 controls stronginteractionon
chkey -t 0 -v 1 -m 0 -a 0 -A 0 -T a  -F 'ch("../../controls/stronginteractionon")' controls/stronginteractionon
chadd -t 0 0 controls stronginteraction
chkey -t 0 -v 0.10000000000000001 -m 0 -a 0 -A 0 -T a  -F 'ch("../../controls/stronginteraction")' controls/stronginteraction
chadd -t 0 0 controls weakinteractionon
chkey -t 0 -v 1 -m 0 -a 0 -A 0 -T a  -F 'ch("../../controls/weakinteractionon")' controls/weakinteractionon
chadd -t 0 0 controls weakinteraction
chkey -t 0 -v 0.0050000000000000001 -m 0 -a 0 -A 0 -T a  -F 'ch("../../controls/weakinteraction")' controls/weakinteraction
chadd -t 0 0 controls dampingon
chkey -t 0 -v 1 -m 0 -a 0 -A 0 -T a  -F 'ch("../../controls/dampingon")' controls/dampingon
chadd -t 0 0 controls damping
chkey -t 0 -v 1 -m 0 -a 0 -A 0 -T a  -F 'ch("../../controls/damping")' controls/damping
chadd -t 0 0 controls generalscaleon
chkey -t 0 -v 1 -m 0 -a 0 -A 0 -T a  -F 'ch("../../controls/generalscaleon")' controls/generalscaleon
chadd -t 0 0 controls generalscale
chkey -t 0 -v 1 -m 0 -a 0 -A 0 -T a  -F 'ch("../../controls/generalscale")' controls/generalscale
chblockend
opparm -V 15.0.416 controls copyinput ( on ) cacheinput ( off ) gravityon ( gravityon ) gravity ( gravityx gravityy gravityz ) buoyancyon ( buoyancyon ) buoyancy ( buoyancy ) surfacetensionon ( surfacetensionon ) surfacetension ( surfacetension ) sepparm2 ( ) solidcollision ( solidcollision ) solidstronginteractionon ( solidstronginteractionon ) solidstronginteraction ( solidstronginteraction ) solidattractionon ( solidattractionon ) solidattraction ( solidattraction ) sepparm3 ( ) stronginteractionon ( stronginteractionon ) stronginteraction ( stronginteraction ) weakinteractionon ( weakinteractionon ) weakinteraction ( weakinteraction ) sepparm ( ) dampingon ( dampingon ) damping ( damping ) generalscaleon ( generalscaleon ) generalscale ( generalscale )
chlock controls -*
chautoscope controls -*
opcolor -c 0.66699999570846558 0 0 controls
opset -d off -r off -h off -f off -y off -t off -l off -s off -u off -c off -e on -b off controls
nbop control_panel add controls
opexprlanguage -s hscript controls
opuserdata -n '___Version___' -v '15.0.416' controls

# Node objectMerge_container (Sop/object_merge)
opadd -e -n object_merge objectMerge_container
oplocate -x 2.4302600000000001 -y 9.8141499999999997 objectMerge_container
opspareds "" objectMerge_container
opparm objectMerge_container  numobj ( 1 )
opparm -V 15.0.416 objectMerge_container numobj ( 1 ) _separator ( ) xformtype ( object ) xformpath ( "" ) invertxform ( off ) createptgroups ( off ) ptgroupprefix ( _ptgrp_ ) createprimgroups ( off ) primgroupprefix ( _primgrp_ ) verbosegroups ( off ) suffixfirstgroup ( on ) createptstring ( off ) createprimstring ( off ) pathattrib ( objname ) pack ( off ) pivot ( centroid ) viewportlod ( full ) addpath ( on ) enable1 ( on ) objpath1 ( /obj/inputs/OUT_container ) group1 ( "" ) expand1 ( off )
chlock objectMerge_container -*
chautoscope objectMerge_container -*
opcolor -c 0.80000001192092896 0.80000001192092896 0.80000001192092896 objectMerge_container
opset -d off -r off -h off -f off -y off -t off -l off -s off -u off -c off -e on -b off objectMerge_container
opexprlanguage -s hscript objectMerge_container
opuserdata -n '___Version___' -v '15.0.416' objectMerge_container

# Node ray_onSurfaceToSolid (Sop/ray)
opadd -e -n ray ray_onSurfaceToSolid
oplocate -x 0.21695400000000001 -y -4.1831699999999996 ray_onSurfaceToSolid
opspareds "" ray_onSurfaceToSolid
chblockbegin
chadd -t 0 0 ray_onSurfaceToSolid dirx
chkey -t 0 -v 0 -m 0 -a 0 -A 0 -T a  -F '$NX' ray_onSurfaceToSolid/dirx
chadd -t 0 0 ray_onSurfaceToSolid diry
chkey -t 0 -v -1 -m 0 -a 0 -A 0 -T a  -F '$NY' ray_onSurfaceToSolid/diry
chadd -t 0 0 ray_onSurfaceToSolid dirz
chkey -t 0 -v 0 -m 0 -a 0 -A 0 -T a  -F '$NZ' ray_onSurfaceToSolid/dirz
chblockend
opparm -V 15.0.416 ray_onSurfaceToSolid group ( "" ) entity ( primitive ) collision ( "" ) method ( minimum ) dir ( dirx diry dirz ) dotrans ( on ) lookfar ( off ) putnml ( off ) putdist ( off ) reverserays ( off ) rtolerance ( 0.01 ) scale ( 1 ) lift ( 0 ) bias ( 0 ) maxraydistcheck ( off ) maxraydist ( 0 ) sample ( 1 ) jitter ( 0 ) combinetype ( average ) seed ( 1 ) newgrp ( off ) hitgrp ( rayhitgroup ) useprimnumattrib ( off ) primnumattrib ( hitprim ) useprimuvwattrib ( off ) primuvwattrib ( hitprimuv ) getptattribs ( on ) ptattribnames ( N ) vertexattribnames ( "" ) primitiveattribnames ( "" ) detailattribnames ( "" )
chlock ray_onSurfaceToSolid -*
chautoscope ray_onSurfaceToSolid -*
opcolor -c 0.80000001192092896 0.80000001192092896 0.80000001192092896 ray_onSurfaceToSolid
opset -d off -r off -h off -f off -y off -t off -l off -s off -u off -c off -e on -b off ray_onSurfaceToSolid
opexprlanguage -s hscript ray_onSurfaceToSolid
opuserdata -n '___Version___' -v '15.0.416' ray_onSurfaceToSolid

# Node ray_FromContainerToSpheres (Sop/ray)
opadd -e -n ray ray_FromContainerToSpheres
oplocate -x 2.4172099999999999 -y -6.1770100000000001 ray_FromContainerToSpheres
opspareds "" ray_FromContainerToSpheres
chblockbegin
chadd -t 0 0 ray_FromContainerToSpheres dirx
chkey -t 0 -v 0 -m 0 -a 0 -A 0 -T a  -F '$TOSOLIDX' ray_FromContainerToSpheres/dirx
chadd -t 0 0 ray_FromContainerToSpheres diry
chkey -t 0 -v -1 -m 0 -a 0 -A 0 -T a  -F '$TOSOLIDY' ray_FromContainerToSpheres/diry
chadd -t 0 0 ray_FromContainerToSpheres dirz
chkey -t 0 -v 0 -m 0 -a 0 -A 0 -T a  -F '$TOSOLIDZ' ray_FromContainerToSpheres/dirz
chblockend
opparm -V 15.0.416 ray_FromContainerToSpheres group ( "" ) entity ( primitive ) collision ( "" ) method ( project ) dir ( dirx diry dirz ) dotrans ( on ) lookfar ( off ) putnml ( off ) putdist ( off ) reverserays ( on ) rtolerance ( 0.01 ) scale ( 1 ) lift ( 0 ) bias ( 0 ) maxraydistcheck ( off ) maxraydist ( 0 ) sample ( 1 ) jitter ( 0 ) combinetype ( average ) seed ( 1 ) newgrp ( off ) hitgrp ( rayhitgroup ) useprimnumattrib ( off ) primnumattrib ( hitprim ) useprimuvwattrib ( off ) primuvwattrib ( hitprimuv ) getptattribs ( on ) ptattribnames ( "" ) vertexattribnames ( "" ) primitiveattribnames ( pointId ) detailattribnames ( "" )
chlock ray_FromContainerToSpheres -*
chautoscope ray_FromContainerToSpheres -*
opcolor -c 0.80000001192092896 0.80000001192092896 0.80000001192092896 ray_FromContainerToSpheres
opset -d off -r off -h off -f off -y off -t off -l off -s off -u off -c off -e on -b off ray_FromContainerToSpheres
opexprlanguage -s hscript ray_FromContainerToSpheres
opuserdata -n '___Version___' -v '15.0.416' ray_FromContainerToSpheres

# Node group_closeSolid (Sop/group)
opadd -e -n group group_closeSolid
oplocate -x -0.97497367858886719 -y -7.1588411331176758 group_closeSolid
opspareds "" group_closeSolid
chblockbegin
chadd -t 0 0 group_closeSolid filter
chkey -t 0 -v 1 -m 0 -a 0 -A 0 -T a  -F '$ID == $POINTID' group_closeSolid/filter
chadd -t 0 0 group_closeSolid rangeend
chkey -t 0 -v 0 -m 0 -a 0 -A 0 -T a  -F '$N' group_closeSolid/rangeend
chblockend
opparm -V 15.0.416 group_closeSolid group ( "" ) stdswitcher ( 0 0 0 ) docreategrp ( on ) crname ( closeSolid ) entity ( point ) geotype ( all ) mergeop ( replace ) switcher2 ( 0 0 0 0 ) groupnumber ( on ) ordered ( off ) groupop ( grpexpression ) filter ( filter ) pattern ( "" ) range ( 0 rangeend ) select ( 1 2 ) groupbounding ( off ) boundtype ( usebbox ) size ( 1 1 1 ) t ( 0 0 0 ) iso ( 0 ) invertvolume ( off ) includenotwhollycontained ( off ) groupnormal ( off ) dir ( 0 0 1 ) angle ( 180 ) camerapath ( "" ) nonplanar ( off ) nonplanartol ( 0.001 ) groupedges ( off ) dominedgeangle ( off ) minedgeangle ( 20 ) domaxedgeangle ( off ) maxedgeangle ( 20 ) edgeanglebetweenedges ( off ) dominedgelen ( off ) minedgelen ( 0 ) domaxedgelen ( off ) maxedgelen ( 0 ) dodepth ( off ) edgestep ( 0 ) edgeptgrp ( 0 ) unshared ( off ) boundarygroups ( off ) combineentity ( guess ) grpequal ( "" ) not1 ( off ) grp1 ( "" ) op1 ( none ) not2 ( off ) grp2 ( "" ) op2 ( none ) not3 ( off ) grp3 ( "" ) op3 ( none ) not4 ( off ) grp4 ( "" ) switcher3 ( 0 0 0 ) oldname ( "" ) newname ( "" ) cnvfromtype ( primgroup ) cnvtotype ( ptgroup ) convertg ( "" ) cnvtname ( "" ) preserve ( off ) primswithallpts ( off ) destroyname ( "" ) type ( 1 )
chlock group_closeSolid -*
chautoscope group_closeSolid -*
opcolor -c 0.80000001192092896 0.80000001192092896 0.80000001192092896 group_closeSolid
opset -d off -r off -h on -f off -y off -t off -l off -s off -u off -c off -e on -b off group_closeSolid
opexprlanguage -s hscript group_closeSolid
opuserdata -n '___Version___' -v '15.0.416' group_closeSolid

# Node attribute_idToPointId (Sop/attribute)
opadd -e -n attribute attribute_idToPointId
oplocate -x 2.8143799999999999 -y -2.3544399999999999 attribute_idToPointId
opspareds "" attribute_idToPointId
opparm -V 15.0.416 attribute_idToPointId stdswitcher ( 2 2 2 2 2 ) _label1_ ( From To ) frompt0 ( "" ) topt0 ( "" ) frompt1 ( "" ) topt1 ( "" ) frompt2 ( "" ) topt2 ( "" ) frompt3 ( "" ) topt3 ( "" ) frompt4 ( "" ) topt4 ( "" ) ptdel ( "" ) ptkeep ( * ) _label2_ ( From To ) fromvtx0 ( "" ) tovtx0 ( "" ) fromvtx1 ( "" ) tovtx1 ( "" ) fromvtx2 ( "" ) tovtx2 ( "" ) fromvtx3 ( "" ) tovtx3 ( "" ) fromvtx4 ( "" ) tovtx4 ( "" ) vtxdel ( "" ) vtxkeep ( * ) _label3_ ( From To ) frompr0 ( id ) topr0 ( pointId ) frompr1 ( "" ) topr1 ( "" ) frompr2 ( "" ) topr2 ( "" ) frompr3 ( "" ) topr3 ( "" ) frompr4 ( "" ) topr4 ( "" ) primdel ( "" ) primkeep ( * ) _label4_ ( From To ) fromdtl0 ( "" ) todtl0 ( "" ) fromdtl1 ( "" ) todtl1 ( "" ) fromdtl2 ( "" ) todtl2 ( "" ) fromdtl3 ( "" ) todtl3 ( "" ) fromdtl4 ( "" ) todtl4 ( "" ) dtldel ( "" ) dtlkeep ( * ) _label5_ ( RiName RiType Offset "" ) hname0 ( "" ) riname0 ( "" ) ritype0 ( vtx_float ) rioff0 ( 0 ) hname1 ( "" ) riname1 ( "" ) ritype1 ( vtx_float ) rioff1 ( 0 ) hname2 ( "" ) riname2 ( "" ) ritype2 ( vtx_float ) rioff2 ( 0 ) hname3 ( "" ) riname3 ( "" ) ritype3 ( vtx_float ) rioff3 ( 0 ) hname4 ( "" ) riname4 ( "" ) ritype4 ( vtx_float ) rioff4 ( 0 ) ridefault ( off ) updatevar ( on ) overwrite ( off )
chlock attribute_idToPointId -*
chautoscope attribute_idToPointId -*
opcolor -c 0.80000001192092896 0.80000001192092896 0.80000001192092896 attribute_idToPointId
opset -d off -r off -h off -f off -y off -t off -l off -s off -u off -c off -e on -b off attribute_idToPointId
opexprlanguage -s hscript attribute_idToPointId
opuserdata -n '___Version___' -v '15.0.416' attribute_idToPointId

# Node attributeCreate_pointIdLocal (Sop/attribcreate::2.0)
opadd -e -n attribcreate::2.0 attributeCreate_pointIdLocal
oplocate -x -1.16852 -y -1.5795600000000001 attributeCreate_pointIdLocal
opspareds "" attributeCreate_pointIdLocal
opparm attributeCreate_pointIdLocal  numattr ( 1 )
opparm -V 15.0.416 attributeCreate_pointIdLocal group ( "" ) grouptype ( guess ) numattr ( 1 ) enable1 ( on ) name1 ( pointId ) existing1 ( better ) createvarmap1 ( on ) varname1 ( "" ) class1 ( point ) savetoinfo1 ( off ) type1 ( int ) typeinfo1 ( guess ) precision1 ( 32 ) size1 ( 1 ) default1v ( 0 0 0 0 ) writevalues1 ( on ) uselocal1 ( on ) value1v ( 0 0 0 0 ) string1 ( "" )
chlock attributeCreate_pointIdLocal -*
chautoscope attributeCreate_pointIdLocal -*
opcolor -c 0.80000001192092896 0.80000001192092896 0.80000001192092896 attributeCreate_pointIdLocal
opset -d off -r off -h off -f off -y off -t off -l off -s off -u off -c off -e on -b off attributeCreate_pointIdLocal
opexprlanguage -s hscript attributeCreate_pointIdLocal
opuserdata -n '___Version___' -v '15.0.416' attributeCreate_pointIdLocal

# Node point_pointId (Sop/point)
opadd -e -n point point_pointId
oplocate -x -0.97497400000000001 -y -6.5799300000000001 point_pointId
opspareds "" point_pointId
opparm point_pointId  numcustom ( 1 )
chblockbegin
chadd -t 0 0 point_pointId tx
chkey -t 0 -v 0 -m 0 -a 0 -A 0 -T a  -F @P.x point_pointId/tx
chadd -t 0 0 point_pointId ty
chkey -t 0 -v 0 -m 0 -a 0 -A 0 -T a  -F @P.y point_pointId/ty
chadd -t 0 0 point_pointId tz
chkey -t 0 -v 0 -m 0 -a 0 -A 0 -T a  -F @P.z point_pointId/tz
chadd -t 0 0 point_pointId weight
chkey -t 0 -v 1 -m 0 -a 0 -A 0 -T a  -F @P.w point_pointId/weight
chadd -t 0 0 point_pointId diffr
chkey -t 0 -v 1 -m 0 -a 0 -A 0 -T a  -F @Cd.r point_pointId/diffr
chadd -t 0 0 point_pointId diffg
chkey -t 0 -v 1 -m 0 -a 0 -A 0 -T a  -F @Cd.g point_pointId/diffg
chadd -t 0 0 point_pointId diffb
chkey -t 0 -v 1 -m 0 -a 0 -A 0 -T a  -F @Cd.b point_pointId/diffb
chadd -t 0 0 point_pointId alpha
chkey -t 0 -v 1 -m 0 -a 0 -A 0 -T a  -F @Alpha point_pointId/alpha
chadd -t 0 0 point_pointId nx
chkey -t 0 -v 0 -m 0 -a 0 -A 0 -T a  -F @N.x point_pointId/nx
chadd -t 0 0 point_pointId ny
chkey -t 0 -v 0 -m 0 -a 0 -A 0 -T a  -F @N.y point_pointId/ny
chadd -t 0 0 point_pointId nz
chkey -t 0 -v 0 -m 0 -a 0 -A 0 -T a  -F @N.z point_pointId/nz
chadd -t 0 0 point_pointId mapu
chkey -t 0 -v 0 -m 0 -a 0 -A 0 -T a  -F @uv.x point_pointId/mapu
chadd -t 0 0 point_pointId mapv
chkey -t 0 -v 0 -m 0 -a 0 -A 0 -T a  -F @uv.y point_pointId/mapv
chadd -t 0 0 point_pointId mapw
chkey -t 0 -v 0 -m 0 -a 0 -A 0 -T a  -F @uv.z point_pointId/mapw
chadd -t 0 0 point_pointId tension
chkey -t 0 -v 1 -m 0 -a 0 -A 0 -T a  -F @tension point_pointId/tension
chadd -t 0 0 point_pointId springk
chkey -t 0 -v 30 -m 0 -a 0 -A 0 -T a  -F @springk point_pointId/springk
chadd -t 0 0 point_pointId vx
chkey -t 0 -v 0 -m 0 -a 0 -A 0 -T a  -F @v.x point_pointId/vx
chadd -t 0 0 point_pointId vy
chkey -t 0 -v 0 -m 0 -a 0 -A 0 -T a  -F @v.y point_pointId/vy
chadd -t 0 0 point_pointId vz
chkey -t 0 -v 0 -m 0 -a 0 -A 0 -T a  -F @v.z point_pointId/vz
chadd -t 0 0 point_pointId upx
chkey -t 0 -v 0 -m 0 -a 0 -A 0 -T a  -F @up.x point_pointId/upx
chadd -t 0 0 point_pointId upy
chkey -t 0 -v 0 -m 0 -a 0 -A 0 -T a  -F @up.y point_pointId/upy
chadd -t 0 0 point_pointId upz
chkey -t 0 -v 0 -m 0 -a 0 -A 0 -T a  -F @up.z point_pointId/upz
chadd -t 0 0 point_pointId pscale
chkey -t 0 -v 1 -m 0 -a 0 -A 0 -T a  -F @pscale point_pointId/pscale
chadd -t 0 0 point_pointId val1i1
chkey -t 0 -v 0 -m 0 -a 0 -A 0 -T a  -F '$POINTID2' point_pointId/val1i1
chblockend
opparm -V 15.0.416 point_pointId group ( "" ) matchbyattribute ( off ) attributetomatch ( id ) stdswitcher ( 3 3 3 3 ) t ( tx ty tz ) doweight ( off ) weight ( weight ) doclr ( off ) diff ( diffr diffg diffb ) doalpha ( off ) alpha ( alpha ) donml ( off ) n ( nx ny nz ) douvw ( off ) map ( mapu mapv mapw ) domass ( off ) mass ( 1 ) drag ( 1 ) dotension ( off ) tension ( tension ) dospringk ( off ) springk ( springk ) dovel ( off ) v ( vx vy vz ) doup ( off ) up ( upx upy upz ) dopscale ( off ) pscale ( pscale ) doinstance ( off ) instancepath ( "" ) doradius ( off ) radiusf ( 1 ) doscale ( off ) scalef ( 1 ) doradialf ( off ) radialf ( 0 ) donormalf ( off ) normalf ( 0 ) doedgef ( off ) edgef ( 0 ) dodirf ( off ) dirf ( 0 0 0 ) numcustom ( 1 ) apply1 ( on ) name1 ( pointId ) val1i ( val1i1 0 0 0 ) sval1 ( "" )
chlock point_pointId -*
chautoscope point_pointId -*
opcolor -c 0.80000001192092896 0.80000001192092896 0.80000001192092896 point_pointId
opset -d off -r off -h off -f off -y off -t off -l off -s off -u off -c off -e on -b off point_pointId
opexprlanguage -s hscript point_pointId
opuserdata -n '___Version___' -v '15.0.416' point_pointId

# Node point_toSolid (Sop/point)
opadd -e -n point point_toSolid
oplocate -x -0.97497400000000001 -y -5.98231 point_toSolid
opspareds "" point_toSolid
opparm point_toSolid  numcustom ( 1 )
chblockbegin
chadd -t 0 0 point_toSolid tx
chkey -t 0 -v 0 -m 0 -a 0 -A 0 -T a  -F @P.x point_toSolid/tx
chadd -t 0 0 point_toSolid ty
chkey -t 0 -v 0 -m 0 -a 0 -A 0 -T a  -F @P.y point_toSolid/ty
chadd -t 0 0 point_toSolid tz
chkey -t 0 -v 0 -m 0 -a 0 -A 0 -T a  -F @P.z point_toSolid/tz
chadd -t 0 0 point_toSolid weight
chkey -t 0 -v 1 -m 0 -a 0 -A 0 -T a  -F @P.w point_toSolid/weight
chadd -t 0 0 point_toSolid diffr
chkey -t 0 -v 1 -m 0 -a 0 -A 0 -T a  -F @Cd.r point_toSolid/diffr
chadd -t 0 0 point_toSolid diffg
chkey -t 0 -v 1 -m 0 -a 0 -A 0 -T a  -F @Cd.g point_toSolid/diffg
chadd -t 0 0 point_toSolid diffb
chkey -t 0 -v 1 -m 0 -a 0 -A 0 -T a  -F @Cd.b point_toSolid/diffb
chadd -t 0 0 point_toSolid alpha
chkey -t 0 -v 1 -m 0 -a 0 -A 0 -T a  -F @Alpha point_toSolid/alpha
chadd -t 0 0 point_toSolid nx
chkey -t 0 -v 0 -m 0 -a 0 -A 0 -T a  -F @N.x point_toSolid/nx
chadd -t 0 0 point_toSolid ny
chkey -t 0 -v 0 -m 0 -a 0 -A 0 -T a  -F @N.y point_toSolid/ny
chadd -t 0 0 point_toSolid nz
chkey -t 0 -v 0 -m 0 -a 0 -A 0 -T a  -F @N.z point_toSolid/nz
chadd -t 0 0 point_toSolid mapu
chkey -t 0 -v 0 -m 0 -a 0 -A 0 -T a  -F @uv.x point_toSolid/mapu
chadd -t 0 0 point_toSolid mapv
chkey -t 0 -v 0 -m 0 -a 0 -A 0 -T a  -F @uv.y point_toSolid/mapv
chadd -t 0 0 point_toSolid mapw
chkey -t 0 -v 0 -m 0 -a 0 -A 0 -T a  -F @uv.z point_toSolid/mapw
chadd -t 0 0 point_toSolid tension
chkey -t 0 -v 1 -m 0 -a 0 -A 0 -T a  -F @tension point_toSolid/tension
chadd -t 0 0 point_toSolid springk
chkey -t 0 -v 30 -m 0 -a 0 -A 0 -T a  -F @springk point_toSolid/springk
chadd -t 0 0 point_toSolid vx
chkey -t 0 -v 0 -m 0 -a 0 -A 0 -T a  -F @v.x point_toSolid/vx
chadd -t 0 0 point_toSolid vy
chkey -t 0 -v 0 -m 0 -a 0 -A 0 -T a  -F @v.y point_toSolid/vy
chadd -t 0 0 point_toSolid vz
chkey -t 0 -v 0 -m 0 -a 0 -A 0 -T a  -F @v.z point_toSolid/vz
chadd -t 0 0 point_toSolid upx
chkey -t 0 -v 0 -m 0 -a 0 -A 0 -T a  -F @up.x point_toSolid/upx
chadd -t 0 0 point_toSolid upy
chkey -t 0 -v 0 -m 0 -a 0 -A 0 -T a  -F @up.y point_toSolid/upy
chadd -t 0 0 point_toSolid upz
chkey -t 0 -v 0 -m 0 -a 0 -A 0 -T a  -F @up.z point_toSolid/upz
chadd -t 0 0 point_toSolid pscale
chkey -t 0 -v 1 -m 0 -a 0 -A 0 -T a  -F @pscale point_toSolid/pscale
chadd -t 0 0 point_toSolid val1i1
chkey -t 0 -v 0 -m 0 -a 0 -A 0 -T a  -F '$TOSOLIDX2' point_toSolid/val1i1
chadd -t 0 0 point_toSolid val1i2
chkey -t 0 -v 0 -m 0 -a 0 -A 0 -T a  -F '$TOSOLIDY2' point_toSolid/val1i2
chadd -t 0 0 point_toSolid val1i3
chkey -t 0 -v 0 -m 0 -a 0 -A 0 -T a  -F '$TOSOLIDZ2' point_toSolid/val1i3
chblockend
opparm -V 15.0.416 point_toSolid group ( "" ) matchbyattribute ( off ) attributetomatch ( id ) stdswitcher ( 3 3 3 3 ) t ( tx ty tz ) doweight ( off ) weight ( weight ) doclr ( off ) diff ( diffr diffg diffb ) doalpha ( off ) alpha ( alpha ) donml ( off ) n ( nx ny nz ) douvw ( off ) map ( mapu mapv mapw ) domass ( off ) mass ( 1 ) drag ( 1 ) dotension ( off ) tension ( tension ) dospringk ( off ) springk ( springk ) dovel ( off ) v ( vx vy vz ) doup ( off ) up ( upx upy upz ) dopscale ( off ) pscale ( pscale ) doinstance ( off ) instancepath ( "" ) doradius ( off ) radiusf ( 1 ) doscale ( off ) scalef ( 1 ) doradialf ( off ) radialf ( 0 ) donormalf ( off ) normalf ( 0 ) doedgef ( off ) edgef ( 0 ) dodirf ( off ) dirf ( 0 0 0 ) numcustom ( 1 ) apply1 ( on ) name1 ( toSolid ) val1i ( val1i1 val1i2 val1i3 0 ) sval1 ( "" )
chlock point_toSolid -*
chautoscope point_toSolid -*
opcolor -c 0.80000001192092896 0.80000001192092896 0.80000001192092896 point_toSolid
opset -d off -r off -h off -f off -y off -t off -l off -s off -u off -c off -e on -b off point_toSolid
opexprlanguage -s hscript point_toSolid
opuserdata -n '___Version___' -v '15.0.416' point_toSolid

# Node attributeCreate_toSolid (Sop/attribcreate::2.0)
opadd -e -n attribcreate::2.0 attributeCreate_toSolid
oplocate -x -1.16852 -y -2.1833499999999999 attributeCreate_toSolid
opspareds "" attributeCreate_toSolid
opparm attributeCreate_toSolid  numattr ( 2 )
opparm -V 15.0.416 attributeCreate_toSolid group ( "" ) grouptype ( guess ) numattr ( 2 ) enable1 ( on ) name1 ( solidDistance ) existing1 ( better ) createvarmap1 ( on ) varname1 ( "" ) class1 ( point ) savetoinfo1 ( off ) type1 ( float ) typeinfo1 ( guess ) precision1 ( 32 ) size1 ( 1 ) default1v ( 0 0 0 0 ) writevalues1 ( on ) uselocal1 ( on ) value1v ( 0 0 0 0 ) string1 ( "" ) enable2 ( on ) name2 ( toSolid ) existing2 ( better ) createvarmap2 ( on ) varname2 ( "" ) class2 ( point ) savetoinfo2 ( off ) type2 ( vector ) typeinfo2 ( guess ) precision2 ( 32 ) size2 ( 1 ) default2v ( 0 0 0 0 ) writevalues2 ( on ) uselocal2 ( on ) value2v ( 0 0 0 0 ) string2 ( "" )
chlock attributeCreate_toSolid -*
chautoscope attributeCreate_toSolid -*
opcolor -c 0.80000001192092896 0.80000001192092896 0.80000001192092896 attributeCreate_toSolid
opset -d off -r off -h off -f off -y off -t off -l off -s off -u off -c off -e on -b off attributeCreate_toSolid
opexprlanguage -s hscript attributeCreate_toSolid
opuserdata -n '___Version___' -v '15.0.416' attributeCreate_toSolid

# Node attributeCreate_originalPoint (Sop/attribcreate::2.0)
opadd -e -n attribcreate::2.0 attributeCreate_originalPoint
oplocate -x -1.16852 -y -3.3805900000000002 attributeCreate_originalPoint
opspareds "" attributeCreate_originalPoint
opparm attributeCreate_originalPoint  numattr ( 1 )
chblockbegin
chadd -t 0 0 attributeCreate_originalPoint value1v1
chkey -t 0 -v 0 -m 0 -a 0 -A 0 -T a  -F '$TX' attributeCreate_originalPoint/value1v1
chadd -t 0 0 attributeCreate_originalPoint value1v2
chkey -t 0 -v 0 -m 0 -a 0 -A 0 -T a  -F '$TY' attributeCreate_originalPoint/value1v2
chadd -t 0 0 attributeCreate_originalPoint value1v3
chkey -t 0 -v 0 -m 0 -a 0 -A 0 -T a  -F '$TZ' attributeCreate_originalPoint/value1v3
chblockend
opparm -V 15.0.416 attributeCreate_originalPoint group ( "" ) grouptype ( guess ) numattr ( 1 ) enable1 ( on ) name1 ( originalPoint ) existing1 ( better ) createvarmap1 ( on ) varname1 ( "" ) class1 ( point ) savetoinfo1 ( off ) type1 ( vector ) typeinfo1 ( guess ) precision1 ( 32 ) size1 ( 1 ) default1v ( 0 0 0 0 ) writevalues1 ( on ) uselocal1 ( on ) value1v ( value1v1 value1v2 value1v3 0 ) string1 ( "" )
chlock attributeCreate_originalPoint -*
chautoscope attributeCreate_originalPoint -*
opcolor -c 0.80000001192092896 0.80000001192092896 0.80000001192092896 attributeCreate_originalPoint
opset -d off -r off -h off -f off -y off -t off -l off -s off -u off -c off -e on -b off attributeCreate_originalPoint
opexprlanguage -s hscript attributeCreate_originalPoint
opuserdata -n '___Version___' -v '15.0.416' attributeCreate_originalPoint

# Node switch_gravity (Sop/switch)
opadd -e -n switch switch_gravity
oplocate -x 20.8292 -y 0.018778300000000001 switch_gravity
opspareds "" switch_gravity
chblockbegin
chadd -t 0 0 switch_gravity input
chkey -t 0 -v 0 -m 0 -a 0 -A 0 -T a  -F 'ch("../controls/gravityon")' switch_gravity/input
chblockend
opparm -V 15.0.416 switch_gravity input ( input )
chlock switch_gravity -*
chautoscope switch_gravity -*
opcolor -c 0 0.2669999897480011 0 switch_gravity
opset -d off -r off -h off -f off -y off -t off -l off -s off -u off -c off -e on -b off switch_gravity
opexprlanguage -s hscript switch_gravity
opuserdata -n '___Version___' -v '15.0.416' switch_gravity

# Node switch_buoyancy (Sop/switch)
opadd -e -n switch switch_buoyancy
oplocate -x 13.023899999999999 -y -0.58428000000000002 switch_buoyancy
opspareds "" switch_buoyancy
chblockbegin
chadd -t 0 0 switch_buoyancy input
chkey -t 0 -v 0 -m 0 -a 0 -A 0 -T a  -F 'ch("../controls/gravityon") && ch("../controls/buoyancyon")' switch_buoyancy/input
chblockend
opparm -V 15.0.416 switch_buoyancy input ( input )
chlock switch_buoyancy -*
chautoscope switch_buoyancy -*
opcolor -c 0 0.2669999897480011 0 switch_buoyancy
opset -d off -r off -h off -f off -y off -t off -l off -s off -u off -c off -e on -b off switch_buoyancy
opexprlanguage -s hscript switch_buoyancy
opuserdata -n '___Version___' -v '15.0.416' switch_buoyancy

# Node switch_surfaceTension (Sop/switch)
opadd -e -n switch switch_surfaceTension
oplocate -x 13.023899999999999 -y -1.9875499999999999 switch_surfaceTension
opspareds "" switch_surfaceTension
chblockbegin
chadd -t 0 0 switch_surfaceTension input
chkey -t 0 -v 0 -m 0 -a 0 -A 0 -T a  -F 'ch("../controls/surfacetensionon")' switch_surfaceTension/input
chblockend
opparm -V 15.0.416 switch_surfaceTension input ( input )
chlock switch_surfaceTension -*
chautoscope switch_surfaceTension -*
opcolor -c 0 0.2669999897480011 0 switch_surfaceTension
opset -d off -r off -h off -f off -y off -t off -l off -s off -u off -c off -e on -b off switch_surfaceTension
opexprlanguage -s hscript switch_surfaceTension
opuserdata -n '___Version___' -v '15.0.416' switch_surfaceTension

# Node switch_solidStronInteraction (Sop/switch)
opadd -e -n switch switch_solidStronInteraction
oplocate -x -0.18044471740722656 -y -14.608467102050781 switch_solidStronInteraction
opspareds "" switch_solidStronInteraction
chblockbegin
chadd -t 0 0 switch_solidStronInteraction input
chkey -t 0 -v 0 -m 0 -a 0 -A 0 -T a  -F 'ch("../controls/solidstronginteractionon")' switch_solidStronInteraction/input
chblockend
opparm -V 15.0.416 switch_solidStronInteraction input ( input )
chlock switch_solidStronInteraction -*
chautoscope switch_solidStronInteraction -*
opcolor -c 0 0.2669999897480011 0 switch_solidStronInteraction
opset -d off -r off -h off -f off -y off -t off -l off -s off -u off -c off -e on -b off switch_solidStronInteraction
opexprlanguage -s hscript switch_solidStronInteraction
opuserdata -n '___Version___' -v '15.0.416' switch_solidStronInteraction

# Node switch_solidAttraction (Sop/switch)
opadd -e -n switch switch_solidAttraction
oplocate -x -0.18044471740722656 -y -16.391881942749023 switch_solidAttraction
opspareds "" switch_solidAttraction
chblockbegin
chadd -t 0 0 switch_solidAttraction input
chkey -t 0 -v 0 -m 0 -a 0 -A 0 -T a  -F 'ch("../controls/solidattractionon")' switch_solidAttraction/input
chblockend
opparm -V 15.0.416 switch_solidAttraction input ( input )
chlock switch_solidAttraction -*
chautoscope switch_solidAttraction -*
opcolor -c 0 0.2669999897480011 0 switch_solidAttraction
opset -d off -r off -h off -f off -y off -t off -l off -s off -u off -c off -e on -b off switch_solidAttraction
opexprlanguage -s hscript switch_solidAttraction
opuserdata -n '___Version___' -v '15.0.416' switch_solidAttraction

# Node switch_strongInteraction (Sop/switch)
opadd -e -n switch switch_strongInteraction
oplocate -x 13.2239 -y 5.8136299999999999 switch_strongInteraction
opspareds "" switch_strongInteraction
chblockbegin
chadd -t 0 0 switch_strongInteraction input
chkey -t 0 -v 0 -m 0 -a 0 -A 0 -T a  -F 'ch("../controls/stronginteractionon")' switch_strongInteraction/input
chblockend
opparm -V 15.0.416 switch_strongInteraction input ( input )
chlock switch_strongInteraction -*
chautoscope switch_strongInteraction -*
opcolor -c 0 0.2669999897480011 0 switch_strongInteraction
opset -d off -r off -h off -f off -y off -t off -l off -s off -u off -c off -e on -b off switch_strongInteraction
opexprlanguage -s hscript switch_strongInteraction
opuserdata -n '___Version___' -v '15.0.416' switch_strongInteraction

# Node switch_weakInteraction (Sop/switch)
opadd -e -n switch switch_weakInteraction
oplocate -x 13.2239 -y 4.6175600000000001 switch_weakInteraction
opspareds "" switch_weakInteraction
chblockbegin
chadd -t 0 0 switch_weakInteraction input
chkey -t 0 -v 0 -m 0 -a 0 -A 0 -T a  -F 'ch("../controls/weakinteractionon")' switch_weakInteraction/input
chblockend
opparm -V 15.0.416 switch_weakInteraction input ( input )
chlock switch_weakInteraction -*
chautoscope switch_weakInteraction -*
opcolor -c 0 0.2669999897480011 0 switch_weakInteraction
opset -d off -r off -h off -f off -y off -t off -l off -s off -u off -c off -e on -b off switch_weakInteraction
opexprlanguage -s hscript switch_weakInteraction
opuserdata -n '___Version___' -v '15.0.416' switch_weakInteraction

# Node switch_damping (Sop/switch)
opadd -e -n switch switch_damping
oplocate -x 20.8292 -y -1.37374 switch_damping
opspareds "" switch_damping
chblockbegin
chadd -t 0 0 switch_damping input
chkey -t 0 -v 0 -m 0 -a 0 -A 0 -T a  -F 'ch("../controls/dampingon")' switch_damping/input
chblockend
opparm -V 15.0.416 switch_damping input ( input )
chlock switch_damping -*
chautoscope switch_damping -*
opcolor -c 0 0.2669999897480011 0 switch_damping
opset -d off -r off -h off -f off -y off -t off -l off -s off -u off -c off -e on -b off switch_damping
opexprlanguage -s hscript switch_damping
opuserdata -n '___Version___' -v '15.0.416' switch_damping

# Node switch_generalScale (Sop/switch)
opadd -e -n switch switch_generalScale
oplocate -x 20.8292 -y 1.4201999999999999 switch_generalScale
opspareds "" switch_generalScale
chblockbegin
chadd -t 0 0 switch_generalScale input
chkey -t 0 -v 0 -m 0 -a 0 -A 0 -T a  -F 'ch("../controls/generalscaleon")' switch_generalScale/input
chblockend
opparm -V 15.0.416 switch_generalScale input ( input )
chlock switch_generalScale -*
chautoscope switch_generalScale -*
opcolor -c 0 0.2669999897480011 0 switch_generalScale
opset -d off -r off -h off -f off -y off -t off -l off -s off -u off -c off -e on -b off switch_generalScale
opexprlanguage -s hscript switch_generalScale
opuserdata -n '___Version___' -v '15.0.416' switch_generalScale

# Node switch_solid (Sop/switch)
opadd -e -n switch switch_solid
oplocate -x -1.9701251983642578 -y -17.39457893371582 switch_solid
opspareds "" switch_solid
chblockbegin
chadd -t 0 0 switch_solid input
chkey -t 0 -v 1 -m 0 -a 0 -A 0 -T a  -F 'ch("../controls/solidcollision")' switch_solid/input
chblockend
opparm -V 15.0.416 switch_solid input ( input )
chlock switch_solid -*
chautoscope switch_solid -*
opcolor -c 0 0.2669999897480011 0 switch_solid
opset -d off -r off -h off -f off -y off -t off -l off -s off -u off -c off -e on -b off switch_solid
opexprlanguage -s hscript switch_solid
opuserdata -n '___Version___' -v '15.0.416' switch_solid

# Node attributeCreate_solidDistance (Sop/attribcreate::2.0)
opadd -e -n attribcreate::2.0 attributeCreate_solidDistance
oplocate -x -0.97497367858886719 -y -7.7612514495849609 attributeCreate_solidDistance
opspareds "" attributeCreate_solidDistance
opparm attributeCreate_solidDistance  numattr ( 1 )
opparm -V 15.0.416 attributeCreate_solidDistance group ( "" ) grouptype ( guess ) numattr ( 1 ) enable1 ( on ) name1 ( solidDistance ) existing1 ( better ) createvarmap1 ( on ) varname1 ( "" ) class1 ( point ) savetoinfo1 ( off ) type1 ( float ) typeinfo1 ( guess ) precision1 ( 32 ) size1 ( 1 ) default1v ( 0 0 0 0 ) writevalues1 ( on ) uselocal1 ( on ) value1v ( 0 0 0 0 ) string1 ( "" )
chlock attributeCreate_solidDistance -*
chautoscope attributeCreate_solidDistance -*
opcolor -c 0.80000001192092896 0.80000001192092896 0.80000001192092896 attributeCreate_solidDistance
opset -d off -r off -h off -f off -y off -t off -l off -s off -u off -c off -e on -b off attributeCreate_solidDistance
opexprlanguage -s hscript attributeCreate_solidDistance
opuserdata -n '___Version___' -v '15.0.416' attributeCreate_solidDistance

# Node group_outside (Sop/group)
opadd -e -n group group_outside
oplocate -x -0.97497367858886719 -y -8.9801082611083984 group_outside
opspareds "" group_outside
chblockbegin
chadd -t 0 0 group_outside filter
chkey -t 0 -v 1 -m 0 -a 0 -A 0 -T a  -F '$OUTSIDE > 0.0' group_outside/filter
chadd -t 0 0 group_outside rangeend
chkey -t 0 -v 0 -m 0 -a 0 -A 0 -T a  -F '$N' group_outside/rangeend
chblockend
opparm -V 15.0.416 group_outside group ( "" ) stdswitcher ( 0 0 0 ) docreategrp ( on ) crname ( outside ) entity ( point ) geotype ( all ) mergeop ( replace ) switcher2 ( 0 0 0 0 ) groupnumber ( on ) ordered ( off ) groupop ( grpexpression ) filter ( filter ) pattern ( "" ) range ( 0 rangeend ) select ( 1 2 ) groupbounding ( off ) boundtype ( usebbox ) size ( 1 1 1 ) t ( 0 0 0 ) iso ( 0 ) invertvolume ( off ) includenotwhollycontained ( off ) groupnormal ( off ) dir ( 0 0 1 ) angle ( 180 ) camerapath ( "" ) nonplanar ( off ) nonplanartol ( 0.001 ) groupedges ( off ) dominedgeangle ( off ) minedgeangle ( 20 ) domaxedgeangle ( off ) maxedgeangle ( 20 ) edgeanglebetweenedges ( off ) dominedgelen ( off ) minedgelen ( 0 ) domaxedgelen ( off ) maxedgelen ( 0 ) dodepth ( off ) edgestep ( 0 ) edgeptgrp ( 0 ) unshared ( off ) boundarygroups ( off ) combineentity ( guess ) grpequal ( "" ) not1 ( off ) grp1 ( "" ) op1 ( sub ) not2 ( off ) grp2 ( "" ) op2 ( sub ) not3 ( off ) grp3 ( "" ) op3 ( sub ) not4 ( off ) grp4 ( "" ) switcher3 ( 0 0 0 ) oldname ( "" ) newname ( "" ) cnvfromtype ( primgroup ) cnvtotype ( ptgroup ) convertg ( "" ) cnvtname ( "" ) preserve ( off ) primswithallpts ( off ) destroyname ( "" ) type ( 1 )
chlock group_outside -*
chautoscope group_outside -*
opcolor -c 0.80000001192092896 0.80000001192092896 0.80000001192092896 group_outside
opset -d off -r off -h on -f off -y off -t off -l off -s off -u off -c off -e on -b off group_outside
opexprlanguage -s hscript group_outside
opuserdata -n '___Version___' -v '15.0.416' group_outside

# Node group_contactSolidUpdate (Sop/group)
opadd -e -n group group_contactSolidUpdate
oplocate -x -1.00396728515625 -y -11.283956527709961 group_contactSolidUpdate
opspareds "" group_contactSolidUpdate
chblockbegin
chadd -t 0 0 group_contactSolidUpdate filter
chkey -t 0 -v 1 -m 0 -a 0 -A 0 -T a  -F '$SOLIDDISTANCE > $RADIUS' group_contactSolidUpdate/filter
chadd -t 0 0 group_contactSolidUpdate rangeend
chkey -t 0 -v 0 -m 0 -a 0 -A 0 -T a  -F '$N' group_contactSolidUpdate/rangeend
chblockend
opparm -V 15.0.416 group_contactSolidUpdate group ( "" ) stdswitcher ( 0 0 0 ) docreategrp ( on ) crname ( contactSolid ) entity ( point ) geotype ( all ) mergeop ( subtract ) switcher2 ( 0 0 0 0 ) groupnumber ( on ) ordered ( off ) groupop ( grpexpression ) filter ( filter ) pattern ( "" ) range ( 0 rangeend ) select ( 1 2 ) groupbounding ( off ) boundtype ( usebbox ) size ( 1 1 1 ) t ( 0 0 0 ) iso ( 0 ) invertvolume ( off ) includenotwhollycontained ( off ) groupnormal ( off ) dir ( 0 0 1 ) angle ( 180 ) camerapath ( "" ) nonplanar ( off ) nonplanartol ( 0.001 ) groupedges ( off ) dominedgeangle ( off ) minedgeangle ( 20 ) domaxedgeangle ( off ) maxedgeangle ( 20 ) edgeanglebetweenedges ( off ) dominedgelen ( off ) minedgelen ( 0 ) domaxedgelen ( off ) maxedgelen ( 0 ) dodepth ( off ) edgestep ( 0 ) edgeptgrp ( 0 ) unshared ( off ) boundarygroups ( off ) combineentity ( guess ) grpequal ( "" ) not1 ( off ) grp1 ( "" ) op1 ( none ) not2 ( off ) grp2 ( "" ) op2 ( none ) not3 ( off ) grp3 ( "" ) op3 ( none ) not4 ( off ) grp4 ( "" ) switcher3 ( 0 0 0 ) oldname ( "" ) newname ( "" ) cnvfromtype ( primgroup ) cnvtotype ( ptgroup ) convertg ( "" ) cnvtname ( "" ) preserve ( off ) primswithallpts ( off ) destroyname ( "" ) type ( 1 )
chlock group_contactSolidUpdate -*
chautoscope group_contactSolidUpdate -*
opcolor -c 0.80000001192092896 0.80000001192092896 0.80000001192092896 group_contactSolidUpdate
opset -d off -r off -h on -f off -y off -t off -l off -s off -u off -c off -e on -b off group_contactSolidUpdate
opexprlanguage -s hscript group_contactSolidUpdate
opuserdata -n '___Version___' -v '15.0.416' group_contactSolidUpdate

# Node group_contactSolid (Sop/group)
opadd -e -n group group_contactSolid
oplocate -x -0.98463821411132812 -y -10.589366912841797 group_contactSolid
opspareds "" group_contactSolid
chblockbegin
chadd -t 0 0 group_contactSolid rangeend
chkey -t 0 -v 0 -m 0 -a 0 -A 0 -T a  -F '$N' group_contactSolid/rangeend
chblockend
opparm -V 15.0.416 group_contactSolid group ( "" ) stdswitcher ( 1 1 1 ) docreategrp ( on ) crname ( contactSolid ) entity ( point ) geotype ( all ) mergeop ( replace ) switcher2 ( 0 0 0 0 ) groupnumber ( on ) ordered ( off ) groupop ( grpexpression ) filter ( 1 ) pattern ( "" ) range ( 0 rangeend ) select ( 1 2 ) groupbounding ( off ) boundtype ( usebbox ) size ( 1 1 1 ) t ( 0 0 0 ) iso ( 0 ) invertvolume ( off ) includenotwhollycontained ( off ) groupnormal ( off ) dir ( 0 0 1 ) angle ( 180 ) camerapath ( "" ) nonplanar ( off ) nonplanartol ( 0.001 ) groupedges ( off ) dominedgeangle ( off ) minedgeangle ( 20 ) domaxedgeangle ( off ) maxedgeangle ( 20 ) edgeanglebetweenedges ( off ) dominedgelen ( off ) minedgelen ( 0 ) domaxedgelen ( off ) maxedgelen ( 0 ) dodepth ( off ) edgestep ( 0 ) edgeptgrp ( 0 ) unshared ( off ) boundarygroups ( off ) combineentity ( guess ) grpequal ( contactSolid ) not1 ( off ) grp1 ( closeSolid ) op1 ( none ) not2 ( off ) grp2 ( "" ) op2 ( none ) not3 ( off ) grp3 ( "" ) op3 ( none ) not4 ( off ) grp4 ( "" ) switcher3 ( 0 0 0 ) oldname ( "" ) newname ( "" ) cnvfromtype ( primgroup ) cnvtotype ( ptgroup ) convertg ( "" ) cnvtname ( "" ) preserve ( off ) primswithallpts ( off ) destroyname ( "" ) type ( 1 )
chlock group_contactSolid -*
chautoscope group_contactSolid -*
opcolor -c 0.80000001192092896 0.80000001192092896 0.80000001192092896 group_contactSolid
opset -d off -r off -h on -f off -y off -t off -l off -s off -u off -c off -e on -b off group_contactSolid
opexprlanguage -s hscript group_contactSolid
opuserdata -n '___Version___' -v '15.0.416' group_contactSolid

# Node group_closeSolidUpdate (Sop/group)
opadd -e -n group group_closeSolidUpdate
oplocate -x -0.97497367858886719 -y -9.7817707061767578 group_closeSolidUpdate
opspareds "" group_closeSolidUpdate
chblockbegin
chadd -t 0 0 group_closeSolidUpdate rangeend
chkey -t 0 -v 0 -m 0 -a 0 -A 0 -T a  -F '$N' group_closeSolidUpdate/rangeend
chblockend
opparm -V 15.0.416 group_closeSolidUpdate group ( "" ) stdswitcher ( 1 1 1 ) docreategrp ( on ) crname ( contactSolid ) entity ( point ) geotype ( all ) mergeop ( replace ) switcher2 ( 0 0 0 0 ) groupnumber ( on ) ordered ( off ) groupop ( grpexpression ) filter ( 1 ) pattern ( "" ) range ( 0 rangeend ) select ( 1 2 ) groupbounding ( off ) boundtype ( usebbox ) size ( 1 1 1 ) t ( 0 0 0 ) iso ( 0 ) invertvolume ( off ) includenotwhollycontained ( off ) groupnormal ( off ) dir ( 0 0 1 ) angle ( 180 ) camerapath ( "" ) nonplanar ( off ) nonplanartol ( 0.001 ) groupedges ( off ) dominedgeangle ( off ) minedgeangle ( 20 ) domaxedgeangle ( off ) maxedgeangle ( 20 ) edgeanglebetweenedges ( off ) dominedgelen ( off ) minedgelen ( 0 ) domaxedgelen ( off ) maxedgelen ( 0 ) dodepth ( off ) edgestep ( 0 ) edgeptgrp ( 0 ) unshared ( off ) boundarygroups ( off ) combineentity ( guess ) grpequal ( contactSolid ) not1 ( off ) grp1 ( contactSolid ) op1 ( sub ) not2 ( off ) grp2 ( outside ) op2 ( none ) not3 ( off ) grp3 ( "" ) op3 ( none ) not4 ( off ) grp4 ( "" ) switcher3 ( 0 0 0 ) oldname ( "" ) newname ( "" ) cnvfromtype ( primgroup ) cnvtotype ( ptgroup ) convertg ( "" ) cnvtname ( "" ) preserve ( off ) primswithallpts ( off ) destroyname ( "" ) type ( 1 )
chlock group_closeSolidUpdate -*
chautoscope group_closeSolidUpdate -*
opcolor -c 0.80000001192092896 0.80000001192092896 0.80000001192092896 group_closeSolidUpdate
opset -d off -r off -h on -f off -y off -t off -l off -s off -u off -c off -e on -b off group_closeSolidUpdate
opexprlanguage -s hscript group_closeSolidUpdate
opuserdata -n '___Version___' -v '15.0.416' group_closeSolidUpdate

# Node point_containerN (Sop/point)
opadd -e -n point point_containerN
oplocate -x -0.97497391700744629 -y -5.182438850402832 point_containerN
opspareds "" point_containerN
opparm point_containerN  numcustom ( 1 )
chblockbegin
chadd -t 0 0 point_containerN tx
chkey -t 0 -v 0 -m 0 -a 0 -A 0 -T a  -F @P.x point_containerN/tx
chadd -t 0 0 point_containerN ty
chkey -t 0 -v 0 -m 0 -a 0 -A 0 -T a  -F @P.y point_containerN/ty
chadd -t 0 0 point_containerN tz
chkey -t 0 -v 0 -m 0 -a 0 -A 0 -T a  -F @P.z point_containerN/tz
chadd -t 0 0 point_containerN weight
chkey -t 0 -v 1 -m 0 -a 0 -A 0 -T a  -F @P.w point_containerN/weight
chadd -t 0 0 point_containerN diffr
chkey -t 0 -v 1 -m 0 -a 0 -A 0 -T a  -F @Cd.r point_containerN/diffr
chadd -t 0 0 point_containerN diffg
chkey -t 0 -v 1 -m 0 -a 0 -A 0 -T a  -F @Cd.g point_containerN/diffg
chadd -t 0 0 point_containerN diffb
chkey -t 0 -v 1 -m 0 -a 0 -A 0 -T a  -F @Cd.b point_containerN/diffb
chadd -t 0 0 point_containerN alpha
chkey -t 0 -v 1 -m 0 -a 0 -A 0 -T a  -F @Alpha point_containerN/alpha
chadd -t 0 0 point_containerN nx
chkey -t 0 -v 0 -m 0 -a 0 -A 0 -T a  -F @N.x point_containerN/nx
chadd -t 0 0 point_containerN ny
chkey -t 0 -v 0 -m 0 -a 0 -A 0 -T a  -F @N.y point_containerN/ny
chadd -t 0 0 point_containerN nz
chkey -t 0 -v 0 -m 0 -a 0 -A 0 -T a  -F @N.z point_containerN/nz
chadd -t 0 0 point_containerN mapu
chkey -t 0 -v 0 -m 0 -a 0 -A 0 -T a  -F @uv.x point_containerN/mapu
chadd -t 0 0 point_containerN mapv
chkey -t 0 -v 0 -m 0 -a 0 -A 0 -T a  -F @uv.y point_containerN/mapv
chadd -t 0 0 point_containerN mapw
chkey -t 0 -v 0 -m 0 -a 0 -A 0 -T a  -F @uv.z point_containerN/mapw
chadd -t 0 0 point_containerN tension
chkey -t 0 -v 1 -m 0 -a 0 -A 0 -T a  -F @tension point_containerN/tension
chadd -t 0 0 point_containerN springk
chkey -t 0 -v 30 -m 0 -a 0 -A 0 -T a  -F @springk point_containerN/springk
chadd -t 0 0 point_containerN vx
chkey -t 0 -v 0 -m 0 -a 0 -A 0 -T a  -F @v.x point_containerN/vx
chadd -t 0 0 point_containerN vy
chkey -t 0 -v 0 -m 0 -a 0 -A 0 -T a  -F @v.y point_containerN/vy
chadd -t 0 0 point_containerN vz
chkey -t 0 -v 0 -m 0 -a 0 -A 0 -T a  -F @v.z point_containerN/vz
chadd -t 0 0 point_containerN upx
chkey -t 0 -v 0 -m 0 -a 0 -A 0 -T a  -F @up.x point_containerN/upx
chadd -t 0 0 point_containerN upy
chkey -t 0 -v 0 -m 0 -a 0 -A 0 -T a  -F @up.y point_containerN/upy
chadd -t 0 0 point_containerN upz
chkey -t 0 -v 0 -m 0 -a 0 -A 0 -T a  -F @up.z point_containerN/upz
chadd -t 0 0 point_containerN pscale
chkey -t 0 -v 1 -m 0 -a 0 -A 0 -T a  -F @pscale point_containerN/pscale
chadd -t 0 0 point_containerN val1i1
chkey -t 0 -v 0 -m 0 -a 0 -A 0 -T a  -F '$NX2' point_containerN/val1i1
chadd -t 0 0 point_containerN val1i2
chkey -t 0 -v 0 -m 0 -a 0 -A 0 -T a  -F '$NY2' point_containerN/val1i2
chadd -t 0 0 point_containerN val1i3
chkey -t 0 -v 0 -m 0 -a 0 -A 0 -T a  -F '$NZ2' point_containerN/val1i3
chblockend
opparm -V 15.0.416 point_containerN group ( "" ) matchbyattribute ( off ) attributetomatch ( id ) stdswitcher ( 3 3 3 3 ) t ( tx ty tz ) doweight ( off ) weight ( weight ) doclr ( off ) diff ( diffr diffg diffb ) doalpha ( off ) alpha ( alpha ) donml ( off ) n ( nx ny nz ) douvw ( off ) map ( mapu mapv mapw ) domass ( off ) mass ( 1 ) drag ( 1 ) dotension ( off ) tension ( tension ) dospringk ( off ) springk ( springk ) dovel ( off ) v ( vx vy vz ) doup ( off ) up ( upx upy upz ) dopscale ( off ) pscale ( pscale ) doinstance ( off ) instancepath ( "" ) doradius ( off ) radiusf ( 1 ) doscale ( off ) scalef ( 1 ) doradialf ( off ) radialf ( 0 ) donormalf ( off ) normalf ( 0 ) doedgef ( off ) edgef ( 0 ) dodirf ( off ) dirf ( 0 0 0 ) numcustom ( 1 ) apply1 ( on ) name1 ( containerN ) val1i ( val1i1 val1i2 val1i3 0 ) sval1 ( "" )
chlock point_containerN -*
chautoscope point_containerN -*
opcolor -c 0.80000001192092896 0.80000001192092896 0.80000001192092896 point_containerN
opset -d off -r off -h off -f off -y off -t off -l off -s off -u off -c off -e on -b off point_containerN
opexprlanguage -s hscript point_containerN
opuserdata -n '___Version___' -v '15.0.416' point_containerN
oporder -e dopImport_previousFrame connectAdjacentPieces attributeWrangle_orientForce attributeWrangle_strongInteraction attributeWrangle_restlength attributeWrangle_link attributeWrangle_weakInteraction attributeWrangle_lengthWeak attributeWrangle_inLiquid attributeWrangle_inAir attributeWrangle_buoyancy attributeWrangle_surfaceTension color_strongInteraction color_weakInteraction attributeWrangle_onSurfaceForces attributeWrangle_inLiquidForces attributeWrangle_inAirForces attributeWrangle_deletePreviousForces attributeWrangle_gravity attributeWrangle_damping OUT attributePromote_Pi attributePromote_Pj attributeCreate_sign attributePromote_strongInteractionToVertex attributePromote_strongInteractionUpToPoint delete_allPrimitives attributePromote_Ri attributePromote_Rj delete_nonRelevant attributesCreate_mutiple group_weakInteraction tetrahedralize_connectNeighbours group_strongInteraction attributePromote_weakInteractionToVertex attributePromote_weakInteractionUpToPoint attributeDelete_vertexAttributes attributePromote_minLinkLength attributePromote_selectedMinLength delete_nonInteraction group_weakInteractionUpdate2 group_strongInteractionUpdate group_weakInteractionUpdate objectMerge_liquidSurface ray_inLiquid ray_inAir attributeDelete_vertexAttributes2 ray_liquidToBubbles transform1 group_onSurface sphere1 copy1 ray_onSurface group_updateOnSurface attributeCreate_dist group_updateInAir group_updateInLiquid group_delete attributeCreate_multiple3 attributeWrangle_displacedVolumeSurface attributeWrangle_displacedVolumeLiquid controls objectMerge_container ray_onSurfaceToSolid ray_FromContainerToSpheres group_closeSolid attribute_idToPointId attributeCreate_pointIdLocal attributeWrangle_distNull attributeWrangle_solidAttraction point_pointId point_toSolid attributeCreate_toSolid attributeCreate_originalPoint attributeWrangle_toSolid attributeWrangle_solidStrongInteraction switch_gravity switch_buoyancy switch_surfaceTension switch_solidStronInteraction switch_solidAttraction switch_strongInteraction switch_weakInteraction switch_damping switch_generalScale attributeWrangle_generalScale switch_solid attributeCreate_solidDistance attributeWrangle_solidDistance group_outside group_contactSolidUpdate group_contactSolid pointWrangle_projectToSolid group_closeSolidUpdate point_containerN 
opcf ..

# Node numbers (Object/geo)
opadd -e -n geo numbers
oplocate -x 9.4371070861816406 -y 9.0206890106201172 numbers
opspareds '    group { 	name	"stdswitcher5" 	label	"Transform"  	parm { 	    name	"keeppos" 	    baseparm 	    label	"Keep Position When Parenting" 	    export	none 	} 	parm { 	    name	"childcomp" 	    baseparm 	    label	"Child Compensation" 	    export	none 	} 	parm { 	    name	"pre_xform" 	    baseparm 	    label	"Pre-transform" 	    export	none 	} 	parm { 	    name	"xOrd" 	    baseparm 	    label	"Transform Order" 	    joinnext 	    export	none 	} 	parm { 	    name	"rOrd" 	    baseparm 	    label	"Rotate Order" 	    export	none 	} 	parm { 	    name	"t" 	    baseparm 	    label	"Translate" 	    export	all 	} 	parm { 	    name	"r" 	    baseparm 	    label	"Rotate" 	    export	all 	} 	parm { 	    name	"s" 	    baseparm 	    label	"Scale" 	    export	none 	} 	parm { 	    name	"p" 	    baseparm 	    label	"Pivot" 	    export	none 	} 	parm { 	    name	"scale" 	    baseparm 	    label	"Uniform Scale" 	    export	none 	} 	parm { 	    name	"lookatpath" 	    baseparm 	    label	"Look At" 	    export	none 	} 	parm { 	    name	"lookupobjpath" 	    baseparm 	    label	"Look Up Object" 	    export	none 	} 	parm { 	    name	"lookup" 	    baseparm 	    label	"Look At Up Vector" 	    export	none 	} 	parm { 	    name	"pathobjpath" 	    baseparm 	    label	"Path Object" 	    export	none 	} 	parm { 	    name	"roll" 	    baseparm 	    label	"Roll" 	    export	none 	} 	parm { 	    name	"pos" 	    baseparm 	    label	"Position" 	    export	none 	} 	parm { 	    name	"uparmtype" 	    baseparm 	    label	"Parameterization" 	    export	none 	} 	parm { 	    name	"pathorient" 	    baseparm 	    label	"Orient Along Path" 	    export	none 	} 	parm { 	    name	"up" 	    baseparm 	    label	"Orient Up Vector" 	    export	none 	} 	parm { 	    name	"bank" 	    baseparm 	    label	"Auto-Bank factor" 	    export	none 	}     }      group { 	name	"stdswitcher5_1" 	label	"Material"  	parm { 	    name	"shop_materialpath" 	    baseparm 	    label	"Material" 	    joinnext 	    export	none 	} 	parm { 	    name	"shop_materialopts" 	    baseparm 	    label	"Options" 	    export	none 	}     }      group { 	name	"stdswitcher5_2" 	label	"Render"  	parm { 	    name	"tdisplay" 	    baseparm 	    label	"Display" 	    joinnext 	    export	none 	} 	parm { 	    name	"display" 	    baseparm 	    label	"Display" 	    export	none 	} 	parm { 	    name	"viewportlod" 	    label	"Display As" 	    type	ordinal 	    default	{ "full" } 	    help	"Choose how the object\'s geometry should be rendered in the viewport" 	    menu	{ 		"full"	"Full Geometry" 		"points"	"Point Cloud" 		"box"	"Bounding Box" 		"centroid"	"Centroid" 		"hidden"	"Hidden" 		"subd"	"Subdivision Surface / Curves" 	    } 	    range	{ 0 1 } 	    export	none 	    parmtag	{ "spare_category" "Render" } 	} 	parm { 	    name	"vm_rendervisibility" 	    label	"Render Visibility" 	    type	string 	    default	{ "*" } 	    menureplace	{ 		"*"	"Visible to all" 		"primary"	"Visible only to primary rays" 		"primary|shadow"	"Visible only to primary and shadow rays" 		"-primary"	"Invisible to primary rays (Phantom)" 		"-diffuse"	"Invisible to diffuse rays" 		"-diffuse&-reflect&-refract"	"Invisible to secondary rays" 		""	"Invisible (Unrenderable)" 	    } 	    range	{ 0 1 } 	    export	none 	    parmtag	{ "spare_category" "Render" } 	} 	parm { 	    name	"vm_rendersubd" 	    label	"Render Polygons As Subdivision (Mantra)" 	    type	toggle 	    default	{ "0" } 	    range	{ 0 1 } 	    export	none 	    parmtag	{ "spare_category" "Geometry" } 	} 	parm { 	    name	"vm_subdstyle" 	    label	"Subdivision Style" 	    type	string 	    default	{ "mantra_catclark" } 	    hidewhen	"{ vm_rendersubd == 0 }" 	    menu	{ 		"mantra_catclark"	"Mantra Catmull-Clark" 		"osd_catclark"	"OpenSubdiv Catmull-Clark" 	    } 	    range	{ 0 1 } 	    export	none 	    parmtag	{ "spare_category" "Geometry" } 	} 	parm { 	    name	"vm_subdgroup" 	    label	"Subdivision Group" 	    type	string 	    default	{ "" } 	    hidewhen	"{ vm_rendersubd == 0 }" 	    range	{ 0 1 } 	    export	none 	    parmtag	{ "spare_category" "Geometry" } 	} 	group { 	    name	"folder0" 	    label	"Shading"  	    parm { 		name	"categories" 		label	"Categories" 		type	string 		default	{ "" } 		help	"A list of tags which can be used to select the object" 		range	{ 0 1 } 		export	none 		parmtag	{ "spare_category" "Shading" } 	    } 	    parm { 		name	"reflectmask" 		label	"Reflection Mask" 		type	oplist 		default	{ "*" } 		help	"Objects that will be reflected on this object." 		range	{ 0 1 } 		export	none 		parmtag	{ "opexpand" "1" } 		parmtag	{ "opfilter" "!!OBJ/GEOMETRY!!" } 		parmtag	{ "oprelative" "/obj" } 		parmtag	{ "spare_category" "Shading" } 	    } 	    parm { 		name	"refractmask" 		label	"Refraction Mask" 		type	oplist 		default	{ "*" } 		help	"Objects that will be refracted on this object." 		range	{ 0 1 } 		export	none 		parmtag	{ "opexpand" "1" } 		parmtag	{ "opfilter" "!!OBJ/GEOMETRY!!" } 		parmtag	{ "oprelative" "/obj" } 		parmtag	{ "spare_category" "Shading" } 	    } 	    parm { 		name	"lightmask" 		label	"Light Mask" 		type	oplist 		default	{ "*" } 		help	"Lights that illuminate this object." 		range	{ 0 1 } 		export	none 		parmtag	{ "opexpand" "1" } 		parmtag	{ "opfilter" "!!OBJ/LIGHT!!" } 		parmtag	{ "oprelative" "/obj" } 		parmtag	{ "spare_category" "Shading" } 	    } 	    parm { 		name	"vm_volumefilter" 		label	"Volume Filter" 		type	string 		default	{ "box" } 		menu	{ 		    "box"	"Box Filter" 		    "gaussian"	"Gaussian" 		    "bartlett"	"Bartlett (triangle)" 		    "catrom"	"Catmull-Rom" 		    "hanning"	"Hanning" 		    "blackman"	"Blackman" 		    "sinc"	"Sinc (sharpening)" 		} 		range	{ 0 1 } 		export	none 		parmtag	{ "spare_category" "Shading" } 	    } 	    parm { 		name	"vm_volumefilterwidth" 		label	"Volume Filter Width" 		type	float 		default	{ "1" } 		range	{ 0.001 5 } 		export	none 		parmtag	{ "spare_category" "Shading" } 	    } 	    parm { 		name	"vm_matte" 		label	"Matte shading" 		type	toggle 		default	{ "0" } 		range	{ 0 1 } 		export	none 		parmtag	{ "spare_category" "Shading" } 	    } 	    parm { 		name	"vm_rayshade" 		label	"Raytrace Shading" 		type	toggle 		default	{ "0" } 		range	{ 0 1 } 		export	none 		parmtag	{ "spare_category" "Shading" } 	    } 	}  	group { 	    name	"folder0_1" 	    label	"Sampling"  	    parm { 		name	"geo_velocityblur" 		label	"Geometry Velocity Blur" 		type	toggle 		default	{ "0" } 		disablewhen	"{ allowmotionblur == 0 }" 		range	{ 0 1 } 		export	none 		parmtag	{ "spare_category" "Sampling" } 	    } 	}  	group { 	    name	"folder0_2" 	    label	"Dicing"  	    parm { 		name	"vm_shadingquality" 		label	"Shading Quality" 		type	float 		default	{ "1" } 		range	{ 0 10 } 		export	none 		parmtag	{ "spare_category" "Dicing" } 	    } 	    parm { 		name	"vm_flatness" 		label	"Dicing Flatness" 		type	float 		default	{ "0.05" } 		range	{ 0 1 } 		export	none 		parmtag	{ "spare_category" "Dicing" } 	    } 	    parm { 		name	"vm_raypredice" 		label	"Ray Predicing" 		type	integer 		default	{ "0" } 		menu	{ 		    "0"	"Disable Predicing" 		    "1"	"Full Predicing" 		    "2"	"Precompute Bounds" 		} 		range	{ 0 10 } 		export	none 		parmtag	{ "spare_category" "Dicing" } 	    } 	    parm { 		name	"vm_curvesurface" 		label	"Shade Curves As Surfaces" 		type	toggle 		default	{ "0" } 		range	{ 0 1 } 		export	none 		parmtag	{ "spare_category" "Dicing" } 	    } 	}  	group { 	    name	"folder0_3" 	    label	"Geometry"  	    parm { 		name	"vm_rmbackface" 		label	"Backface Removal" 		type	toggle 		default	{ "0" } 		range	{ 0 1 } 		export	none 		parmtag	{ "spare_category" "Geometry" } 	    } 	    parm { 		name	"shop_geometrypath" 		label	"Procedural Shader" 		type	oppath 		default	{ "" } 		range	{ 0 1 } 		export	none 		parmtag	{ "opfilter" "!!SHOP/GEOMETRY!!" } 		parmtag	{ "oprelative" "." } 		parmtag	{ "spare_category" "Geometry" } 	    } 	    parm { 		name	"vm_forcegeometry" 		label	"Force Procedural Geometry Output" 		type	toggle 		default	{ "1" } 		range	{ 0 1 } 		export	none 		parmtag	{ "spare_category" "Geometry" } 	    } 	    parm { 		name	"vm_rendersubdcurves" 		label	"Render Polygon Curves As Subdivision (Mantra)" 		type	toggle 		default	{ "0" } 		range	{ 0 1 } 		export	none 		parmtag	{ "spare_category" "Geometry" } 	    } 	    parm { 		name	"vm_renderpoints" 		label	"Render As Points (Mantra)" 		type	integer 		default	{ "2" } 		menu	{ 		    "0"	"No Point Rendering" 		    "1"	"Render Only Points" 		    "2"	"Render Unconnected Points" 		} 		range	{ 0 10 } 		export	none 		parmtag	{ "spare_category" "Geometry" } 	    } 	    parm { 		name	"vm_renderpointsas" 		label	"Render Points As (Mantra)" 		type	integer 		default	{ "0" } 		disablewhen	"{ vm_renderpoints == 0 }" 		menu	{ 		    "0"	"Spheres" 		    "1"	"Circles" 		} 		range	{ 0 10 } 		export	none 		parmtag	{ "spare_category" "Geometry" } 	    } 	    parm { 		name	"vm_usenforpoints" 		label	"Use N For Point Rendering" 		type	toggle 		default	{ "0" } 		disablewhen	"{ vm_renderpoints == 0 }" 		range	{ 0 1 } 		export	none 		parmtag	{ "spare_category" "Geometry" } 	    } 	    parm { 		name	"vm_pointscale" 		label	"Point Scale" 		type	float 		default	{ "1" } 		disablewhen	"{ vm_renderpoints == 0 }" 		range	{ 0! 10 } 		export	none 		parmtag	{ "spare_category" "Geometry" } 	    } 	    parm { 		name	"vm_pscalediameter" 		label	"Treat Point Scale as Diameter Instead of Radius" 		type	toggle 		default	{ "0" } 		range	{ 0 1 } 		export	none 		parmtag	{ "spare_category" "Geometry" } 	    } 	    parm { 		name	"vm_metavolume" 		label	"Metaballs as Volume" 		type	toggle 		default	{ "0" } 		range	{ 0 1 } 		export	none 		parmtag	{ "spare_category" "Geometry" } 	    } 	    parm { 		name	"vm_coving" 		label	"Coving" 		type	integer 		default	{ "1" } 		menu	{ 		    "0"	"Disable Coving" 		    "1"	"Coving for displacement/sub-d" 		    "2"	"Coving for all primitives" 		} 		range	{ 0 10 } 		export	none 		parmtag	{ "spare_category" "Geometry" } 	    } 	    parm { 		name	"vm_materialoverride" 		label	"Material Override" 		type	string 		default	{ "compact" } 		menu	{ 		    "none"	"Disabled" 		    "full"	"Evaluate for Each Primitve/Point" 		    "compact"	"Evaluate Once" 		} 		range	{ 0 1 } 		export	none 		parmtag	{ "spare_category" "Geometry" } 	    } 	    parm { 		name	"vm_computeN" 		label	"Automatically Compute Normals" 		type	toggle 		default	{ "1" } 		range	{ 0 1 } 		export	none 		parmtag	{ "spare_category" "Geometry" } 	    } 	    parm { 		name	"vm_overridedetail" 		label	"Ignore Geometry Attribute Shaders" 		type	toggle 		default	{ "0" } 		range	{ 0 1 } 		export	none 		parmtag	{ "spare_category" "Geometry" } 	    } 	}      }      group { 	name	"stdswitcher5_3" 	label	"Misc"  	parm { 	    name	"use_dcolor" 	    baseparm 	    label	"Set Wireframe Color" 	    export	none 	} 	parm { 	    name	"dcolor" 	    baseparm 	    label	"Wireframe Color" 	    export	none 	} 	parm { 	    name	"picking" 	    baseparm 	    label	"Viewport Selecting Enabled" 	    export	none 	} 	parm { 	    name	"pickscript" 	    baseparm 	    label	"Select Script" 	    export	none 	} 	parm { 	    name	"caching" 	    baseparm 	    label	"Cache Object Transform" 	    export	none 	} 	parm { 	    name	"vport_shadeopen" 	    baseparm 	    label	"Shade Open Curves In Viewport" 	    export	none 	} 	parm { 	    name	"vport_displayassubdiv" 	    baseparm 	    label	"Display as Subdivision in Viewport" 	    invisible 	    export	none 	} 	parm { 	    name	"vport_onionskin" 	    baseparm 	    label	"Onion Skinning" 	    export	none 	}     }  ' numbers
opset -S on numbers
opparm -V 15.0.416 numbers stdswitcher ( 0 0 0 0 ) keeppos ( off ) childcomp ( off ) pre_xform ( clean ) xOrd ( srt ) rOrd ( xyz ) t ( 0 0 0 ) r ( 0 0 0 ) s ( 1 1 1 ) p ( 0 0 0 ) scale ( 1 ) lookatpath ( "" ) lookupobjpath ( "" ) lookup ( on ) pathobjpath ( "" ) roll ( 0 ) pos ( 0 ) uparmtype ( arc ) pathorient ( 1 ) up ( 0 1 0 ) bank ( 0 ) shop_materialpath ( "" ) shop_materialopts ( override ) tdisplay ( off ) display ( 1 ) use_dcolor ( off ) dcolor ( 1 1 1 ) picking ( on ) pickscript ( "" ) caching ( off ) vport_shadeopen ( off ) vport_displayassubdiv ( off ) vport_onionskin ( off ) stdswitcher5 ( 0 0 0 0 ) viewportlod ( full ) vm_rendervisibility ( * ) vm_rendersubd ( off ) vm_subdstyle ( mantra_catclark ) vm_subdgroup ( "" ) folder0 ( 0 0 0 0 ) categories ( "" ) reflectmask ( * ) refractmask ( * ) lightmask ( * ) vm_volumefilter ( box ) vm_volumefilterwidth ( 1 ) vm_matte ( off ) vm_rayshade ( off ) geo_velocityblur ( off ) vm_shadingquality ( 1 ) vm_flatness ( 0.050000000000000003 ) vm_raypredice ( 0 ) vm_curvesurface ( off ) vm_rmbackface ( off ) shop_geometrypath ( "" ) vm_forcegeometry ( on ) vm_rendersubdcurves ( off ) vm_renderpoints ( 2 ) vm_renderpointsas ( 0 ) vm_usenforpoints ( off ) vm_pointscale ( 1 ) vm_pscalediameter ( off ) vm_metavolume ( off ) vm_coving ( 1 ) vm_materialoverride ( compact ) vm_computeN ( on ) vm_overridedetail ( off )
chlock numbers -*
chautoscope numbers -* +tx +ty +tz +rx +ry +rz +sx +sy +sz
opcolor -c 0.80000001192092896 0.80000001192092896 0.80000001192092896 numbers
opset -d off -r off -h off -f off -y off -t off -l off -s off -u off -c off -e on -b off -x off numbers
nbop Simulation add numbers
opexprlanguage -s hscript numbers
opuserdata -n '___Version___' -v '15.0.416' numbers
opcf numbers

# Node dopImport_previousFrame (Sop/dopimport)
opadd -e -n dopimport dopImport_previousFrame
oplocate -x -1.7750699999999999 -y 25.412700000000001 dopImport_previousFrame
opspareds "" dopImport_previousFrame
chblockbegin
chadd -t 0 0 dopImport_previousFrame integrateovertime
chkey -t 0 -v 0 -m 0 -a 0 -A 0 -T a  -F '1/$FPS' dopImport_previousFrame/integrateovertime
chblockend
opparm -V 15.0.416 dopImport_previousFrame doppath ( /obj/DOPNetwork ) objpattern ( '`stamps("..", "OBJID", arg(dopnodeobjs(".."),0))`' ) singleobject ( off ) importstyle ( fetch ) pivot ( centroid ) viewportlod ( full ) importbyname ( on ) objectnames ( dopobject ) geodatapath ( '`stamps("..", "DATANAME", chs("../datapath"))`' ) inverseop ( off ) doposxform ( on ) doxform ( on ) keepworldspacepos ( on ) centeratpivot ( on ) addname ( off ) adddopobjectname ( off ) adddopobjectid ( off ) addtoexistingvel ( on ) deleteabandoned ( on ) pointvels ( none ) integrateovertime ( integrateovertime ) donotsim ( on )
chlock dopImport_previousFrame -*
chautoscope dopImport_previousFrame -*
opcolor -c 0.80000001192092896 0.80000001192092896 0.80000001192092896 dopImport_previousFrame
opset -d on -r on -h off -f off -y off -t off -l off -s off -u off -c off -e on -b off dopImport_previousFrame
opexprlanguage -s hscript dopImport_previousFrame
opuserdata -n '___Version___' -v '15.0.416' dopImport_previousFrame

# Node delete_partOfThePoints (Sop/delete)
opadd -e -n delete delete_partOfThePoints
oplocate -x -0.77823100000000001 -y 24.022200000000002 delete_partOfThePoints
opspareds "" delete_partOfThePoints
chblockbegin
chadd -t 0 0 delete_partOfThePoints filter
chkey -t 0 -v 1 -m 0 -a 0 -A 0 -T a  -F 'rand($ID*0.2)>0.6' delete_partOfThePoints/filter
chadd -t 0 0 delete_partOfThePoints rangeend
chkey -t 0 -v 0 -m 0 -a 0 -A 0 -T a  -F '$N' delete_partOfThePoints/rangeend
chblockend
opparm -V 15.0.416 delete_partOfThePoints group ( "" ) negate ( dele ) entity ( point ) geotype ( all ) stdswitcher ( 0 0 0 0 ) affectnumber ( on ) groupop ( filter ) filter ( filter ) pattern ( !* ) range ( 0 rangeend ) select ( 1 2 ) affectvolume ( off ) boundtype ( usebbox ) size ( 1 1 1 ) t ( 0 0 0 ) affectnormal ( off ) dir ( 0 0 1 ) angle ( 180 ) camerapath ( "" ) affectdegenerate ( off ) degenerate ( off ) zaf ( off ) doopen ( off ) tol ( 0.001 ) removegrp ( on ) keeppoints ( off )
chlock delete_partOfThePoints -*
chautoscope delete_partOfThePoints -*
opcolor -c 0.80000001192092896 0.80000001192092896 0.80000001192092896 delete_partOfThePoints
opset -d off -r off -h off -f off -y off -t off -l off -s off -u off -c off -e on -b off delete_partOfThePoints
opexprlanguage -s hscript delete_partOfThePoints
opuserdata -n '___Version___' -v '15.0.416' delete_partOfThePoints

# Node switch_fromFrame20 (Sop/switch)
opadd -e -n switch switch_fromFrame20
oplocate -x -1.7750699999999999 -y 22.817699999999999 switch_fromFrame20
opspareds "" switch_fromFrame20
chblockbegin
chadd -t 0 0 switch_fromFrame20 input
chkey -t 0 -v 0 -m 0 -a 0 -A 0 -T a  -F '$F>20' switch_fromFrame20/input
chblockend
opparm -V 15.0.416 switch_fromFrame20 input ( input )
chlock switch_fromFrame20 -*
chautoscope switch_fromFrame20 -*
opcolor -c 0.80000001192092896 0.80000001192092896 0.80000001192092896 switch_fromFrame20
opset -d off -r off -h off -f off -y off -t off -l off -s off -u off -c off -e on -b on switch_fromFrame20
opexprlanguage -s hscript switch_fromFrame20
opuserdata -n '___Version___' -v '15.0.416' switch_fromFrame20

# Node OUT_points (Sop/null)
opadd -e -n null OUT_points
oplocate -x -1.7750699999999999 -y 21.8154 OUT_points
opspareds "" OUT_points
opparm -V 15.0.416 OUT_points copyinput ( on ) cacheinput ( off )
chlock OUT_points -*
chautoscope OUT_points -*
opcolor -c 0.80000001192092896 0.80000001192092896 0.80000001192092896 OUT_points
opset -d off -r off -h off -f off -y off -t off -l off -s off -u off -c off -e on -b off OUT_points
opexprlanguage -s hscript OUT_points
opuserdata -n '___Version___' -v '15.0.416' OUT_points
oporder -e dopImport_previousFrame delete_partOfThePoints switch_fromFrame20 OUT_points 
opcf ..

# Node controls (Object/null)
opadd -e -n null controls
oplocate -x 5.034487247467041 -y 8.6196422576904297 controls
opspareds '    group { 	name	"stdswitcher4" 	label	"Transform" 	invisibletab  	parm { 	    name	"keeppos" 	    baseparm 	    label	"Keep Position When Parenting" 	    invisible 	    export	none 	} 	parm { 	    name	"childcomp" 	    baseparm 	    label	"Child Compensation" 	    invisible 	    export	none 	} 	parm { 	    name	"pre_xform" 	    baseparm 	    label	"Pre-transform" 	    invisible 	    export	none 	} 	parm { 	    name	"xOrd" 	    baseparm 	    label	"Transform Order" 	    invisible 	    joinnext 	    export	none 	} 	parm { 	    name	"rOrd" 	    baseparm 	    label	"Rotate Order" 	    invisible 	    export	none 	} 	parm { 	    name	"t" 	    baseparm 	    label	"Translate" 	    invisible 	    export	all 	} 	parm { 	    name	"r" 	    baseparm 	    label	"Rotate" 	    invisible 	    export	all 	} 	parm { 	    name	"s" 	    baseparm 	    label	"Scale" 	    invisible 	    export	none 	} 	parm { 	    name	"p" 	    baseparm 	    label	"Pivot" 	    invisible 	    export	none 	} 	parm { 	    name	"scale" 	    baseparm 	    label	"Uniform Scale" 	    invisible 	    export	none 	} 	parm { 	    name	"lookatpath" 	    baseparm 	    label	"Look At" 	    invisible 	    export	none 	} 	parm { 	    name	"lookupobjpath" 	    baseparm 	    label	"Look Up Object" 	    invisible 	    export	none 	} 	parm { 	    name	"lookup" 	    baseparm 	    label	"Look At Up Vector" 	    invisible 	    export	none 	} 	parm { 	    name	"pathobjpath" 	    baseparm 	    label	"Path Object" 	    invisible 	    export	none 	} 	parm { 	    name	"roll" 	    baseparm 	    label	"Roll" 	    invisible 	    export	none 	} 	parm { 	    name	"pos" 	    baseparm 	    label	"Position" 	    invisible 	    export	none 	} 	parm { 	    name	"uparmtype" 	    baseparm 	    label	"Parameterization" 	    invisible 	    export	none 	} 	parm { 	    name	"pathorient" 	    baseparm 	    label	"Orient Along Path" 	    invisible 	    export	none 	} 	parm { 	    name	"up" 	    baseparm 	    label	"Orient Up Vector" 	    invisible 	    export	none 	} 	parm { 	    name	"bank" 	    baseparm 	    label	"Auto-Bank factor" 	    invisible 	    export	none 	}     }      group { 	name	"stdswitcher4_1" 	label	"Render" 	invisibletab  	parm { 	    name	"tdisplay" 	    baseparm 	    label	"Display" 	    invisible 	    joinnext 	    export	none 	} 	parm { 	    name	"display" 	    baseparm 	    label	"Display" 	    invisible 	    export	none 	} 	parm { 	    name	"renderspace" 	    baseparm 	    label	"Output transform as render space (RIB/IFD)" 	    invisible 	    export	none 	}     }      group { 	name	"stdswitcher4_2" 	label	"Misc" 	invisibletab  	parm { 	    name	"use_dcolor" 	    baseparm 	    label	"Set Wireframe Color" 	    invisible 	    export	none 	} 	parm { 	    name	"dcolor" 	    baseparm 	    label	"Wireframe Color" 	    invisible 	    export	none 	} 	parm { 	    name	"picking" 	    baseparm 	    label	"Viewport Selecting Enabled" 	    invisible 	    export	none 	} 	parm { 	    name	"pickscript" 	    baseparm 	    label	"Select Script" 	    invisible 	    export	none 	} 	parm { 	    name	"caching" 	    baseparm 	    label	"Cache Object Transform" 	    invisible 	    export	none 	} 	parm { 	    name	"geoscale" 	    baseparm 	    label	"Geometry Scale" 	    invisible 	    export	none 	} 	parm { 	    name	"displayicon" 	    baseparm 	    label	"Display" 	    invisible 	    export	none 	} 	parm { 	    name	"controltype" 	    baseparm 	    label	"Control Type" 	    invisible 	    export	none 	} 	parm { 	    name	"orientation" 	    baseparm 	    label	"Orientation" 	    invisible 	    export	none 	} 	parm { 	    name	"shadedmode" 	    baseparm 	    label	"Shaded Mode" 	    invisible 	    export	none 	} 	parm { 	    name	"parm" 	    label	"Label" 	    type	float 	    default	{ "0" } 	    range	{ 0 10 } 	    export	none 	} 	parm { 	    name	"vport_shadeopen" 	    baseparm 	    label	"Shade Open Curves In Viewport" 	    invisible 	    export	none 	} 	parm { 	    name	"vport_displayassubdiv" 	    baseparm 	    label	"Display as Subdivision in Viewport" 	    invisible 	    export	none 	} 	parm { 	    name	"shop_materialpath" 	    baseparm 	    label	"Material" 	    invisible 	    joinnext 	    export	none 	} 	parm { 	    name	"shop_materialopts" 	    baseparm 	    label	"Options" 	    invisible 	    export	none 	}     }      group { 	name	"stdswitcher4_3" 	label	"Sourcing"  	groupsimple { 	    name	"birth" 	    label	"Birth"  	    parm { 		name	"rate" 		label	"Rate" 		type	float 		default	{ "0" } 		range	{ 0 10 } 		export	none 	    } 	    parm { 		name	"endframe" 		label	"End Frame" 		type	integer 		default	{ "0" } 		range	{ 0 10 } 		export	none 	    } 	}  	groupsimple { 	    name	"scale2" 	    label	"Scale"  	    parm { 		name	"minpscale" 		label	"Min Pscale" 		type	float 		default	{ "0" } 		range	{ 0 10 } 		export	none 	    } 	    parm { 		name	"maxpscale" 		label	"Max Pscale" 		type	float 		default	{ "0" } 		range	{ 0 10 } 		export	none 	    } 	    parm { 		name	"ramp" 		label	"Ramp" 		type	ramp_flt 		default	{ "2" } 		range	{ 1! 10 } 		export	none 	    } 	}      }      group { 	name	"stdswitcher4_4" 	label	"Simulation"  	groupsimple { 	    name	"forces" 	    label	"Forces"  	    parm { 		name	"gravityon" 		label	"Label" 		type	toggle 		nolabel 		joinnext 		default	{ "1" } 		range	{ 0 1 } 		export	none 	    } 	    parm { 		name	"gravity" 		label	"Gravity" 		type	vector 		size	3 		default	{ "0" "0" "0" } 		disablewhen	"{ gravityon == 0 }" 		range	{ -1 1 } 		export	none 	    } 	    parm { 		name	"buoyancyon" 		label	"Label" 		type	toggle 		nolabel 		joinnext 		default	{ "1" } 		disablewhen	"{ gravityon == 0 }" 		range	{ 0 1 } 		export	none 	    } 	    parm { 		name	"buoyancy" 		label	"Buoyancy" 		type	float 		default	{ "0" } 		disablewhen	"{ gravityon == 0 } { buoyancyon == 0 }" 		range	{ 0 1 } 		export	none 	    } 	    parm { 		name	"surfacetensionon" 		label	"Label" 		type	toggle 		nolabel 		joinnext 		default	{ "1" } 		range	{ 0 1 } 		export	none 	    } 	    parm { 		name	"surfacetension" 		label	"Surface Tension" 		type	float 		default	{ "0" } 		disablewhen	"{ surfacetensionon == 0 }" 		range	{ 0 1 } 		export	none 	    } 	    parm { 		name	"sepparm2" 		label	"Separator" 		type	separator 		default	{ "" } 		range	{ 0 1 } 		export	none 	    } 	    parm { 		name	"solidcollision" 		label	"Solid Colision" 		type	toggle 		default	{ "1" } 		range	{ 0 1 } 		export	none 	    } 	    parm { 		name	"solidstronginteractionon" 		label	"Label" 		type	toggle 		nolabel 		joinnext 		default	{ "1" } 		disablewhen	"{ solidcollision == 0 }" 		range	{ 0 1 } 		export	none 	    } 	    parm { 		name	"solidstronginteraction" 		label	"Solid Strong Interaction" 		type	float 		default	{ "0" } 		disablewhen	"{ solidcollision == 0 } { solidstronginteractionon == 0 }" 		range	{ 0 1 } 		export	none 	    } 	    parm { 		name	"solidattractionon" 		label	"Label" 		type	toggle 		nolabel 		joinnext 		default	{ "1" } 		disablewhen	"{ solidcollision == 0 }" 		range	{ 0 1 } 		export	none 	    } 	    parm { 		name	"solidattraction" 		label	"Solid Attraction" 		type	float 		default	{ "0" } 		disablewhen	"{ solidcollision == 0 } { solidattractionon == 0 }" 		range	{ 0 1 } 		export	none 	    } 	    parm { 		name	"sepparm3" 		label	"Separator" 		type	separator 		default	{ "" } 		range	{ 0 1 } 		export	none 	    } 	    parm { 		name	"stronginteractionon" 		label	"Label" 		type	toggle 		nolabel 		joinnext 		default	{ "1" } 		range	{ 0 1 } 		export	none 	    } 	    parm { 		name	"stronginteraction" 		label	"Strong Interaction" 		type	float 		default	{ "0" } 		disablewhen	"{ stronginteractionon == 0 }" 		range	{ 0 1 } 		export	none 	    } 	    parm { 		name	"weakinteractionon" 		label	"Label" 		type	toggle 		nolabel 		joinnext 		default	{ "1" } 		range	{ 0 1 } 		export	none 	    } 	    parm { 		name	"weakinteraction" 		label	"Weak Interaction" 		type	float 		default	{ "0" } 		disablewhen	"{ weakinteractionon == 0 }" 		range	{ 0 1 } 		export	none 	    } 	    parm { 		name	"sepparm" 		label	"Separator" 		type	separator 		default	{ "" } 		range	{ 0 1 } 		export	none 	    } 	    parm { 		name	"dampingon" 		label	"Label" 		type	toggle 		nolabel 		joinnext 		default	{ "1" } 		range	{ 0 1 } 		export	none 	    } 	    parm { 		name	"damping" 		label	"Damping" 		type	float 		default	{ "0" } 		disablewhen	"{ dampingon == 0 }" 		range	{ 0 1 } 		export	none 	    } 	    parm { 		name	"generalscaleon" 		label	"Label" 		type	toggle 		nolabel 		joinnext 		default	{ "1" } 		range	{ 0 1 } 		export	none 	    } 	    parm { 		name	"generalscale" 		label	"General Scale" 		type	float 		default	{ "0" } 		disablewhen	"{ generalscaleon == 0 }" 		range	{ 0 1 } 		export	none 	    } 	}      }      group { 	name	"stdswitcher4_5" 	label	"Properties"  	parm { 	    name	"filmthickness" 	    label	"Film Thickness" 	    type	float 	    default	{ "0" } 	    range	{ 0 10 } 	    export	none 	} 	parm { 	    name	"airdensity" 	    label	"Air Density" 	    type	float 	    default	{ "0" } 	    range	{ 0 10 } 	    export	none 	} 	parm { 	    name	"liquiddensity" 	    label	"Liquid Density" 	    type	float 	    default	{ "0" } 	    range	{ 0 10 } 	    export	none 	}     }  ' controls
opparm controls  ramp ( 4 )
chblockbegin
chadd -t 0 0 controls gravityy
chkey -t 0 -v 0 -m 0 -a 0 -A 0 -T a  -F '-9.80665 * 1.5' controls/gravityy
chblockend
opset -S on controls
opparm -V 15.0.416 controls stdswitcher ( 0 0 0 ) keeppos ( off ) childcomp ( off ) pre_xform ( clean ) xOrd ( srt ) rOrd ( xyz ) t ( 0 0 0 ) r ( 0 0 0 ) s ( 1 1 1 ) p ( 0 0 0 ) scale ( 1 ) lookatpath ( "" ) lookupobjpath ( "" ) lookup ( on ) pathobjpath ( "" ) roll ( 0 ) pos ( 0 ) uparmtype ( arc ) pathorient ( 1 ) up ( 0 1 0 ) bank ( 0 ) tdisplay ( off ) display ( 1 ) renderspace ( off ) use_dcolor ( on ) dcolor ( 0 0.75 0 ) picking ( on ) pickscript ( "" ) caching ( off ) geoscale ( 1 ) displayicon ( icon ) controltype ( null ) orientation ( xyz ) shadedmode ( off ) vport_shadeopen ( off ) vport_displayassubdiv ( off ) shop_materialpath ( "" ) shop_materialopts ( override ) stdswitcher4 ( 1 1 1 1 1 1 ) parm ( 0 ) birth ( 0 ) rate ( 60 ) endframe ( 120 ) scale2 ( 0 ) minpscale ( 1 ) maxpscale ( 3.5 ) ramp ( 4 ) ramp1pos ( 0 ) ramp1value ( 0 ) ramp1interp ( catmull-rom ) ramp2pos ( 0.32885304093360901 ) ramp2value ( 0.2708333432674408 ) ramp2interp ( catmull-rom ) ramp3pos ( 0.79301077127456665 ) ramp3value ( 0.8399999737739563 ) ramp3interp ( catmull-rom ) forces ( 0 ) gravityon ( on ) gravity ( 0 gravityy 0 ) buoyancyon ( on ) buoyancy ( 0.0025000000000000001 ) surfacetensionon ( on ) surfacetension ( 0.10000000000000001 ) sepparm2 ( ) solidcollision ( on ) solidstronginteractionon ( on ) solidstronginteraction ( 0.10000000000000001 ) solidattractionon ( off ) solidattraction ( 0.00050000000000000001 ) sepparm3 ( ) stronginteractionon ( on ) stronginteraction ( 0.10000000000000001 ) weakinteractionon ( on ) weakinteraction ( 0.01 ) sepparm ( ) dampingon ( on ) damping ( 2 ) generalscaleon ( on ) generalscale ( 1 ) filmthickness ( 0.050000000000000003 ) airdensity ( 0.001225 ) liquiddensity ( 1 ) ramp4pos ( 0.99372762441635132 ) ramp4value ( 0.56000000238418579 ) ramp4interp ( catmull-rom )
chlock controls -*
chautoscope controls -* +tx +ty +tz +rx +ry +rz +sx +sy +sz
opcolor -c 0.66699999570846558 0 0 controls
opset -d on -r off -h off -f off -y on -t off -l off -s off -u off -c off -e on -b off -x off controls
nbop Simulation add controls
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
opparm -V 15.0.416 ipr_camera stdswitcher ( 0 0 ) keeppos ( off ) childcomp ( off ) pre_xform ( clean ) xOrd ( srt ) rOrd ( xyz ) t ( 2.7725037158509944 2.2637398046017525 2.7725037158509949 ) r ( -29.999999999999996 44.999999999999993 -8.9959671327898885e-15 ) s ( sx sy sz ) p ( 0 0 0 ) scale ( scale ) lookatpath ( "" ) lookupobjpath ( "" ) lookup ( on ) pathobjpath ( "" ) roll ( 0 ) pos ( 0 ) uparmtype ( arc ) pathorient ( 1 ) up ( 0 1 0 ) bank ( 0 ) tdisplay ( off ) display ( 1 ) use_dcolor ( off ) dcolor ( 1 1 1 ) picking ( on ) pickscript ( "" ) caching ( off ) stdswitcher3 ( 0 0 0 0 ) iconscale ( 1 ) res ( 1280 720 ) resMenu ( "640 480 1" ) aspect ( 1 ) projection ( perspective ) vm_lensshader ( "" ) focal ( 50 ) focalunits ( mm ) aperture ( 41.421398162841797 ) orthowidth ( 2.922262748082479 ) near ( 0.10000000149011612 ) far ( 3866.7927055270757 ) vm_bgenable ( on ) vm_background ( "" ) win ( 0 0 ) winsize ( 1 1 ) winmask ( "" ) cropl ( 0 ) cropr ( 1 ) cropb ( 0 ) cropt ( 1 ) cropmask ( "" ) shutter ( 0.5 ) focus ( 5 ) fstop ( 5.5999999999999996 ) vm_bokeh ( radial ) vm_bokehfile ( default.pic ) vm_bokehrotation ( 0 )
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
opparm -V 15.0.416 ipr_camera1 stdswitcher ( 0 0 ) keeppos ( off ) childcomp ( off ) pre_xform ( clean ) xOrd ( srt ) rOrd ( xyz ) t ( 2.7725037158509944 2.2637398046017525 2.7725037158509949 ) r ( -29.999999999999996 44.999999999999993 -8.9959671327898885e-15 ) s ( sx sy sz ) p ( 0 0 0 ) scale ( scale ) lookatpath ( "" ) lookupobjpath ( "" ) lookup ( on ) pathobjpath ( "" ) roll ( 0 ) pos ( 0 ) uparmtype ( arc ) pathorient ( 1 ) up ( 0 1 0 ) bank ( 0 ) tdisplay ( off ) display ( 1 ) use_dcolor ( off ) dcolor ( 1 1 1 ) picking ( on ) pickscript ( "" ) caching ( off ) stdswitcher3 ( 0 0 0 0 ) iconscale ( 1 ) res ( 1280 720 ) resMenu ( "640 480 1" ) aspect ( 1 ) projection ( perspective ) vm_lensshader ( "" ) focal ( 50 ) focalunits ( mm ) aperture ( 41.421398162841797 ) orthowidth ( 2.922262748082479 ) near ( 0.10000000149011612 ) far ( 3866.7927055270757 ) vm_bgenable ( on ) vm_background ( "" ) win ( 0 0 ) winsize ( 1 1 ) winmask ( "" ) cropl ( 0 ) cropr ( 1 ) cropb ( 0 ) cropt ( 1 ) cropmask ( "" ) shutter ( 0.5 ) focus ( 5 ) fstop ( 5.5999999999999996 ) vm_bokeh ( radial ) vm_bokehfile ( default.pic ) vm_bokehrotation ( 0 )
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
opparm -V 15.0.416 ipr_camera2 stdswitcher ( 0 0 ) keeppos ( off ) childcomp ( off ) pre_xform ( clean ) xOrd ( srt ) rOrd ( xyz ) t ( 2.7725037158509944 2.2637398046017525 2.7725037158509949 ) r ( -29.999999999999996 44.999999999999993 -8.9959671327898885e-15 ) s ( sx sy sz ) p ( 0 0 0 ) scale ( scale ) lookatpath ( "" ) lookupobjpath ( "" ) lookup ( on ) pathobjpath ( "" ) roll ( 0 ) pos ( 0 ) uparmtype ( arc ) pathorient ( 1 ) up ( 0 1 0 ) bank ( 0 ) tdisplay ( off ) display ( 1 ) use_dcolor ( off ) dcolor ( 1 1 1 ) picking ( on ) pickscript ( "" ) caching ( off ) stdswitcher3 ( 0 0 0 0 ) iconscale ( 1 ) res ( 1280 720 ) resMenu ( "640 480 1" ) aspect ( 1 ) projection ( perspective ) vm_lensshader ( "" ) focal ( 50 ) focalunits ( mm ) aperture ( 41.421398162841797 ) orthowidth ( 2.922262748082479 ) near ( 0.10000000149011612 ) far ( 3866.7927055270757 ) vm_bgenable ( on ) vm_background ( "" ) win ( 0 0 ) winsize ( 1 1 ) winmask ( "" ) cropl ( 0 ) cropr ( 1 ) cropb ( 0 ) cropt ( 1 ) cropmask ( "" ) shutter ( 0.5 ) focus ( 5 ) fstop ( 5.5999999999999996 ) vm_bokeh ( radial ) vm_bokehfile ( default.pic ) vm_bokehrotation ( 0 )
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

# Node testScales (Object/geo)
opadd -e -n geo testScales
oplocate -x 9.4354276657104492 -y 10.614160537719727 testScales
opspareds '    parm { 	name	"pointcount" 	label	"Point Count" 	type	integer 	default	{ "0" } 	range	{ 1! 500 } 	export	none     }     parm { 	name	"usesimulation" 	label	"Use Simulation" 	type	toggle 	default	{ "1" } 	range	{ 0 1 } 	export	none     }     parm { 	name	"sepparm" 	label	"Separator" 	type	separator 	default	{ "" } 	range	{ 0 1 } 	export	none     }     group { 	name	"stdswitcher5" 	label	"Transform"  	parm { 	    name	"keeppos" 	    baseparm 	    label	"Keep Position When Parenting" 	    export	none 	} 	parm { 	    name	"childcomp" 	    baseparm 	    label	"Child Compensation" 	    export	none 	} 	parm { 	    name	"pre_xform" 	    baseparm 	    label	"Pre-transform" 	    export	none 	} 	parm { 	    name	"xOrd" 	    baseparm 	    label	"Transform Order" 	    joinnext 	    export	none 	} 	parm { 	    name	"rOrd" 	    baseparm 	    label	"Rotate Order" 	    export	none 	} 	parm { 	    name	"t" 	    baseparm 	    label	"Translate" 	    export	all 	} 	parm { 	    name	"r" 	    baseparm 	    label	"Rotate" 	    export	all 	} 	parm { 	    name	"s" 	    baseparm 	    label	"Scale" 	    export	none 	} 	parm { 	    name	"p" 	    baseparm 	    label	"Pivot" 	    export	none 	} 	parm { 	    name	"scale" 	    baseparm 	    label	"Uniform Scale" 	    export	none 	} 	parm { 	    name	"lookatpath" 	    baseparm 	    label	"Look At" 	    export	none 	} 	parm { 	    name	"lookupobjpath" 	    baseparm 	    label	"Look Up Object" 	    export	none 	} 	parm { 	    name	"lookup" 	    baseparm 	    label	"Look At Up Vector" 	    export	none 	} 	parm { 	    name	"pathobjpath" 	    baseparm 	    label	"Path Object" 	    export	none 	} 	parm { 	    name	"roll" 	    baseparm 	    label	"Roll" 	    export	none 	} 	parm { 	    name	"pos" 	    baseparm 	    label	"Position" 	    export	none 	} 	parm { 	    name	"uparmtype" 	    baseparm 	    label	"Parameterization" 	    export	none 	} 	parm { 	    name	"pathorient" 	    baseparm 	    label	"Orient Along Path" 	    export	none 	} 	parm { 	    name	"up" 	    baseparm 	    label	"Orient Up Vector" 	    export	none 	} 	parm { 	    name	"bank" 	    baseparm 	    label	"Auto-Bank factor" 	    export	none 	}     }      group { 	name	"stdswitcher5_1" 	label	"Material"  	parm { 	    name	"shop_materialpath" 	    baseparm 	    label	"Material" 	    joinnext 	    export	none 	} 	parm { 	    name	"shop_materialopts" 	    baseparm 	    label	"Options" 	    export	none 	}     }      group { 	name	"stdswitcher5_2" 	label	"Render"  	parm { 	    name	"tdisplay" 	    baseparm 	    label	"Display" 	    joinnext 	    export	none 	} 	parm { 	    name	"display" 	    baseparm 	    label	"Display" 	    export	none 	} 	parm { 	    name	"viewportlod" 	    label	"Display As" 	    type	ordinal 	    default	{ "full" } 	    help	"Choose how the object\'s geometry should be rendered in the viewport" 	    menu	{ 		"full"	"Full Geometry" 		"points"	"Point Cloud" 		"box"	"Bounding Box" 		"centroid"	"Centroid" 		"hidden"	"Hidden" 		"subd"	"Subdivision Surface / Curves" 	    } 	    range	{ 0 1 } 	    export	none 	    parmtag	{ "spare_category" "Render" } 	} 	parm { 	    name	"vm_rendervisibility" 	    label	"Render Visibility" 	    type	string 	    default	{ "*" } 	    menureplace	{ 		"*"	"Visible to all" 		"primary"	"Visible only to primary rays" 		"primary|shadow"	"Visible only to primary and shadow rays" 		"-primary"	"Invisible to primary rays (Phantom)" 		"-diffuse"	"Invisible to diffuse rays" 		"-diffuse&-reflect&-refract"	"Invisible to secondary rays" 		""	"Invisible (Unrenderable)" 	    } 	    range	{ 0 1 } 	    export	none 	    parmtag	{ "spare_category" "Render" } 	} 	parm { 	    name	"vm_rendersubd" 	    label	"Render Polygons As Subdivision (Mantra)" 	    type	toggle 	    default	{ "0" } 	    range	{ 0 1 } 	    export	none 	    parmtag	{ "spare_category" "Geometry" } 	} 	parm { 	    name	"vm_subdstyle" 	    label	"Subdivision Style" 	    type	string 	    default	{ "mantra_catclark" } 	    hidewhen	"{ vm_rendersubd == 0 }" 	    menu	{ 		"mantra_catclark"	"Mantra Catmull-Clark" 		"osd_catclark"	"OpenSubdiv Catmull-Clark" 	    } 	    range	{ 0 1 } 	    export	none 	    parmtag	{ "spare_category" "Geometry" } 	} 	parm { 	    name	"vm_subdgroup" 	    label	"Subdivision Group" 	    type	string 	    default	{ "" } 	    hidewhen	"{ vm_rendersubd == 0 }" 	    range	{ 0 1 } 	    export	none 	    parmtag	{ "spare_category" "Geometry" } 	} 	group { 	    name	"folder0" 	    label	"Shading"  	    parm { 		name	"categories" 		label	"Categories" 		type	string 		default	{ "" } 		help	"A list of tags which can be used to select the object" 		range	{ 0 1 } 		export	none 		parmtag	{ "spare_category" "Shading" } 	    } 	    parm { 		name	"reflectmask" 		label	"Reflection Mask" 		type	oplist 		default	{ "*" } 		help	"Objects that will be reflected on this object." 		range	{ 0 1 } 		export	none 		parmtag	{ "opexpand" "1" } 		parmtag	{ "opfilter" "!!OBJ/GEOMETRY!!" } 		parmtag	{ "oprelative" "/obj" } 		parmtag	{ "spare_category" "Shading" } 	    } 	    parm { 		name	"refractmask" 		label	"Refraction Mask" 		type	oplist 		default	{ "*" } 		help	"Objects that will be refracted on this object." 		range	{ 0 1 } 		export	none 		parmtag	{ "opexpand" "1" } 		parmtag	{ "opfilter" "!!OBJ/GEOMETRY!!" } 		parmtag	{ "oprelative" "/obj" } 		parmtag	{ "spare_category" "Shading" } 	    } 	    parm { 		name	"lightmask" 		label	"Light Mask" 		type	oplist 		default	{ "*" } 		help	"Lights that illuminate this object." 		range	{ 0 1 } 		export	none 		parmtag	{ "opexpand" "1" } 		parmtag	{ "opfilter" "!!OBJ/LIGHT!!" } 		parmtag	{ "oprelative" "/obj" } 		parmtag	{ "spare_category" "Shading" } 	    } 	    parm { 		name	"vm_volumefilter" 		label	"Volume Filter" 		type	string 		default	{ "box" } 		menu	{ 		    "box"	"Box Filter" 		    "gaussian"	"Gaussian" 		    "bartlett"	"Bartlett (triangle)" 		    "catrom"	"Catmull-Rom" 		    "hanning"	"Hanning" 		    "blackman"	"Blackman" 		    "sinc"	"Sinc (sharpening)" 		} 		range	{ 0 1 } 		export	none 		parmtag	{ "spare_category" "Shading" } 	    } 	    parm { 		name	"vm_volumefilterwidth" 		label	"Volume Filter Width" 		type	float 		default	{ "1" } 		range	{ 0.001 5 } 		export	none 		parmtag	{ "spare_category" "Shading" } 	    } 	    parm { 		name	"vm_matte" 		label	"Matte shading" 		type	toggle 		default	{ "0" } 		range	{ 0 1 } 		export	none 		parmtag	{ "spare_category" "Shading" } 	    } 	    parm { 		name	"vm_rayshade" 		label	"Raytrace Shading" 		type	toggle 		default	{ "0" } 		range	{ 0 1 } 		export	none 		parmtag	{ "spare_category" "Shading" } 	    } 	}  	group { 	    name	"folder0_1" 	    label	"Sampling"  	    parm { 		name	"geo_velocityblur" 		label	"Geometry Velocity Blur" 		type	toggle 		default	{ "0" } 		disablewhen	"{ allowmotionblur == 0 }" 		range	{ 0 1 } 		export	none 		parmtag	{ "spare_category" "Sampling" } 	    } 	}  	group { 	    name	"folder0_2" 	    label	"Dicing"  	    parm { 		name	"vm_shadingquality" 		label	"Shading Quality" 		type	float 		default	{ "1" } 		range	{ 0 10 } 		export	none 		parmtag	{ "spare_category" "Dicing" } 	    } 	    parm { 		name	"vm_flatness" 		label	"Dicing Flatness" 		type	float 		default	{ "0.05" } 		range	{ 0 1 } 		export	none 		parmtag	{ "spare_category" "Dicing" } 	    } 	    parm { 		name	"vm_raypredice" 		label	"Ray Predicing" 		type	integer 		default	{ "0" } 		menu	{ 		    "0"	"Disable Predicing" 		    "1"	"Full Predicing" 		    "2"	"Precompute Bounds" 		} 		range	{ 0 10 } 		export	none 		parmtag	{ "spare_category" "Dicing" } 	    } 	    parm { 		name	"vm_curvesurface" 		label	"Shade Curves As Surfaces" 		type	toggle 		default	{ "0" } 		range	{ 0 1 } 		export	none 		parmtag	{ "spare_category" "Dicing" } 	    } 	}  	group { 	    name	"folder0_3" 	    label	"Geometry"  	    parm { 		name	"vm_rmbackface" 		label	"Backface Removal" 		type	toggle 		default	{ "0" } 		range	{ 0 1 } 		export	none 		parmtag	{ "spare_category" "Geometry" } 	    } 	    parm { 		name	"shop_geometrypath" 		label	"Procedural Shader" 		type	oppath 		default	{ "" } 		range	{ 0 1 } 		export	none 		parmtag	{ "opfilter" "!!SHOP/GEOMETRY!!" } 		parmtag	{ "oprelative" "." } 		parmtag	{ "spare_category" "Geometry" } 	    } 	    parm { 		name	"vm_forcegeometry" 		label	"Force Procedural Geometry Output" 		type	toggle 		default	{ "1" } 		range	{ 0 1 } 		export	none 		parmtag	{ "spare_category" "Geometry" } 	    } 	    parm { 		name	"vm_rendersubdcurves" 		label	"Render Polygon Curves As Subdivision (Mantra)" 		type	toggle 		default	{ "0" } 		range	{ 0 1 } 		export	none 		parmtag	{ "spare_category" "Geometry" } 	    } 	    parm { 		name	"vm_renderpoints" 		label	"Render As Points (Mantra)" 		type	integer 		default	{ "2" } 		menu	{ 		    "0"	"No Point Rendering" 		    "1"	"Render Only Points" 		    "2"	"Render Unconnected Points" 		} 		range	{ 0 10 } 		export	none 		parmtag	{ "spare_category" "Geometry" } 	    } 	    parm { 		name	"vm_renderpointsas" 		label	"Render Points As (Mantra)" 		type	integer 		default	{ "0" } 		disablewhen	"{ vm_renderpoints == 0 }" 		menu	{ 		    "0"	"Spheres" 		    "1"	"Circles" 		} 		range	{ 0 10 } 		export	none 		parmtag	{ "spare_category" "Geometry" } 	    } 	    parm { 		name	"vm_usenforpoints" 		label	"Use N For Point Rendering" 		type	toggle 		default	{ "0" } 		disablewhen	"{ vm_renderpoints == 0 }" 		range	{ 0 1 } 		export	none 		parmtag	{ "spare_category" "Geometry" } 	    } 	    parm { 		name	"vm_pointscale" 		label	"Point Scale" 		type	float 		default	{ "1" } 		disablewhen	"{ vm_renderpoints == 0 }" 		range	{ 0! 10 } 		export	none 		parmtag	{ "spare_category" "Geometry" } 	    } 	    parm { 		name	"vm_pscalediameter" 		label	"Treat Point Scale as Diameter Instead of Radius" 		type	toggle 		default	{ "0" } 		range	{ 0 1 } 		export	none 		parmtag	{ "spare_category" "Geometry" } 	    } 	    parm { 		name	"vm_metavolume" 		label	"Metaballs as Volume" 		type	toggle 		default	{ "0" } 		range	{ 0 1 } 		export	none 		parmtag	{ "spare_category" "Geometry" } 	    } 	    parm { 		name	"vm_coving" 		label	"Coving" 		type	integer 		default	{ "1" } 		menu	{ 		    "0"	"Disable Coving" 		    "1"	"Coving for displacement/sub-d" 		    "2"	"Coving for all primitives" 		} 		range	{ 0 10 } 		export	none 		parmtag	{ "spare_category" "Geometry" } 	    } 	    parm { 		name	"vm_materialoverride" 		label	"Material Override" 		type	string 		default	{ "compact" } 		menu	{ 		    "none"	"Disabled" 		    "full"	"Evaluate for Each Primitve/Point" 		    "compact"	"Evaluate Once" 		} 		range	{ 0 1 } 		export	none 		parmtag	{ "spare_category" "Geometry" } 	    } 	    parm { 		name	"vm_computeN" 		label	"Automatically Compute Normals" 		type	toggle 		default	{ "1" } 		range	{ 0 1 } 		export	none 		parmtag	{ "spare_category" "Geometry" } 	    } 	    parm { 		name	"vm_overridedetail" 		label	"Ignore Geometry Attribute Shaders" 		type	toggle 		default	{ "0" } 		range	{ 0 1 } 		export	none 		parmtag	{ "spare_category" "Geometry" } 	    } 	}      }      group { 	name	"stdswitcher5_3" 	label	"Misc"  	parm { 	    name	"use_dcolor" 	    baseparm 	    label	"Set Wireframe Color" 	    export	none 	} 	parm { 	    name	"dcolor" 	    baseparm 	    label	"Wireframe Color" 	    export	none 	} 	parm { 	    name	"picking" 	    baseparm 	    label	"Viewport Selecting Enabled" 	    export	none 	} 	parm { 	    name	"pickscript" 	    baseparm 	    label	"Select Script" 	    export	none 	} 	parm { 	    name	"caching" 	    baseparm 	    label	"Cache Object Transform" 	    export	none 	} 	parm { 	    name	"vport_shadeopen" 	    baseparm 	    label	"Shade Open Curves In Viewport" 	    export	none 	} 	parm { 	    name	"vport_displayassubdiv" 	    baseparm 	    label	"Display as Subdivision in Viewport" 	    invisible 	    export	none 	} 	parm { 	    name	"vport_onionskin" 	    baseparm 	    label	"Onion Skinning" 	    export	none 	}     }  ' testScales
opset -S on testScales
opparm -V 15.0.416 testScales stdswitcher ( 0 0 0 0 ) keeppos ( off ) childcomp ( off ) pre_xform ( clean ) xOrd ( srt ) rOrd ( xyz ) t ( 0 0 0 ) r ( 0 0 0 ) s ( 1 1 1 ) p ( 0 0 0 ) scale ( 1 ) lookatpath ( "" ) lookupobjpath ( "" ) lookup ( on ) pathobjpath ( "" ) roll ( 0 ) pos ( 0 ) uparmtype ( arc ) pathorient ( 1 ) up ( 0 1 0 ) bank ( 0 ) shop_materialpath ( "" ) shop_materialopts ( override ) tdisplay ( off ) display ( 1 ) use_dcolor ( off ) dcolor ( 1 1 1 ) picking ( on ) pickscript ( "" ) caching ( off ) vport_shadeopen ( off ) vport_displayassubdiv ( off ) vport_onionskin ( off ) pointcount ( 200 ) usesimulation ( off ) sepparm ( ) stdswitcher5 ( 0 0 0 0 ) viewportlod ( full ) vm_rendervisibility ( * ) vm_rendersubd ( off ) vm_subdstyle ( mantra_catclark ) vm_subdgroup ( "" ) folder0 ( 0 0 0 0 ) categories ( "" ) reflectmask ( * ) refractmask ( * ) lightmask ( * ) vm_volumefilter ( box ) vm_volumefilterwidth ( 1 ) vm_matte ( off ) vm_rayshade ( off ) geo_velocityblur ( off ) vm_shadingquality ( 1 ) vm_flatness ( 0.050000000000000003 ) vm_raypredice ( 0 ) vm_curvesurface ( off ) vm_rmbackface ( off ) shop_geometrypath ( "" ) vm_forcegeometry ( on ) vm_rendersubdcurves ( off ) vm_renderpoints ( 2 ) vm_renderpointsas ( 0 ) vm_usenforpoints ( off ) vm_pointscale ( 1 ) vm_pscalediameter ( off ) vm_metavolume ( off ) vm_coving ( 1 ) vm_materialoverride ( compact ) vm_computeN ( on ) vm_overridedetail ( off )
chlock testScales -*
chautoscope testScales -* +tx +ty +tz +rx +ry +rz +sx +sy +sz
opcolor -c 0.80000001192092896 1 0.80000001192092896 testScales
opset -d off -r off -h off -f off -y off -t off -l off -s off -u off -c off -e on -b off -x off testScales
opexprlanguage -s hscript testScales
opuserdata -n '___Version___' -v '15.0.416' testScales
opcf testScales

# Node scatter_testPoints (Sop/scatter::2.0)
opadd -e -n scatter::2.0 scatter_testPoints
oplocate -x -2.1728811264038086 -y 1.8163924217224121 scatter_testPoints
opspareds "" scatter_testPoints
chblockbegin
chadd -t 0 0 scatter_testPoints npts
chkey -t 0 -v 200 -m 0 -a 0 -A 0 -T a  -F 'ch("../pointcount")' scatter_testPoints/npts
chblockend
opparm -V 15.0.416 scatter_testPoints group ( "" ) stdswitcher ( 0 0 ) generateby ( bydensity ) densityscale ( 10 ) usedensityattrib ( off ) densityattrib ( density ) useareaattrib ( off ) areaattrib ( area ) forcetotal ( on ) npts ( npts ) usedensitytexture ( off ) densitytexture ( default.pic ) primcountattrib ( count ) useemergencylimit ( on ) emergencylimit ( 1000000 ) seed ( 0 ) overrideprimseed ( off ) primseedattrib ( primid ) randomizeorder ( on ) relaxpoints ( on ) relaxiterations ( 10 ) scaleradiiby ( 1 ) usemaxradius ( on ) maxradius ( 10 ) useprimnumattrib ( off ) primnumattrib ( sourceprim ) useprimuvwattrib ( off ) primuvwattrib ( sourceprimuv ) useoutputdensityattrib ( off ) outputdensityattrib ( density ) useoutputradiusattrib ( off ) outputradiusattrib ( pscale ) radiusintexturespace ( off ) pointattribs ( * ) vertattribs ( "" ) primattribs ( "" ) detailattribs ( "" )
chlock scatter_testPoints -*
chautoscope scatter_testPoints -*
opcolor -c 0.80000001192092896 0.80000001192092896 0.80000001192092896 scatter_testPoints
opset -d off -r off -h off -f off -y off -t off -l off -s off -u off -c off -e on -b off scatter_testPoints
opexprlanguage -s hscript scatter_testPoints
opuserdata -n '___Version___' -v '15.0.416' scatter_testPoints

# Node attributeCreate_pscale (Sop/attribcreate::2.0)
opadd -e -n attribcreate::2.0 attributeCreate_pscale
oplocate -x -0.0792999267578125 -y -0.57341217994689941 attributeCreate_pscale
opspareds "" attributeCreate_pscale
opparm attributeCreate_pscale  numattr ( 1 )
chblockbegin
chadd -t 0 0 attributeCreate_pscale value1v1
chkey -t 0 -v 0 -m 0 -a 0 -A 0 -T a  -F 'fit01(chramp("../../controls/ramp", rand($PT), 0), ch("../../controls/minpscale"), ch("../../controls/maxpscale"))' attributeCreate_pscale/value1v1
chblockend
opparm -V 15.0.416 attributeCreate_pscale group ( "" ) grouptype ( guess ) numattr ( 1 ) enable1 ( on ) name1 ( pscale ) existing1 ( better ) createvarmap1 ( on ) varname1 ( "" ) class1 ( point ) savetoinfo1 ( off ) type1 ( float ) typeinfo1 ( guess ) precision1 ( 32 ) size1 ( 1 ) default1v ( 0 0 0 0 ) writevalues1 ( on ) uselocal1 ( on ) value1v ( value1v1 0 0 0 ) string1 ( "" )
chlock attributeCreate_pscale -*
chautoscope attributeCreate_pscale -*
opcolor -c 0.80000001192092896 0.80000001192092896 0.80000001192092896 attributeCreate_pscale
opset -d off -r off -h off -f off -y off -t off -l off -s off -u off -c off -e on -b off attributeCreate_pscale
opexprlanguage -s hscript attributeCreate_pscale
opuserdata -n '___Version___' -v '15.0.416' attributeCreate_pscale

# Node copy_testSpheres (Sop/copy)
opadd -e -n copy copy_testSpheres
oplocate -x -0.0792999267578125 -y -1.581024169921875 copy_testSpheres
opspareds "" copy_testSpheres
opparm -V 15.0.416 copy_testSpheres sourceGrp ( "" ) templateGrp ( "" ) stdswitcher ( 0 0 0 ) ncy ( 1 ) nml ( on ) cum ( on ) xOrd ( srt ) rOrd ( xyz ) t ( 0 0 0 ) r ( 0 0 0 ) s ( 1 1 1 ) shear ( 0 0 0 ) p ( 0 0 0 ) scale ( 1 ) vlength ( on ) newg ( off ) preservegroups ( off ) copyg ( 'copyGroup`$CY`_`$TPT`' ) stamp ( off ) cacheinput ( off ) pack ( off ) pivot ( centroid ) viewportlod ( full ) attribstamps ( "" ) stampswitch ( 0 0 0 0 0 ) param1 ( "" ) val1 ( 0 ) param2 ( "" ) val2 ( 0 ) param3 ( "" ) val3 ( 0 ) param4 ( "" ) val4 ( 0 ) param5 ( "" ) val5 ( 0 ) param6 ( "" ) val6 ( 0 ) param7 ( "" ) val7 ( 0 ) param8 ( "" ) val8 ( 0 ) param9 ( "" ) val9 ( 0 ) param10 ( "" ) val10 ( 0 ) param11 ( "" ) val11 ( 0 ) param12 ( "" ) val12 ( 0 ) param13 ( "" ) val13 ( 0 ) param14 ( "" ) val14 ( 0 ) param15 ( "" ) val15 ( 0 ) param16 ( "" ) val16 ( 0 ) param17 ( "" ) val17 ( 0 ) param18 ( "" ) val18 ( 0 ) param19 ( "" ) val19 ( 0 ) param20 ( "" ) val20 ( 0 ) param21 ( "" ) val21 ( 0 ) param22 ( "" ) val22 ( 0 ) param23 ( "" ) val23 ( 0 ) param24 ( "" ) val24 ( 0 ) param25 ( "" ) val25 ( 0 ) param26 ( "" ) val26 ( 0 ) param27 ( "" ) val27 ( 0 ) param28 ( "" ) val28 ( 0 ) param29 ( "" ) val29 ( 0 ) param30 ( "" ) val30 ( 0 ) param31 ( "" ) val31 ( 0 ) param32 ( "" ) val32 ( 0 ) param33 ( "" ) val33 ( 0 ) param34 ( "" ) val34 ( 0 ) param35 ( "" ) val35 ( 0 ) param36 ( "" ) val36 ( 0 ) param37 ( "" ) val37 ( 0 ) param38 ( "" ) val38 ( 0 ) param39 ( "" ) val39 ( 0 ) param40 ( "" ) val40 ( 0 ) param41 ( "" ) val41 ( 0 ) param42 ( "" ) val42 ( 0 ) param43 ( "" ) val43 ( 0 ) param44 ( "" ) val44 ( 0 ) param45 ( "" ) val45 ( 0 ) param46 ( "" ) val46 ( 0 ) param47 ( "" ) val47 ( 0 ) param48 ( "" ) val48 ( 0 ) param49 ( "" ) val49 ( 0 ) param50 ( "" ) val50 ( 0 ) doattr ( off ) _label_ ( Set Mult Add Sub ) setpt ( *,^v,^Alpha ) mulpt ( Alpha ) addpt ( v ) subpt ( "" ) setprim ( "" ) mulprim ( "" ) addprim ( "" ) subprim ( "" ) setvtx ( "" ) mulvtx ( "" ) addvtx ( "" ) subvtx ( "" ) copyvariable ( on )
chlock copy_testSpheres -*
chautoscope copy_testSpheres -*
opcolor -c 0.80000001192092896 1 0.80000001192092896 copy_testSpheres
opset -d on -r on -h off -f off -y off -t off -l off -s off -u off -c off -e on -b off copy_testSpheres
opexprlanguage -s hscript copy_testSpheres
opuserdata -n '___Version___' -v '15.0.416' copy_testSpheres

# Node sphere (Sop/sphere)
opadd -e -n sphere sphere
oplocate -x -2.3787412643432617 -y -0.5774986743927002 sphere
opspareds "" sphere
opparm -V 15.0.416 sphere type ( prim ) surftype ( quads ) rad ( 1 1 1 ) t ( 0 0 0 ) scale ( 0.5 ) orient ( y ) freq ( 2 ) rows ( 13 ) cols ( 24 ) orderu ( 4 ) orderv ( 4 ) imperfect ( on ) upole ( off ) accurate ( on ) triangularpoles ( on )
chlock sphere -*
chautoscope sphere -*
opcolor -c 0.80000001192092896 0.80000001192092896 0.80000001192092896 sphere
opset -d off -r off -h off -f off -y off -t off -l off -s off -u off -c off -e on -b off sphere
opexprlanguage -s hscript sphere
opuserdata -n '___Version___' -v '15.0.416' sphere

# Node objectMerge_liquidSurface (Sop/object_merge)
opadd -e -n object_merge objectMerge_liquidSurface
oplocate -x -2.1728811264038086 -y 2.6137800216674805 objectMerge_liquidSurface
opspareds "" objectMerge_liquidSurface
opparm objectMerge_liquidSurface  numobj ( 1 )
opparm -V 15.0.416 objectMerge_liquidSurface numobj ( 1 ) _separator ( ) xformtype ( object ) xformpath ( "" ) invertxform ( off ) createptgroups ( off ) ptgroupprefix ( _ptgrp_ ) createprimgroups ( off ) primgroupprefix ( _primgrp_ ) verbosegroups ( off ) suffixfirstgroup ( on ) createptstring ( off ) createprimstring ( off ) pathattrib ( objname ) pack ( off ) pivot ( centroid ) viewportlod ( full ) addpath ( on ) enable1 ( on ) objpath1 ( /obj/inputs/OUT_liquidSurface ) group1 ( "" ) expand1 ( off )
chlock objectMerge_liquidSurface -*
chautoscope objectMerge_liquidSurface -*
opcolor -c 0.80000001192092896 0.80000001192092896 0.80000001192092896 objectMerge_liquidSurface
opset -d off -r off -h off -f off -y off -t off -l off -s off -u off -c off -e on -b off objectMerge_liquidSurface
opexprlanguage -s hscript objectMerge_liquidSurface
opuserdata -n '___Version___' -v '15.0.416' objectMerge_liquidSurface

# Node switch_sourcedPoints (Sop/switch)
opadd -e -n switch switch_sourcedPoints
oplocate -x -0.0792999267578125 -y 0.2159266471862793 switch_sourcedPoints
opspareds "" switch_sourcedPoints
chblockbegin
chadd -t 0 0 switch_sourcedPoints input
chkey -t 0 -v 0 -m 0 -a 0 -A 0 -T a  -F 'ch("../usesimulation")' switch_sourcedPoints/input
chblockend
opparm -V 15.0.416 switch_sourcedPoints input ( input )
chlock switch_sourcedPoints -*
chautoscope switch_sourcedPoints -*
opcolor -c 0 0.2669999897480011 0 switch_sourcedPoints
opset -d off -r off -h off -f off -y off -t off -l off -s off -u off -c off -e on -b off switch_sourcedPoints
opexprlanguage -s hscript switch_sourcedPoints
opuserdata -n '___Version___' -v '15.0.416' switch_sourcedPoints

# Node dopImport_previousFrame (Sop/dopimport)
opadd -e -n dopimport dopImport_previousFrame
oplocate -x 2.0282278060913086 -y 2.6186113357543945 dopImport_previousFrame
opspareds "" dopImport_previousFrame
chblockbegin
chadd -t 0 0 dopImport_previousFrame integrateovertime
chkey -t 0 -v 0 -m 0 -a 0 -A 0 -T a  -F '1/$FPS' dopImport_previousFrame/integrateovertime
chblockend
opparm -V 15.0.416 dopImport_previousFrame doppath ( /obj/DOPNetwork ) objpattern ( '`stamps("..", "OBJID", arg(dopnodeobjs(".."),0))`' ) singleobject ( off ) importstyle ( fetch ) pivot ( centroid ) viewportlod ( full ) importbyname ( on ) objectnames ( dopobject ) geodatapath ( '`stamps("..", "DATANAME", chs("../datapath"))`' ) inverseop ( off ) doposxform ( on ) doxform ( on ) keepworldspacepos ( on ) centeratpivot ( on ) addname ( off ) adddopobjectname ( off ) adddopobjectid ( off ) addtoexistingvel ( on ) deleteabandoned ( on ) pointvels ( none ) integrateovertime ( integrateovertime ) donotsim ( on )
chlock dopImport_previousFrame -*
chautoscope dopImport_previousFrame -*
opcolor -c 0.80000001192092896 0.80000001192092896 0.80000001192092896 dopImport_previousFrame
opset -d off -r off -h off -f off -y off -t off -l off -s off -u off -c off -e on -b off dopImport_previousFrame
opexprlanguage -s hscript dopImport_previousFrame
opuserdata -n '___Version___' -v '15.0.416' dopImport_previousFrame
oporder -e scatter_testPoints attributeCreate_pscale copy_testSpheres sphere objectMerge_liquidSurface switch_sourcedPoints dopImport_previousFrame 
opcf ..
oporder -e inputs DOPNetwork shapes forces numbers controls ipr_camera ipr_camera1 ipr_camera2 testScales 
opcf ..

# Node out (/out)

# Node part (/part)

# Node ch (/ch)

# Node shop (/shop)

# Node img (/img)
oporder -e obj out part ch shop img vex 

opcf /
opcf obj
opcf inputs
opwire -n delete_nonDensity -0 scatter_initialPoints
opwire -n attributeCreate_id -0 OUT_initialPoints
opwire -n attributeCreate_v1 -0 vdbFromPolygons
opwire -n delete_nonVelocity -0 OUT_liquidVelocity
opwire -n scatter_initialPoints -0 attributeCreate_pscale
opwire -n scatter_sourcePoints -0 OUT_emissionGeometry
opwire -n tube1 -0 group_highVel
opwire -n bound_band -1 group_highVel
opwire -n tube1 -0 bound_band
opwire -n vdbFromPolygons -0 delete_nonVelocity
opwire -n facet_computeNormalsLiquid -0 OUT_liquidSurface
opwire -n attributeCreate_radius -0 attributeCreate_massLiquid
opwire -n attributeCreate_massLiquid -0 attributeCreate_volume
opwire -n attributeCreate_pscaleNewPoints -0 attributeCreate_radius
opwire -n attributeCreate_volume -0 attributeCreate_massAir
opwire -n attribcreate_idLocal -0 OUT_newPoints
opwire -n polyextrude_extendSides -0 facet_computeNormalsLiquid
opwire -n group_highVel -0 attributeCreate_v1
opwire -n facet_reverseNormalsContainer -0 OUT_container
opwire -n delete_topCap -0 polyextrude_thickness
opwire -n polyextrude_thickness -0 facet_reverseNormalsContainer
opwire -n attributeCreate_massAir -0 attribcreate_idLocal
opwire -n OUT_container -0 wireframe_container
opwire -n wireframe_container -0 merge_surfaceAndContainer
opwire -n OUT_liquidSurface -1 merge_surfaceAndContainer
opwire -n attributeCreate_pscale -0 attributeCreate_id
opwire -n tube -0 delete_topCap
opwire -n tube1 -0 delete_nonTop
opwire -n vdbFromPolygons_density -0 delete_nonDensity
opwire -n delete_nonDensity -0 scatter_sourcePoints
opwire -n remesh_constantEdges -0 mountain_waves
opwire -n delete_nonTop -0 remesh_constantEdges
opwire -n group_boundaryEdges -0 polyextrude_extendSides
opwire -n mountain_waves -0 group_boundaryPoints
opwire -n group_boundaryPoints -0 group_boundaryEdges
opwire -n dopImport_newPoints -0 attributeCreate_pscaleNewPoints
opwire -n peak_smaller -0 vdbFromPolygons_density
opwire -n tube1 -0 peak_smaller
opcf ..
opcf DOPNetwork
opwire -n popSolver -0 output
opwire -n popObject_initialPoints -0 popSolver
opwire -n merge2 -1 popSolver
opwire -n forces -2 popSolver
opwire -n popsource_newPoints -0 merge_newPoints
opwire -n POPSolver_prepareNewPoints -1 merge_newPoints
opcf POPSolver_prepareNewPoints
opwire -n dop_geometry -0 attributeCreate_pscale
opwire -n attributeCreate_radius -0 attributeCreate_massLiquid
opwire -n attributeCreate_massLiquid -0 attributeCreate_volume
opwire -n attributeCreate_pscale -0 attributeCreate_radius
opwire -n attributeCreate_volume -0 attributeCreate_massAir
opcf ..
opcf forces
opcf ..
opcf POPSolver_updateNumbers
opwire -n dop_geometry -0 attributeCreate_pscale
opwire -n attributeCreate_radius -0 attributeCreate_massLiquid
opwire -n attributeCreate_massLiquid -0 attributeCreate_volume
opwire -n attributeCreate_pscale -0 attributeCreate_radius
opwire -n attributeCreate_volume -0 attributeCreate_massAir
opcf ..
opwire -n merge_newPoints -0 merge_updatedPoints
opwire -n POPSolver_updateNumbers -1 merge_updatedPoints
opwire -n merge_updatedPoints -0 merge2
opwire -n popAdvectByVolumes -1 merge2
opcf ..
opcf shapes
opwire -n sphere -0 subdivide_sphere
opwire -n subdivide_sphere -0 copy_spheres
opwire -n switch_colorGroups -1 copy_spheres
opwire -n objectMerge_simulationPoints -0 delete_primitives
opwire -n copy_spheres -0 point_alpha
opwire -n color_onSurface -0 color_inLiquid
opwire -n delete_primitives -0 color_inAir
opwire -n color_inAir -0 color_onSurface
opwire -n color_inLiquid -0 color_outside
opwire -n delete_primitives -0 switch_colorGroups
opwire -n color_outside -1 switch_colorGroups
opcf ..
opcf forces
opwire -n group_weakInteraction -0 connectAdjacentPieces
opwire -n attributePromote_weakInteractionToVertex -0 attributeWrangle_orientForce
opwire -n attributeWrangle_displacedVolumeLiquid -0 attributeWrangle_strongInteraction
opwire -n attributePromote_Rj -0 attributeWrangle_restlength
opwire -n attributePromote_Pj -0 attributeWrangle_link
opwire -n switch_strongInteraction -0 attributeWrangle_weakInteraction
opwire -n attributeWrangle_link -0 attributeWrangle_lengthWeak
opwire -n ray_inLiquid -0 attributeWrangle_inLiquid
opwire -n ray_inAir -0 attributeWrangle_inAir
opwire -n attributePromote_weakInteractionUpToPoint -0 attributeWrangle_buoyancy
opwire -n switch_buoyancy -0 attributeWrangle_surfaceTension
opwire -n attributeWrangle_inAirForces -0 color_strongInteraction
opwire -n color_strongInteraction -0 color_weakInteraction
opwire -n attributeWrangle_inLiquidForces -0 attributeWrangle_onSurfaceForces
opwire -n attributeDelete_vertexAttributes2 -0 attributeWrangle_inLiquidForces
opwire -n attributeWrangle_onSurfaceForces -0 attributeWrangle_inAirForces
opwire -n group_delete -0 attributeWrangle_deletePreviousForces
opwire -n switch_generalScale -0 attributeWrangle_gravity
opwire -n switch_gravity -0 attributeWrangle_damping
opwire -n switch_damping -0 OUT
opwire -n attributeCreate_sign -0 attributePromote_Pi
opwire -n attributePromote_Pi -0 attributePromote_Pj
opwire -n delete_nonRelevant -0 attributeCreate_sign
opwire -n switch_weakInteraction -0 attributePromote_strongInteractionToVertex
opwire -n attributeWrangle_orientForce -0 attributePromote_strongInteractionUpToPoint
opwire -n dopImport_previousFrame -0 delete_allPrimitives
opwire -n group_strongInteraction -0 attributePromote_Ri
opwire -n attributePromote_Ri -0 attributePromote_Rj
opwire -n group_weakInteractionUpdate -0 delete_nonRelevant
opwire -n switch_solid -0 attributesCreate_mutiple
opwire -n tetrahedralize_connectNeighbours -0 group_weakInteraction
opwire -n attributesCreate_mutiple -0 tetrahedralize_connectNeighbours
opwire -n connectAdjacentPieces -0 group_strongInteraction
opwire -n attributePromote_strongInteractionToVertex -0 attributePromote_weakInteractionToVertex
opwire -n attributePromote_strongInteractionUpToPoint -0 attributePromote_weakInteractionUpToPoint
opwire -n delete_allPrimitives -0 attributeDelete_vertexAttributes
opwire -n attributeWrangle_lengthWeak -0 attributePromote_minLinkLength
opwire -n attributePromote_minLinkLength -0 attributePromote_selectedMinLength
opwire -n group_weakInteractionUpdate2 -0 delete_nonInteraction
opwire -n attributePromote_selectedMinLength -0 group_weakInteractionUpdate2
opwire -n attributeWrangle_restlength -0 group_strongInteractionUpdate
opwire -n group_strongInteractionUpdate -0 group_weakInteractionUpdate
opwire -n attributeCreate_multiple3 -0 ray_inLiquid
opwire -n objectMerge_liquidSurface -1 ray_inLiquid
opwire -n attributeWrangle_inLiquid -0 ray_inAir
opwire -n objectMerge_liquidSurface -1 ray_inAir
opwire -n switch_surfaceTension -0 attributeDelete_vertexAttributes2
opwire -n transform1 -0 ray_liquidToBubbles
opwire -n copy1 -1 ray_liquidToBubbles
opwire -n objectMerge_liquidSurface -0 transform1
opwire -n attributeWrangle_inAir -0 group_onSurface
opwire -n sphere1 -0 copy1
opwire -n group_onSurface -1 copy1
opwire -n attributeCreate_dist -0 ray_onSurface
opwire -n ray_liquidToBubbles -1 ray_onSurface
opwire -n ray_onSurface -0 group_updateOnSurface
opwire -n group_onSurface -0 attributeCreate_dist
opwire -n group_updateOnSurface -0 group_updateInAir
opwire -n group_updateInAir -0 group_updateInLiquid
opwire -n attributeDelete_vertexAttributes -0 group_delete
opwire -n attributeWrangle_deletePreviousForces -0 attributeCreate_multiple3
opwire -n delete_nonInteraction -0 attributeWrangle_displacedVolumeSurface
opwire -n attributeWrangle_displacedVolumeSurface -0 attributeWrangle_displacedVolumeLiquid
opwire -n attributeCreate_originalPoint -0 ray_onSurfaceToSolid
opwire -n objectMerge_container -1 ray_onSurfaceToSolid
opwire -n attributeWrangle_toSolid -0 ray_FromContainerToSpheres
opwire -n attribute_idToPointId -1 ray_FromContainerToSpheres
opwire -n point_pointId -0 group_closeSolid
opwire -n copy1 -0 attribute_idToPointId
opwire -n group_updateInLiquid -0 attributeCreate_pointIdLocal
opwire -n attributeCreate_toSolid -0 attributeWrangle_distNull
opwire -n switch_solidStronInteraction -0 attributeWrangle_solidAttraction
opwire -n point_toSolid -0 point_pointId
opwire -n ray_FromContainerToSpheres -1 point_pointId
opwire -n point_containerN -0 point_toSolid
opwire -n attributeWrangle_toSolid -1 point_toSolid
opwire -n attributeCreate_pointIdLocal -0 attributeCreate_toSolid
opwire -n attributeWrangle_distNull -0 attributeCreate_originalPoint
opwire -n ray_onSurfaceToSolid -0 attributeWrangle_toSolid
opwire -n pointWrangle_projectToSolid -0 attributeWrangle_solidStrongInteraction
opwire -n switch_generalScale -0 switch_gravity
opwire -n attributeWrangle_gravity -1 switch_gravity
opwire -n attributePromote_weakInteractionUpToPoint -0 switch_buoyancy
opwire -n attributeWrangle_buoyancy -1 switch_buoyancy
opwire -n switch_buoyancy -0 switch_surfaceTension
opwire -n attributeWrangle_surfaceTension -1 switch_surfaceTension
opwire -n pointWrangle_projectToSolid -0 switch_solidStronInteraction
opwire -n attributeWrangle_solidStrongInteraction -1 switch_solidStronInteraction
opwire -n switch_solidStronInteraction -0 switch_solidAttraction
opwire -n attributeWrangle_solidAttraction -1 switch_solidAttraction
opwire -n attributeWrangle_displacedVolumeLiquid -0 switch_strongInteraction
opwire -n attributeWrangle_strongInteraction -1 switch_strongInteraction
opwire -n switch_strongInteraction -0 switch_weakInteraction
opwire -n attributeWrangle_weakInteraction -1 switch_weakInteraction
opwire -n switch_gravity -0 switch_damping
opwire -n attributeWrangle_damping -1 switch_damping
opwire -n color_weakInteraction -0 switch_generalScale
opwire -n attributeWrangle_generalScale -1 switch_generalScale
opwire -n color_weakInteraction -0 attributeWrangle_generalScale
opwire -n group_updateInLiquid -0 switch_solid
opwire -n switch_solidAttraction -1 switch_solid
opwire -n group_closeSolid -0 attributeCreate_solidDistance
opwire -n attributeCreate_solidDistance -0 attributeWrangle_solidDistance
opwire -n attributeWrangle_solidDistance -0 group_outside
opwire -n group_contactSolid -0 group_contactSolidUpdate
opwire -n group_closeSolidUpdate -0 group_contactSolid
opwire -n group_contactSolidUpdate -0 pointWrangle_projectToSolid
opwire -n group_outside -0 group_closeSolidUpdate
opwire -n attributeCreate_originalPoint -0 point_containerN
opwire -n attributeWrangle_toSolid -1 point_containerN
opcf ..
opcf numbers
opwire -n dopImport_previousFrame -0 delete_partOfThePoints
opwire -n dopImport_previousFrame -0 switch_fromFrame20
opwire -n delete_partOfThePoints -1 switch_fromFrame20
opwire -n switch_fromFrame20 -0 OUT_points
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
opcf testScales
opwire -n objectMerge_liquidSurface -0 scatter_testPoints
opwire -n switch_sourcedPoints -0 attributeCreate_pscale
opwire -n sphere -0 copy_testSpheres
opwire -n attributeCreate_pscale -1 copy_testSpheres
opwire -n scatter_testPoints -0 switch_sourcedPoints
opwire -n dopImport_previousFrame -1 switch_sourcedPoints
opcf ..
opcf ..
opcf $saved_path
