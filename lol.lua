getgenv().AimbotInput = "\82\105\103\104\116\67\108\105\99\107"  getgenv().AimbotEasing = 1 getgenv().TeamCheck = false if getgenv().AlreadyRanItBroDanger then return end getgenv().AlreadyRanItBroDanger = "\73\116\39\115\32\116\104\101\32\78\117\116\115\104\97\99\107" local c = game:GetService("\85\115\101\114\73\110\112\117\116\83\101\114\118\105\99\101") local r = game:GetService("\80\108\97\121\101\114\115") local h = game:GetService("\84\101\97\109\115") local n = r.LocalPlayer local d = n:GetMouse() local b = workspace.CurrentCamera workspace:GetPropertyChangedSignal("\67\117\114\114\101\110\116\67\97\109\101\114\97"):Connect(function() b = workspace.CurrentCamera end) local q = false function l(t, k) local p = b.CFrame.Position local j, onscreen = b:WorldToViewportPoint(t.Position) if onscreen then local o = Ray.new(p, t.Position - p) local s = workspace:FindPartOnRayWithIgnoreList(o, n.Character:GetDescendants()) local j = false if s and s:IsDescendantOf(k) then j = true else j = false end return j else return false end end function g() local l_, distance = nil, math.huge for i, v in pairs(r:GetPlayers()) do if v ~= n then pcall(function() local tl = true if getgenv().TeamCheck then if n.TeamColor == v.TeamColor then tl = false end end if (d.Hit.Position - v.Character.PrimaryPart.Position).magnitude < distance and tl then if l(v.Character.Head, v.Character) and v.Character.Humanoid.Health > 0 then l_ = v distance = (d.Hit.Position - v.Character.PrimaryPart.Position).magnitude end end end) end end return l_, distance end c.InputBegan:Connect(function(i, m) if not m then if getgenv().AimbotInput == "\76\101\102\116\67\108\105\99\107" and i.UserInputType == Enum.UserInputType.MouseButton1 then q = true elseif getgenv().AimbotInput == "\82\105\103\104\116\67\108\105\99\107" and i.UserInputType == Enum.UserInputType.MouseButton2 then q = true elseif i.KeyCode.Name == getgenv().AimbotInput then q = true end end end) c.InputEnded:Connect(function(i, m) if not m then if getgenv().AimbotInput == "\76\101\102\116\67\108\105\99\107" and i.UserInputType == Enum.UserInputType.MouseButton1 then q = false elseif getgenv().AimbotInput == "\82\105\103\104\116\67\108\105\99\107" and i.UserInputType == Enum.UserInputType.MouseButton2 then q = false elseif i.KeyCode.Name == getgenv().AimbotInput then q = false end end end) while task.wait() do if q then local kt = g() if kt then local gk = workspace.CurrentCamera.CFrame workspace.CurrentCamera.CFrame = gk:Lerp(CFrame.new(gk.Position, kt.Character.Head.Position), getgenv().AimbotEasing) end end end
