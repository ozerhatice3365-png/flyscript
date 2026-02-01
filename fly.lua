(camCF.LookVector * moveDirection.Z)

            humanoidRootPart.Velocity = moveWorld * flySpeed
        else
            humanoidRootPart.Velocity = Vector3.new(0, 0, 0)
        end
    end
end)

-- Fly aç/kapa
toggleFlyBtn.MouseButton1Click:Connect(function()
    isFlying = not isFlying
    toggleFlyBtn.Text = isFlying and "Fly: ON" or "Fly: OFF"
end)

-- Hız azalt
slowerBtn.MouseButton1Click:Connect(function()
    flySpeed = math.max(10, flySpeed - speedStep)
    slowerBtn.Text = "- Hız (" .. flySpeed .. ")"
end)

-- Hız artır
fasterBtn.MouseButton1Click:Connect(function()
    flySpeed = flySpeed + speedStep
    fasterBtn.Text = "+ Hız (" .. flySpeed .. ")"
end)
