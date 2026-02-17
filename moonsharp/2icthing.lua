-- [ This project is licensed under the MIT License. ]

--[[

    Join the Discord at
            discord.gg/6R5GuYk3Vw

    Polyspector - A Polytoria Explorer

]] 

local p = game["Players"].LocalPlayer
local g = game["PlayerGUI"]
local ih = false
local is = false
local cr = false
local sp = false
local td = false
local sz = false
local ud = false
local nc = false
local ij = false
local sm = false
local bi = false

local bg = Instance.New("UIView")
bg.Parent = g
bg.Color = Color.New(0.15, 0.15, 0.15, 0.95)
bg.BorderWidth = 1
bg.BorderColor = Color.New(0.25, 0.25, 0.25, 1)
bg.CornerRadius = 4
bg.SizeOffset = Vector2.New(350, 322)
bg.SizeRelative = Vector2.New(0, 0)
bg.PositionRelative = Vector2.New(0.5, 0.5)
bg.PositionOffset = Vector2.New(0, 500)
bg.PivotPoint = Vector2.New(0.5, 0.5)
bg.Visible = false

local bar = Instance.New("UIView")
bar.Parent = bg
bar.Color = Color.New(0.18, 0.18, 0.18, 1)
bar.BorderWidth = 0
bar.CornerRadius = 0
bar.SizeRelative = Vector2.New(1, 0)
bar.SizeOffset = Vector2.New(0, 26)
bar.PositionRelative = Vector2.New(0, 0)
bar.PositionOffset = Vector2.New(0, 0)
bar.PivotPoint = Vector2.New(0, 0)

local nm = Instance.New("UILabel")
nm.Parent = bar
nm.Font = TextFontPreset.SourceSans
nm.FontSize = 12
nm.TextColor = Color.New(1, 1, 1, 1)
nm.Text = "2ic thing"
nm.Color = Color.New(0, 0, 0, 0)
nm.BorderWidth = 0
nm.SizeRelative = Vector2.New(1, 1)
nm.SizeOffset = Vector2.New(0, 0)
nm.PositionRelative = Vector2.New(0, 0)
nm.PositionOffset = Vector2.New(0, 0)
nm.PivotPoint = Vector2.New(0, 0)
nm.JustifyText = TextJustify.Center
nm.VerticalAlign = TextVerticalAlign.Middle

local ob = Instance.New("UIButton")
ob.Parent = g
ob.Font = TextFontPreset.SourceSans
ob.FontSize = 11
ob.TextColor = Color.New(1, 1, 1, 1)
ob.Text = "open"
ob.Color = Color.New(0.18, 0.18, 0.18, 1)
ob.BorderWidth = 1
ob.BorderColor = Color.New(0.25, 0.25, 0.25, 1)
ob.CornerRadius = 4
ob.SizeRelative = Vector2.New(0, 0)
ob.SizeOffset = Vector2.New(50, 26)
ob.PositionRelative = Vector2.New(0, 0.5)
ob.PositionOffset = Vector2.New(8, 0)
ob.PivotPoint = Vector2.New(0, 0.5)
ob.JustifyText = TextJustify.Center
ob.VerticalAlign = TextVerticalAlign.Middle
ob.Visible = true

function show()
    bg.Visible = true
    ob.Visible = false
    Tween:TweenVector2(Vector2.New(0, 500), Vector2.New(0, 0), 0.3, function(v)
        bg.PositionOffset = v
    end, TweenType.easeOutQuad)
end

function hide()
    Tween:TweenVector2(Vector2.New(0, 0), Vector2.New(0, 500), 0.3, function(v)
        bg.PositionOffset = v
    end, TweenType.easeInQuad, function()
        bg.Visible = false
        ob.Visible = true
    end)
end

ob.Clicked:Connect(show)

local wl = Instance.New("UILabel")
wl.Parent = bg
wl.Font = TextFontPreset.SourceSans
wl.FontSize = 11
wl.TextColor = Color.New(0.8, 0.8, 0.8, 1)
wl.Text = "speed"
wl.Color = Color.New(0, 0, 0, 0)
wl.BorderWidth = 0
wl.SizeRelative = Vector2.New(0, 0)
wl.SizeOffset = Vector2.New(40, 22)
wl.PositionRelative = Vector2.New(0, 0)
wl.PositionOffset = Vector2.New(8, 30)
wl.PivotPoint = Vector2.New(0, 0)
wl.JustifyText = TextJustify.Left
wl.VerticalAlign = TextVerticalAlign.Middle

