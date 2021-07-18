require "prefabutil"

local assets =
{    
    Asset("ANIM", "anim/farm_plow.zip"),
}

local prefabs =
{

}

--todo: make drill do a dotaskintime that drops random minerals, once I get electricity going, make it require power, for now will just use vanilla's
local function onbuilt(inst)
    inst.AnimState:PlayAnimation("drill_pre")
    inst.SoundEmitter:PlaySound("dontstarve/common/winter_meter_craft")
end
 local function output(inst)
inst:DoTaskInTime(     
local function fn()
    local inst = CreateEntity()

    inst.entity:AddTransform()
    inst.entity:AddAnimState()
    inst.entity:AddSoundEmitter()
    inst.entity:AddNetwork()

    MakeObstaclePhysics(inst, .4)

    inst.AnimState:SetBank("farm_plow")
    inst.AnimState:SetBuild("farm_plow")
    inst.AnimState:PlayAnimation("idle_place")

    inst:AddTag("structure")
    inst:AddTag("t1_machinery")
	inst:AddTag("machinery")
    inst.entity:SetPristine()

    if not TheWorld.ismastersim then
        return inst
    end

    inst:AddComponent("inspectable")


    inst:ListenForEvent("onbuilt", onbuilt)

    inst:AddComponent("lootdropper")
    --[[inst:AddComponent("workable")
    inst.components.workable:SetWorkAction(ACTIONS.HAMMER)
    inst.components.workable:SetWorkLeft(4)
    inst.components.workable:SetOnFinishCallback(onhammered)
    inst.components.workable:SetOnWorkCallback(onhit)
    inst.OnSave = onsave 
    inst.OnLoad = onload
]]
    inst:AddComponent("hauntable")
    inst.components.hauntable:SetHauntValue(TUNING.HAUNT_TINY)

    return inst
end

return Prefab("t1_drill", fn, assets, prefabs),
    MakePlacer("farm_plow_item_placer", "t1_drill", "t1_drill", "idle_place")




