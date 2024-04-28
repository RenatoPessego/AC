
# PlanAhead Launch Script for Post-Synthesis floorplanning, created by Project Navigator

create_project -name Projeto_um_AC-PAULOALVES.2120722_RENATOPESSEGO.2121922 -dir "C:/Users/paulo/Desktop/AC/Projeto_um_AC-PAULOALVES.2120722_RENATOPESSEGO.2121922/planAhead_run_2" -part xc3s500efg320-4
set_property design_mode GateLvl [get_property srcset [current_run -impl]]
set_property edif_top_file "C:/Users/paulo/Desktop/AC/Projeto_um_AC-PAULOALVES.2120722_RENATOPESSEGO.2121922/MotherBoard.ngc" [ get_property srcset [ current_run ] ]
add_files -norecurse { {C:/Users/paulo/Desktop/AC/Projeto_um_AC-PAULOALVES.2120722_RENATOPESSEGO.2121922} }
set_property target_constrs_file "MotherBoard.ucf" [current_fileset -constrset]
add_files [list {MotherBoard.ucf}] -fileset [get_property constrset [current_run]]
link_design