local wi = Instance.New("UITextInput")
wi.Parent = bg
wi.Font = TextFontPreset.SourceSans
wi.FontSize = 11
wi.TextColor = Color.New(1, 1, 1, 1)
wi.Placeholder = "16"
wi.PlaceholderColor = Color.New(0.35, 0.35, 0.35, 1)
wi.Color = Color.New(0.1, 0.1, 0.1, 1)
wi.BorderWidth = 1
wi.BorderColor = Color.New(0.25, 0.25, 0.25, 1)
wi.CornerRadius = 3
wi.SizeRelative = Vector2.New(0, 0)
wi.SizeOffset = Vector2.New(110, 22)
wi.PositionRelative = Vector2.New(0, 0)
wi.PositionOffset = Vector2.New(52, 30)
wi.PivotPoint = Vector2.New(0, 0)

wi.Submitted:Connect(function()
    local n = tonumber(wi.Text)
    if n then
        p.WalkSpeed = n
        p.SprintSpeed = n * 1.5
    end
end)

local zl = Instance.New("UILabel")
zl.Parent = bg
zl.Font = TextFontPreset.SourceSans
zl.FontSize = 11
zl.TextColor = Color.New(0.8, 0.8, 0.8, 1)
zl.Text = "size"
zl.Color = Color.New(0, 0, 0, 0)
zl.BorderWidth = 0
zl.SizeRelative = Vector2.New(0, 0)
zl.SizeOffset = Vector2.New(30, 22)
zl.PositionRelative = Vector2.New(0, 0)
zl.PositionOffset = Vector2.New(180, 30)
zl.PivotPoint = Vector2.New(0, 0)
zl.JustifyText = TextJustify.Left
zl.VerticalAlign = TextVerticalAlign.Middle

local zi = Instance.New("UITextInput")
zi.Parent = bg
zi.Font = TextFontPreset.SourceSans
zi.FontSize = 11
zi.TextColor = Color.New(1, 1, 1, 1)
zi.Placeholder = "1,1,1"
zi.PlaceholderColor = Color.New(0.35, 0.35, 0.35, 1)
zi.Color = Color.New(0.1, 0.1, 0.1, 1)
zi.BorderWidth = 1
zi.BorderColor = Color.New(0.25, 0.25, 0.25, 1)
zi.CornerRadius = 3
zi.SizeRelative = Vector2.New(0, 0)
zi.SizeOffset = Vector2.New(120, 22)
zi.PositionRelative = Vector2.New(0, 0)
zi.PositionOffset = Vector2.New(218, 30)
zi.PivotPoint = Vector2.New(0, 0)

zi.Submitted:Connect(function()
    local q = {}
    for v in string.gmatch(zi.Text, "[^,]+") do
        table.insert(q, tonumber(v))
    end
    if #q == 3 and q[1] and q[2] and q[3] then
        p.Size = Vector3.New(q[1], q[2], q[3])
    end
end)

local tl = Instance.New("UILabel")
tl.Parent = bg
tl.Font = TextFontPreset.SourceSans
tl.FontSize = 11
tl.TextColor = Color.New(0.8, 0.8, 0.8, 1)
tl.Text = "tp"
tl.Color = Color.New(0, 0, 0, 0)
tl.BorderWidth = 0
tl.SizeRelative = Vector2.New(0, 0)
tl.SizeOffset = Vector2.New(20, 22)
tl.PositionRelative = Vector2.New(0, 0)
tl.PositionOffset = Vector2.New(8, 56)
tl.PivotPoint = Vector2.New(0, 0)
tl.JustifyText = TextJustify.Left
tl.VerticalAlign = TextVerticalAlign.Middle

local ti = Instance.New("UITextInput")
ti.Parent = bg
ti.Font = TextFontPreset.SourceSans
ti.FontSize = 11
ti.TextColor = Color.New(1, 1, 1, 1)
ti.Placeholder = "player name"
ti.PlaceholderColor = Color.New(0.35, 0.35, 0.35, 1)
ti.Color = Color.New(0.1, 0.1, 0.1, 1)
ti.BorderWidth = 1
ti.BorderColor = Color.New(0.25, 0.25, 0.25, 1)
ti.CornerRadius = 3
ti.SizeRelative = Vector2.New(0, 0)
ti.SizeOffset = Vector2.New(305, 22)
ti.PositionRelative = Vector2.New(0, 0)
ti.PositionOffset = Vector2.New(35, 56)
ti.PivotPoint = Vector2.New(0, 0)

ti.Submitted:Connect(function()
    local t = game["Players"]:GetPlayer(ti.Text)
    if t then
        p.Position = t.Position
    end
end)

local ln = Instance.New("UIView")
ln.Parent = bg
ln.Color = Color.New(0.25, 0.25, 0.25, 1)
ln.BorderWidth = 0
ln.SizeRelative = Vector2.New(1, 0)
ln.SizeOffset = Vector2.New(0, 1)
ln.PositionRelative = Vector2.New(0, 0)
ln.PositionOffset = Vector2.New(0, 82)
ln.PivotPoint = Vector2.New(0, 0)

function btn(txt, x, y, w)
    local b = Instance.New("UIButton")
    b.Parent = bg
    b.Font = TextFontPreset.SourceSans
    b.FontSize = 11
    b.TextColor = Color.New(1, 1, 1, 1)
    b.Text = txt
    b.Color = Color.New(0.18, 0.18, 0.18, 1)
    b.BorderWidth = 1
    b.BorderColor = Color.New(0.25, 0.25, 0.25, 1)
    b.CornerRadius = 3
    b.SizeRelative = Vector2.New(0, 0)
    b.SizeOffset = Vector2.New(w, 26)
    b.PositionRelative = Vector2.New(0, 0)
    b.PositionOffset = Vector2.New(x, y)
    b.PivotPoint = Vector2.New(0, 0)
    b.JustifyText = TextJustify.Center
    b.VerticalAlign = TextVerticalAlign.Middle
    return b
end

local ib = btn("infinite stamina", 8, 88, 162)
local hb = btn("inf health", 180, 88, 162)
local tb = btn("2d", 8, 120, 162)
local cb = btn("uhh idk lol", 180, 120, 162)
local sb = btn("spin", 8, 152, 162)
local ub = btn("upside down", 180, 152, 162)
local mb = btn("be very small", 8, 184, 162)
local bb = btn("be very big", 180, 184, 162)
local nb = btn("noclip", 8, 216, 162)
local jb = btn("inf jump", 180, 216, 162)
local xb = btn("seizure", 8, 248, 334)

function tog(a, b)
    if a then
        b.Color = Color.New(0.1, 0.35, 0.1, 1)
        b.BorderColor = Color.New(0.15, 0.5, 0.15, 1)
    else
        b.Color = Color.New(0.18, 0.18, 0.18, 1)
        b.BorderColor = Color.New(0.25, 0.25, 0.25, 1)
    end
end

ib.Clicked:Connect(function()
    is = not is
    tog(is, ib)
end)

hb.Clicked:Connect(function()
    ih = not ih
    tog(ih, hb)
end)

tb.Clicked:Connect(function()
    td = not td
    tog(td, tb)
    if td then
        p.Size = Vector3.New(0.01, p.Size.y, p.Size.x)
        Camera.Orthographic = true
        Camera.OrthographicSize = 15
    else
        p.Size = Vector3.New(1, 1, 1)
        Camera.Orthographic = false
    end
end)

cb.Clicked:Connect(function()
    cr = not cr
    tog(cr, cb)
    if not cr then
        p.Size = Vector3.New(1, 1, 1)
        p.WalkSpeed = 16
        p.SprintSpeed = 25
        p.JumpPower = 36
        p:ResetAppearance()
        Camera.FOV = 60
        Camera.RotationOffset = Vector3.New(0, 0, 0)
    end
end)

sb.Clicked:Connect(function()
    sp = not sp
    tog(sp, sb)
end)

ub.Clicked:Connect(function()
    ud = not ud
    tog(ud, ub)
    if ud then
        p.Rotation = Vector3.New(0, p.Rotation.y, 180)
    else
        p.Rotation = Vector3.New(0, p.Rotation.y, 0)
    end
end)

mb.Clicked:Connect(function()
    sm = not sm
    tog(sm, mb)
    if sm then
        bi = false
        tog(bi, bb)
        p.Size = Vector3.New(0.2, 0.2, 0.2)
    else
        p.Size = Vector3.New(1, 1, 1)
    end
end)

bb.Clicked:Connect(function()
    bi = not bi
    tog(bi, bb)
    if bi then
        sm = false
        tog(sm, mb)
        p.Size = Vector3.New(10, 10, 10)
    else
        p.Size = Vector3.New(1, 1, 1)
    end
end)

nb.Clicked:Connect(function()
    nc = not nc
    tog(nc, nb)
end)

jb.Clicked:Connect(function()
    ij = not ij
    tog(ij, jb)
end)

xb.Clicked:Connect(function()
    sz = not sz
    tog(sz, xb)
    if not sz then
        p.Size = Vector3.New(1, 1, 1)
    end
end)

local ln2 = Instance.New("UIView")
ln2.Parent = bg
ln2.Color = Color.New(0.25, 0.25, 0.25, 1)
ln2.BorderWidth = 0
ln2.SizeRelative = Vector2.New(1, 0)
ln2.SizeOffset = Vector2.New(0, 1)
ln2.PositionRelative = Vector2.New(0, 0)
ln2.PositionOffset = Vector2.New(0, 280)
ln2.PivotPoint = Vector2.New(0, 0)

local cl = Instance.New("UIButton")
cl.Parent = bg
cl.Font = TextFontPreset.SourceSans
cl.FontSize = 12
cl.TextColor = Color.New(1, 1, 1, 1)
cl.Text = "close"
cl.Color = Color.New(0.3, 0.1, 0.1, 1)
cl.BorderWidth = 1
cl.BorderColor = Color.New(0.4, 0.15, 0.15, 1)
cl.CornerRadius = 3
cl.SizeRelative = Vector2.New(0, 0)
cl.SizeOffset = Vector2.New(334, 26)
cl.PositionRelative = Vector2.New(0.5, 0)
cl.PositionOffset = Vector2.New(0, 286)
cl.PivotPoint = Vector2.New(0.5, 0)
cl.JustifyText = TextJustify.Center
cl.VerticalAlign = TextVerticalAlign.Middle

cl.Clicked:Connect(hide)

function tick(d)
    if is then
        p.Stamina = p.MaxStamina
    end
    if ih then
        p.Health = p.MaxHealth
    end
    if cr then
        p.Size = Vector3.New(math.random() * 4 + 0.5, math.random() * 4 + 0.5, math.random() * 4 + 0.5)
        p.WalkSpeed = math.random(5, 100)
        p.JumpPower = math.random(20, 200)
        p.HeadColor = Color.Random()
        p.TorsoColor = Color.Random()
        p.LeftArmColor = Color.Random()
        p.RightArmColor = Color.Random()
        p.LeftLegColor = Color.Random()
        p.RightLegColor = Color.Random()
        Camera.FOV = math.random(30, 120)
        Camera.RotationOffset = Vector3.New(math.random(-15, 15), math.random(-15, 15), math.random(-15, 15))
    end
    if sp then
        p:Rotate(Vector3.New(0, 300 * d, 0))
    end
    if sz then
        p.Size = Vector3.New(math.random() * 8 + 0.2, math.random() * 8 + 0.2, math.random() * 8 + 0.2)
    end
    if nc then
        local parts = game["Environment"]:GetChildren()
        for i, v in ipairs(parts) do
            if v:IsA("Part") then
                v.CanCollide = false
            end
        end
    end
end

game.Rendered:Connect(tick)

Input.KeyDown:Connect(function(k)
    if k == "Space" and ij then
        p.Velocity = Vector3.New(p.Velocity.x, p.JumpPower, p.Velocity.z)
    end
end)

show()
