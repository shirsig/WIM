local _G = getfenv(0)

local ShortcutCount = 5

local skin = {
	message_window = {
		texture = [[Interface\AddOns\WIM\textures\message_window]],
		min_width = 256,
		min_height = 128,
		backdrop = {
			top_left = {
				width = 64,
				height = 64,
				offset = {0, 0},
				texture_coord = {0, 0, 0, .25, .25, 0, .25, .25}
			},
			top_right = {
				width = 64,
				height = 64,
				offset = {0, 0},
				texture_coord = {.75, 0, .75, .25, 1, 0, 1, .25}
			},
			bottom_left = {
				width = 64,
				height = 64,
				offset = {0, 0},
				texture_coord = {0, .75, 0, 1, .25, .75, .25, 1}
			},
			bottom_right = {
				width = 64,
				height = 64,
				offset = {0, 0},
				texture_coord = {.75, .75, .75, 1, 1, .75, 1, 1}
			},
			top = {
				tile = false,
				texture_coord = {.25, 0, .25, .25, .75, 0, .75, .25}
			},
			bottom = {
				tile = false,
				texture_coord = {.25, .75, .25, 1, .75, .75, .75, 1}
			},
			left = {
				tile = false,
				texture_coord = {0, .25, 0, .75, .25, .25, .25, .75}
			},
			right = {
				tile = false,
				texture_coord = {.75, .25, .75, .75, 1, .25, 1, .75}
			},
			background = {
				tile = false,
				texture_coord = {.25, .25, .25, .75, .75, .25, .75, .75}
			}
		},
		widgets = {
			class_icon = {
				texture = [[Interface\AddOns\WIM\textures\class_icons]],
				chatAlphaMask = [[Interface\AddOns\WIM\textures\chatAlphaMask]],
				width = 64,
				height = 64,
				points = {
					{"TOPLEFT", "window", "TOPLEFT", -10, 12}
				},
				is_round = true,
				blank = {.5, .5, .5, .75, .75, .5, .75, .75},
				druid = {0, 0, 0, .25, .25, 0, .25, .25},
				hunter = {.25, 0, .25, .25, .5, 0, .5, .25},
				mage = {.5, 0, .5, .25, .75, 0, .75, .25},
				paladin = {.75, 0, .75, .25, 1, 0, 1, .25},
				priest = {0, .25, 0, .5, .25, .25, .25, .5},
				rogue = {.25, .25, .25, .5, .5, .25, .5, .5},
				shaman = {.5, .25, .5, .5, .75, .25, .75, .5},
				warlock = {.75, .25, .75, .5, 1, .25, 1, .5},
				warrior = {0, .5, 0, .75, .25, .5, .25, .75},
				deathknight = {.75, .5, .75, .75, 1, .5, 1, .75},
				monk = {0, .75, 0, 1, .25, .75, .25, 1},
				gm = {.25, .5, .25, .75, .5, .5, .5, .75},
				demonhunter = {.75, .75, .75, 1, 1, .75, 1, 1}
				--d3 = {.5, .75, .5, 1, .75, .75, .75, 1},
				--bnd = {.25, .75, .25, 1, .5, .75, .5, 1}
			},
			client_icon = {
				texture = [[Interface\AddOns\WIM\textures\client_icons]],
				chatAlphaMask = [[Interface\AddOns\WIM\textures\chatAlphaMask]],
				width = 64,
				height = 64,
				points = {
					{"TOPLEFT", "window", "TOPLEFT", -10, 12}
				},
				is_round = true,
				hots = {.5, .5, .5, .75, .75, .5, .75, .75},
				--druid = {0, 0, 0, .25, .25, 0, .25, .25},
				--hunter = {.25, 0, .25, .25, .5, 0, .5, .25},
				--mage = {.5, 0, .5, .25, .75, 0, .75, .25},
				--paladin = {.75, 0, .75, .25, 1, 0, 1, .25},
				--priest = {0, .25, 0, .5, .25, .25, .25, .5},
				--rogue = {.25, .25, .25, .5, .5, .25, .5, .5},
				--shaman = {.5, .25, .5, .5, .75, .25, .75, .5},
				--warlock = {.75, .25, .75, .5, 1, .25, 1, .5},
				--warrior = {0, .5, 0, .75, .25, .5, .25, .75},
				ow = {.75, .5, .75, .75, 1, .5, 1, .75},
				hs = {0, .75, 0, 1, .25, .75, .25, 1},
				--gm = {.25, .5, .25, .75, .5, .5, .5, .75},
				sc2 = {.75, .75, .75, 1, 1, .75, 1, 1},
				d3 = {.5, .75, .5, 1, .75, .75, .75, 1},
				bnd = {.25, .75, .25, 1, .5, .75, .5, 1}
			},
			from = {
				points = {
					{"TOPLEFT", "window", "TOPLEFT", 50, -8}
				},
				font = "FriendsFont_Normal", --GameFontNormalLarge
				font_color = "ffffff",
				font_height = 16,
				font_flags = "",
				use_class_color = true
			},
			char_info = {
				format = formatDetails,
				points = {
					{"TOP", "window", "TOP", 0, -30}
				},
				font = "GameFontNormal",
				font_color = "ffffff"
			},
			close = {
				state_hide = {
					NormalTexture = "Interface\\Minimap\\UI-Minimap-MinimizeButtonDown-Up",
					PushedTexture = "Interface\\Minimap\\UI-Minimap-MinimizeButtonDown-Down",
					HighlightTexture = "Interface\\Buttons\\UI-Panel-MinimizeButton-Highlight",
					HighlightAlphaMode = "ADD"
				},
				state_close = {
					NormalTexture = "Interface\\Buttons\\UI-Panel-MinimizeButton-Up",
					PushedTexture = "Interface\\Buttons\\UI-Panel-MinimizeButton-Down",
					HighlightTexture = "Interface\\Buttons\\UI-Panel-MinimizeButton-Highlight",
					HighlightAlphaMode = "ADD"
				},
				width = 32,
				height = 32,
				points = {
					{"TOPRIGHT", "window", "TOPRIGHT", 4, 1}
				}
			},
			history = {
				NormalTexture = "Interface\\Buttons\\UI-GuildButton-PublicNote-Up",
				PushedTexture = "Interface\\Buttons\\UI-GuildButton-PublicNote-Up",
				HighlightTexture = "Interface\\Buttons\\UI-GuildButton-PublicNote-Up",
				HighlightAlphaMode = "ADD",
				width = 18,
				height = 18,
				points = {
					{"TOPRIGHT", "window", "TOPRIGHT", -28, -6}
				}
			},
			w2w = {
				NormalTexture = [[Interface\AddOns\WIM\textures\w2w]],
				PushedTexture = [[Interface\AddOns\WIM\textures\w2w]],
				HighlightTexture = [[Interface\AddOns\WIM\textures\w2w]],
				HighlightAlphaMode = "ADD",
				points = {
					{"TOPLEFT", "class_icon", 14, -14},
					{"BOTTOMRIGHT", "class_icon", -14, 14}
				}
			},
			chat_info = {
				NormalTexture = nil, -- by default we don't want a texture, but your skin is welcome to have one.
				PushedTexture = [[Interface\AddOns\WIM\textures\w2w]],
				HighlightTexture = [[Interface\AddOns\WIM\textures\w2w]],
				HighlightAlphaMode = "ADD",
				points = {
					{"TOPLEFT", "class_icon", 14, -14},
					{"BOTTOMRIGHT", "class_icon", -14, 14}
				}
			},
			chatting = {
				NormalTexture = "Interface\\GossipFrame\\PetitionGossipIcon",
				PushedTexture = "Interface\\GossipFrame\\PetitionGossipIcon",
				width = 16,
				height = 16,
				points = {
					{"TOPLEFT", "window", 45, -28}
				}
			},
			scroll_up = {
				NormalTexture = "Interface\\Buttons\\UI-ScrollBar-ScrollUpButton-Up",
				PushedTexture = "Interface\\Buttons\\UI-ScrollBar-ScrollUpButton-Down",
				HighlightTexture = "Interface\\Buttons\\UI-ScrollBar-ScrollUpButton-Highlight",
				DisabledTexture = "Interface\\Buttons\\UI-ScrollBar-ScrollUpButton-Disabled",
				HighlightAlphaMode = "ADD",
				width = 32,
				height = 32,
				points = {
					{"TOPRIGHT", "window", "TOPRIGHT", -4, -39}
				}
			},
			scroll_down = {
				NormalTexture = "Interface\\Buttons\\UI-ScrollBar-ScrollDownButton-Up",
				PushedTexture = "Interface\\Buttons\\UI-ScrollBar-ScrollDownButton-Down",
				HighlightTexture = "Interface\\Buttons\\UI-ScrollBar-ScrollDownButton-Highlight",
				DisabledTexture = "Interface\\Buttons\\UI-ScrollBar-ScrollDownButton-Disabled",
				HighlightAlphaMode = "ADD",
				width = 32,
				height = 32,
				points = {
					{"BOTTOMRIGHT", "window", "BOTTOMRIGHT", -4, 24}
				}
			},
			chat_display = {
				points = {
					{"TOPLEFT", "window", "TOPLEFT", 24, -46},
					{"BOTTOMRIGHT", "window", "BOTTOMRIGHT", -38, 39}
				},
				font = "ChatFontNormal"
			},
			msg_box = {
				font = "ChatFontNormal",
				font_height = 14,
				font_color = {1,1,1},
				points = {
					{"TOPLEFT", "window", "BOTTOMLEFT", 24, 30},
					{"BOTTOMRIGHT", "window", "BOTTOMRIGHT", -10, 4}
				},
			},
			resize = {
				NormalTexture = [[Interface\AddOns\WIM\textures\resize]],
				width = 25,
				height = 25,
				points = {
					{"BOTTOMRIGHT", "window", "BOTTOMRIGHT", 5, -5}
				}
			},
			shortcuts = {
				stack = "DOWN",
				spacing = 2,
				points = {
					{"TOPLEFT", "window", "TOPRIGHT", -30, -70},
					{"BOTTOMRIGHT", "window", "BOTTOMRIGHT", -8, 55}
				},
				buttons = {
					NormalTexture = [[Interface\AddOns\WIM\textures\shortcuts_frame]],
					PushedTexture = "Interface\\Buttons\\UI-Quickslot-Depress",
					HighlightTexture = "Interface\\Buttons\\ButtonHilight-Square",
					HighlightAlphaMode = "ADD",
					icons = {
						location = "Interface\\Icons\\Ability_TownWatch",
						invite = "Interface\\Icons\\Spell_Holy_BlessingOfStrength",
						friend = "Interface\\Icons\\INV_Misc_GroupNeedMore",
						ignore = "Interface\\Icons\\Ability_Physical_Taunt",
					}
				}
			}
		},
	},
	tab_strip = {
		textures = {
			tab = {
				NormalTexture = [[Interface\AddOns\WIM\textures\tab_normal]],
				PushedTexture = [[Interface\AddOns\WIM\textures\tab_selected]],
				HighlightTexture = [[Interface\AddOns\WIM\textures\tab_flash]],
				HighlightAlphaMode = "ADD"
			},
			prev = {
				NormalTexture = "Interface\\MoneyFrame\\Arrow-Left-Up",
				PushedTexture = "Interface\\MoneyFrame\\Arrow-Left-Down",
				DisabledTexture = "Interface\\MoneyFrame\\Arrow-Left-Disabled",
				HighlightTexture = [[Interface\AddOns\WIM\textures\TabArrowLeft]],
				HighlightAlphaMode = "ADD",
				height = 20,
				width = 20,
			},
			next = {
				NormalTexture = "Interface\\MoneyFrame\\Arrow-Right-Up",
				PushedTexture = "Interface\\MoneyFrame\\Arrow-Right-Down",
				DisabledTexture = "Interface\\MoneyFrame\\Arrow-Right-Disabled",
				HighlightTexture = [[Interface\AddOns\WIM\textures\TabArrowRight]],
				HighlightAlphaMode = "ADD",
				height = 20,
				width = 20,
			},
		},
		height = 26,
		points = {
			{"BOTTOMLEFT", "window", "TOPLEFT", 38, -4},
			{"BOTTOMRIGHT", "window", "TOPRIGHT", -20, -4}
		},
		text = {
			font = "ChatFontNormal",
			font_color = {1, 1, 1},
			font_height = 12,
			font_flags = ""
		},
		vertical = false,
	},
	emoticons = {
		width = 0,
		height = 0,
		offset = {0, 0},
		definitions = {
			[":)"] = "Interface\\AddOns\\WIM\\textures\\emoticons\\smile.blp",
			[":-)"] = ":)",
			[":("] = "Interface\\AddOns\\WIM\\textures\\emoticons\\sad.blp",
			[":-("] = ":(",
			["{beer}"] = "Interface\\AddOns\\WIM\\textures\\emoticons\\beer.blp",
			["{drink}"] = "{beer}",
			[":D"] = "Interface\\AddOns\\WIM\\textures\\emoticons\\biggrin.blp",
			[":-D"] = ":D",
			["=D"] = ":D",
			["=-D"] = ":D",
			[":]"] = "Interface\\AddOns\\WIM\\textures\\emoticons\\blush.blp",
			[":-]"] = ":]",
			["(u)"] = "Interface\\AddOns\\WIM\\textures\\emoticons\\brokenheart.blp",
			["</3"] = "(u)",
			["{broken}"] = "(u)",
			["{brokenheart}"] = "{broken}",
			["':."] = "Interface\\AddOns\\WIM\\textures\\emoticons\\brow.blp",
			["{brow}"] = "':.",
			["':-."] = "':.",
			["{coffee}"] = "Interface\\AddOns\\WIM\\textures\\emoticons\\coffee.blp",
			["8)"] = "Interface\\AddOns\\WIM\\textures\\emoticons\\cool.blp",
			["8-)"] = "8)",
			[":'("] = "Interface\\AddOns\\WIM\\textures\\emoticons\\cry.blp",
			[":'-("] = ":'(",
			["{ouch}"] = "Interface\\AddOns\\WIM\\textures\\emoticons\\doh.blp",
			[">:."] = "{ouch}",
			[">:-."] = "{ouch}",
			["{dull}"] = "Interface\\AddOns\\WIM\\textures\\emoticons\\dull.blp",
			[":p"] = "Interface\\AddOns\\WIM\\textures\\emoticons\\dumb.blp",
			[":P"] = ":p",
			[":-p"] = ":p",
			[":P"] = ":p",
			[":-P"] = ":p",
			[";p"] = ":p",
			[";P"] = ":p",
			[";-p"] = ":p",
			[";-P"] = ":p",
			["O.o"] = "Interface\\AddOns\\WIM\\textures\\emoticons\\speechless.blp",
			["0.o"] = "O.o",
			["o.O"] = "O.o",
			["o.0"] = "O.o",
			[">:("] = "Interface\\AddOns\\WIM\\textures\\emoticons\\envy.blp",
			[">:-("] = ">:(",
			["{flip}"] = "Interface\\AddOns\\WIM\\textures\\emoticons\\finger.blp",
			["{finger}"] = "{flip}",
			["nlm"] = "{flip}",
			["{rose}"] = "Interface\\AddOns\\WIM\\textures\\emoticons\\flower.blp",
			["{flower}"] = "{rose}",
			["<-@"] = "{rose}",
			["8|"] = "Interface\\AddOns\\WIM\\textures\\emoticons\\glass.blp",
			["8-|"] = "8|",
			["{hi}"] = "Interface\\AddOns\\WIM\\textures\\emoticons\\hihi.blp",
			[":*"] = "Interface\\AddOns\\WIM\\textures\\emoticons\\kiss.blp",
			[":-*"] = ":*",
			["{kiss}"] = ":*",
			["{martini}"] = "Interface\\AddOns\\WIM\\textures\\emoticons\\martini.blp",
			["{mmm}"] = "Interface\\AddOns\\WIM\\textures\\emoticons\\mmm.blp",
			["{butt}"] = "Interface\\AddOns\\WIM\\textures\\emoticons\\mooning.blp",
			["{no}"] = "Interface\\AddOns\\WIM\\textures\\emoticons\\no.blp",
			["O.O"] = "Interface\\AddOns\\WIM\\textures\\emoticons\\ohh.blp",
			["0.0"] = "O.O",
			["=-o"] = "O.O",
			[":("] = "Interface\\AddOns\\WIM\\textures\\emoticons\\sad.blp",
			[":-("] = ":(",
			[":$"] = "Interface\\AddOns\\WIM\\textures\\emoticons\\sealed.blp",
			[":-$"] = ":$",
			["{smoke}"] = "Interface\\AddOns\\WIM\\textures\\emoticons\\smoke.blp",
			["o_o"] = "Interface\\AddOns\\WIM\\textures\\emoticons\\speechless.blp",
			["0_o"] = "o_o",
			["O_o"] = "o_o",
			["O_O"] = "o_o",
			["0_0"] = "o_o",
			["{tired}"] = "Interface\\AddOns\\WIM\\textures\\emoticons\\tired.blp",
			["{wasntme}"] = "Interface\\AddOns\\WIM\\textures\\emoticons\\wasntme.blp",
			["{yes}"] = "Interface\\AddOns\\WIM\\textures\\emoticons\\yes.blp",
			["{rock}"] = "Interface\\AddOns\\WIM\\textures\\emoticons\\rock.blp",
			["lml"] = "{rock}",
			["{drunk}"] = "Interface\\AddOns\\WIM\\textures\\emoticons\\drunk.blp",
			["{ninja}"] = "Interface\\AddOns\\WIM\\textures\\emoticons\\ninja.blp",
			["{angry}"] = "Interface\\AddOns\\WIM\\textures\\emoticons\\angry.blp",
			[">:o"] = "{angry}",
			[">:-o"] = "{angry}",
			[">:O"] = "{angry}",
			[">:-O"] = "{angry}",
			["{heart}"] = "Interface\\AddOns\\WIM\\textures\\emoticons\\heart.blp",
			["<3"] = "{heart}",
			["{wink}"] = "Interface\\AddOns\\WIM\\textures\\emoticons\\wink.blp",
			[";)"] = "{wink}",
			[";-)"] = "{wink}",
			["{eat}"] = "Interface\\AddOns\\WIM\\textures\\emoticons\\eat.blp",
			["{pizza}"] = "{eat}",
			["{drunk}"] = "Interface\\AddOns\\WIM\\textures\\emoticons\\drunk.blp",
			["{devil}"] = "Interface\\AddOns\\WIM\\textures\\emoticons\\devil.blp",
			["{callme}"] = "Interface\\AddOns\\WIM\\textures\\emoticons\\callme.blp",
			["{boom}"] = "Interface\\AddOns\\WIM\\textures\\emoticons\\boom.blp",
			["{explode}"] = "{boom}",
			["{money}"] = "Interface\\AddOns\\WIM\\textures\\emoticons\\money.blp",
			["$"] = "{money}",
			["{evil}"] = "Interface\\AddOns\\WIM\\textures\\emoticons\\evil.blp",
			["{flex}"] = "Interface\\AddOns\\WIM\\textures\\emoticons\\flex.blp",
			["{strong}"] = "{flex}",
			["{phone}"] = "Interface\\AddOns\\WIM\\textures\\emoticons\\phone.blp",
			["{cell}"] = "{phone}",
			["{puke}"] = "Interface\\AddOns\\WIM\\textures\\emoticons\\puke.blp",
			["{barf}"] = "{puke}",
			["{wait}"] = "Interface\\AddOns\\WIM\\textures\\emoticons\\wait.blp",
			["{rain}"] = "Interface\\AddOns\\WIM\\textures\\emoticons\\rain.blp",
			["{badday}"] = "{rain}",
			["{zipper}"] = "Interface\\AddOns\\WIM\\textures\\emoticons\\zipper.blp",
			["{zipped}"] = "{zipper}",
			["{zip}"] = "{zipper}",
			["{hi}"] = "Interface\\AddOns\\WIM\\textures\\emoticons\\hi.blp",
			["{tired}"] = "Interface\\AddOns\\WIM\\textures\\emoticons\\tired.blp",
			["{nervous}"] = "Interface\\AddOns\\WIM\\textures\\emoticons\\nervous.blp",
			["{scared}"] = "{nervous}",
			["{smoke}"] = "Interface\\AddOns\\WIM\\textures\\emoticons\\smoke.blp",
			["{cig}"] = "{smoke}",
			["{angel}"] = "Interface\\AddOns\\WIM\\textures\\emoticons\\angel.blp",
			["O:)"] = "{angel}",
		}
	}
}

function WIM_SetWidgetFont(f, widgetSkinTable)
	if widgetSkinTable.font then
		if _G[widgetSkinTable.font] then
			f:SetFontObject(_G[widgetSkinTable.font])
			local font, height, flags = _G[widgetSkinTable.font]:GetFont()
			f:SetFont(font, widgetSkinTable.font_height or height, widgetSkinTable.font_flags or flags)
		elseif libs.SML.MediaTable.font[widgetSkinTable.font] then
			f:SetFont(libs.SML.MediaTable.font[widgetSkinTable.font], widgetSkinTable.font_height or 12, widgetSkinTable.font_flags or "")
		else
			local font, height, flags = _G["ChatFontNormal"]:GetFont()
			f:SetFont(font, widgetSkinTable.font_height or 12, widgetSkinTable.font_flags or "")
		end
	end
	if widgetSkinTable.font_color then
		if type(widgetSkinTable.font_color) == "table" then
			f:SetTextColor(unpack(widgetSkinTable.font_color))
		else
			f:SetTextColor(RGBHexToPercent(widgetSkinTable.font_color))
		end
	end
end

function WIM_SetWidgetRect(f, widgetSkinTable)
	if type(widgetSkinTable) == "table" then
		if type(widgetSkinTable.width) == "number" then
			f:SetWidth(widgetSkinTable.width)
		end
		if type(widgetSkinTable.height) == "number" then
			f:SetHeight(widgetSkinTable.height)
		end
		if widgetSkinTable.points then
			setPointsToObj(f, widgetSkinTable.points)
		end
	end
end

function WIM_ApplySkinToWidget(f)
	if f.GetObjectType then
		local widgetSkin = skin.message_window.widgets[f.widgetName] or f.defaultSkin
		local oType = f:GetObjectType()
		WIM_SetWidgetRect(f, widgetSkin)
		if oType == "Button" or oType == "CheckButton" then
			if widgetSkin.NormalTexture then f:SetNormalTexture(widgetSkin.NormalTexture) end
			if widgetSkin.PushedTexture then f:SetPushedTexture(widgetSkin.PushedTexture) end
			if widgetSkin.DisabledTexture then f:SetDisabledTexture(widgetSkin.DisabledTexture) end
			if widgetSkin.HighlightTexture then f:SetHighlightTexture(widgetSkin.HighlightTexture, widgetSkin.HighlightAlphaMode) end
		end
		if oType == "FontString" or oType == "ScrollingMessageFrame" or oType == "EditBox" then
			WIM_SetWidgetFont(f, widgetSkin)
		end
	else
		dPrint("Invalid widget trying to be skinned.")
	end
	if f.UpdateSkin then
		f:UpdateSkin()
	end
end

function WIM_ApplySkinToWindow(f)
	local fName = f:GetName()

	f:SetMinResize(skin.message_window.min_width, skin.message_window.min_height)

	--set backdrop edges and background textures.
	local tl = f.widgets.Backdrop.tl
	tl:SetTexture(skin.message_window.texture)
	tl:SetTexCoord(unpack(skin.message_window.backdrop.top_left.texture_coord))
	tl:ClearAllPoints()
	tl:SetPoint("TOPLEFT", fName.."Backdrop", "TOPLEFT", unpack(skin.message_window.backdrop.top_left.offset))
	tl:SetWidth(skin.message_window.backdrop.top_left.width)
	tl:SetHeight(skin.message_window.backdrop.top_left.height)
	local tr = f.widgets.Backdrop.tr
	tr:SetTexture(skin.message_window.texture)
	tr:SetTexCoord(unpack(skin.message_window.backdrop.top_right.texture_coord))
	tr:ClearAllPoints()
	tr:SetPoint("TOPRIGHT", fName.."Backdrop", "TOPRIGHT", unpack(skin.message_window.backdrop.top_right.offset))
	tr:SetWidth(skin.message_window.backdrop.top_right.width)
	tr:SetHeight(skin.message_window.backdrop.top_right.height)
	local bl = f.widgets.Backdrop.bl
	bl:SetTexture(skin.message_window.texture)
	bl:SetTexCoord(unpack(skin.message_window.backdrop.bottom_left.texture_coord))
	bl:ClearAllPoints()
	bl:SetPoint("BOTTOMLEFT", fName.."Backdrop", "BOTTOMLEFT", unpack(skin.message_window.backdrop.bottom_left.offset))
	bl:SetWidth(skin.message_window.backdrop.bottom_left.width)
	bl:SetHeight(skin.message_window.backdrop.bottom_left.height)
	local br = f.widgets.Backdrop.br
	br:SetTexture(skin.message_window.texture)
	br:SetTexCoord(unpack(skin.message_window.backdrop.bottom_right.texture_coord))
	br:ClearAllPoints()
	br:SetPoint("BOTTOMRIGHT", fName.."Backdrop", "BOTTOMRIGHT", unpack(skin.message_window.backdrop.bottom_right.offset))
	br:SetWidth(skin.message_window.backdrop.bottom_right.width)
	br:SetHeight(skin.message_window.backdrop.bottom_right.height)
	local t = f.widgets.Backdrop.t
	t:SetTexture(skin.message_window.texture, skin.message_window.backdrop.top.tile or nil)
	t:SetTexCoord(unpack(skin.message_window.backdrop.top.texture_coord))
	t:ClearAllPoints()
	t:SetPoint("TOPLEFT", fName.."Backdrop_TL", "TOPRIGHT", 0, 0)
	t:SetPoint("BOTTOMRIGHT", fName.."Backdrop_TR", "BOTTOMLEFT", 0, 0)
	local b = f.widgets.Backdrop.b
	b:SetTexture(skin.message_window.texture, skin.message_window.backdrop.bottom.tile or nil)
	b:SetTexCoord(unpack(skin.message_window.backdrop.bottom.texture_coord))
	b:ClearAllPoints()
	b:SetPoint("TOPLEFT", fName.."Backdrop_BL", "TOPRIGHT", 0, 0)
	b:SetPoint("BOTTOMRIGHT", fName.."Backdrop_BR", "BOTTOMLEFT", 0, 0)
	local l = f.widgets.Backdrop.l
	l:SetTexture(skin.message_window.texture, skin.message_window.backdrop.left.tile or nil)
	l:SetTexCoord(unpack(skin.message_window.backdrop.left.texture_coord))
	l:ClearAllPoints()
	l:SetPoint("TOPLEFT", fName.."Backdrop_TL", "BOTTOMLEFT", 0, 0)
	l:SetPoint("BOTTOMRIGHT", fName.."Backdrop_BL", "TOPRIGHT", 0, 0)
	local r = f.widgets.Backdrop.r
	r:SetTexture(skin.message_window.texture, skin.message_window.backdrop.right.tile or nil)
	r:SetTexCoord(unpack(skin.message_window.backdrop.right.texture_coord))
	r:ClearAllPoints()
	r:SetPoint("TOPLEFT", fName.."Backdrop_TR", "BOTTOMLEFT", 0, 0)
	r:SetPoint("BOTTOMRIGHT", fName.."Backdrop_BR", "TOPRIGHT", 0, 0)
	local bg = f.widgets.Backdrop.bg
	bg:SetTexture(skin.message_window.texture, skin.message_window.backdrop.background.tile or nil)
	bg:SetTexCoord(unpack(skin.message_window.backdrop.background.texture_coord))
	bg:ClearAllPoints()
	bg:SetPoint("TOPLEFT", fName.."Backdrop_TL", "BOTTOMRIGHT", 0, 0)
	bg:SetPoint("BOTTOMRIGHT", fName.."Backdrop_BR", "TOPLEFT", 0, 0)

	--set class icon
	local class_icon = f.widgets.class_icon
	WIM_ApplySkinToWidget(class_icon)
	class_icon:SetTexture(skin.message_window.widgets.class_icon.texture)
	--WIM_UpdateMessageWindowClassIcon(f)

	--set from font
	local from = f.widgets.from
	WIM_ApplySkinToWidget(from)

	--set character details font
	local char_info = f.widgets.char_info
	WIM_ApplySkinToWidget(char_info)

	--close button
	local close = f.widgets.close
	WIM_ApplySkinToWidget(close)
	-- close button is a special case... so do the following extra work.
	if close.curTextureIndex == 1 then
		close:SetNormalTexture(skin.message_window.widgets.close.state_hide.NormalTexture)
		close:SetPushedTexture(skin.message_window.widgets.close.state_hide.PushedTexture)
		close:SetHighlightTexture(skin.message_window.widgets.close.state_hide.HighlightTexture, skin.message_window.widgets.close.state_hide.HighlightAlphaMode)
	else
		close:SetNormalTexture(skin.message_window.widgets.close.state_close.NormalTexture)
		close:SetPushedTexture(skin.message_window.widgets.close.state_close.PushedTexture)
		close:SetHighlightTexture(skin.message_window.widgets.close.state_close.HighlightTexture, skin.message_window.widgets.close.state_close.HighlightAlphaMode)
	end

	--scroll_up button
	local scroll_up = f.widgets.scroll_up
	WIM_ApplySkinToWidget(scroll_up)

	--scroll_down button
	local scroll_down = f.widgets.scroll_down
	WIM_ApplySkinToWidget(scroll_down)

	--chat display
	local chat_display = f.widgets.chat_display
	WIM_ApplySkinToWidget(chat_display)
	local font, height, flags
	if(not db.skin.suggest) then
		if _G[db.skin.font] then
			font, height, flags = _G[db.skin.font]:GetFont()
		else
			font = libs.SML.MediaTable.font[db.skin.font] or _G["ChatFontNormal"]:GetFont()
		end
		chat_display:SetFont(font, db.fontSize + 2, db.skin.font_outline)
	end

	--msg_box
	local msg_box = f.widgets.msg_box
	WIM_ApplySkinToWidget(msg_box)
	if not db.skin.suggest then
		msg_box:SetFont(font, skin.message_window.widgets.msg_box.font_height, WIM.db.skin.font_outline)
	end
	--msg_box:SetTextColor(skin.message_window.widgets.msg_box.font_color[1], skin.message_window.widgets.msg_box.font_color[2], skin.message_window.widgets.msg_box.font_color[3])


	--apply skin to registered widgets
	for widget, _ in pairs(windows.widgets) do
		if f.widgets[widget] and skin.message_window.widgets[widget] then
			dPrint("Applying skin to '"..widget.."'.")
			WIM_ApplySkinToWidget(f.widgets[widget])
		end
	end

	f:UpdateProps()
	f:UpdateIcon()
	f:UpdateCharDetails()
end

function WIM_create_window(user)
	local fName = 'WIM_msgFrame' .. user
	local f = CreateFrame('Frame', fName, UIParent)
	-- set frame's initial properties
	f:SetClampedToScreen(not WindowParent.animUp and db.clampToScreen);
	f:SetFrameStrata("DIALOG");
	f:SetMovable(true);
	f:SetToplevel(true);
	f:SetWidth(384);
	f:SetHeight(256);
	f:EnableMouse(true);
	f:SetPoint("TOPLEFT", WindowParent, "BOTTOMLEFT", 25, WindowParent:GetTop()-125);
	f:RegisterForDrag("LeftButton");
	f:SetScript("OnDragStart", MessageWindow_MovementControler_OnDragStart);
	f:SetScript("OnDragStop", MessageWindow_MovementControler_OnDragStop);
	f:SetScript("OnMouseUp", MessageWindow_MovementControler_OnDragStop);
	f:SetScript("OnShow", MessageWindow_Frame_OnShow);
	f:SetScript("OnHide", MessageWindow_Frame_OnHide);
	f:SetScript("OnUpdate", MessageWindow_Frame_OnUpdate);
	f.isWimWindow = true
	f.helperFrame = helperFrame
	f.animation = {}

	f.SetScale_Orig = f.SetScale
	f.SetScale = scaleWindow

	f.widgets = {};
	local widgets = f.widgets

	-- add window backdrop frame
	widgets.Backdrop = CreateFrame("Frame", fName.."Backdrop", f)
	widgets.Backdrop:SetToplevel(false)
	widgets.Backdrop:SetAllPoints(f);
	widgets.class_icon = widgets.Backdrop:CreateTexture(fName.."BackdropClassIcon", "BACKGROUND");
	widgets.class_icon.widgetName = "class_icon";
	widgets.class_icon.parentWindow = f;
	widgets.Backdrop.tl = widgets.Backdrop:CreateTexture(fName.."Backdrop_TL", "BORDER");
	widgets.Backdrop.tr = widgets.Backdrop:CreateTexture(fName.."Backdrop_TR", "BORDER");
	widgets.Backdrop.bl = widgets.Backdrop:CreateTexture(fName.."Backdrop_BL", "BORDER");
	widgets.Backdrop.br = widgets.Backdrop:CreateTexture(fName.."Backdrop_BR", "BORDER");
	widgets.Backdrop.t  = widgets.Backdrop:CreateTexture(fName.."Backdrop_T" , "BORDER");
	widgets.Backdrop.b  = widgets.Backdrop:CreateTexture(fName.."Backdrop_B" , "BORDER");
	widgets.Backdrop.l  = widgets.Backdrop:CreateTexture(fName.."Backdrop_L" , "BORDER");
	widgets.Backdrop.r  = widgets.Backdrop:CreateTexture(fName.."Backdrop_R" , "BORDER");
	widgets.Backdrop.bg = widgets.Backdrop:CreateTexture(fName.."Backdrop_BG", "BORDER");
	widgets.from = widgets.Backdrop:CreateFontString(fName.."BackdropFrom", "OVERLAY", "GameFontNormalLarge");
	widgets.from.widgetName = "from";
	widgets.char_info = widgets.Backdrop:CreateFontString(fName.."BackdropCharacterDetails", "OVERLAY", "GameFontNormal");
	widgets.char_info.widgetName = "char_info";

	-- create core window objects
	widgets.close = CreateFrame("Button", fName.."ExitButton", f);
	widgets.close:RegisterForClicks("LeftButtonUp", "RightButtonUp");
	widgets.close.curTextureIndex = 1;
	widgets.close.parentWindow = f;
	widgets.close.widgetName = "close";

	widgets.scroll_up = CreateFrame("Button", fName.."ScrollUp", f);
	widgets.scroll_up:RegisterForClicks("LeftButtonUp", "RightButtonUp");
	widgets.scroll_up.widgetName = "scroll_up";

	widgets.scroll_down = CreateFrame("Button", fName.."ScrollDown", f);
	widgets.scroll_down:RegisterForClicks("LeftButtonUp", "RightButtonUp");
	widgets.scroll_down.widgetName = "scroll_down";

	widgets.chat_display = CreateFrame("ScrollingMessageFrame", fName.."ScrollingMessageFrame", f);
	-- widgets.chat_display:RegisterForDrag("LeftButton");
	widgets.chat_display:SetHyperlinksEnabled(true)
	widgets.chat_display:SetFading(false);
	widgets.chat_display:SetMaxLines(128);
	widgets.chat_display:SetMovable(true);
	-- widgets.chat_display:SetScript("OnDragStart", function(self) MessageWindow_MovementControler_OnDragStart(self); end);
	-- widgets.chat_display:SetScript("OnDragStop", function(self) MessageWindow_MovementControler_OnDragStop(self); end);
	widgets.chat_display:SetJustifyH("LEFT");
	widgets.chat_display:EnableMouse(true);
	widgets.chat_display:EnableMouseWheel(1);
	widgets.chat_display.widgetName = "chat_display";

	widgets.msg_box = CreateFrame("EditBox", fName.."MsgBox", f);
	widgets.msg_box:SetAutoFocus(false);
	widgets.msg_box:SetHistoryLines(32);
	-- widgets.msg_box:SetMaxLetters(255);
	widgets.msg_box:SetAltArrowKeyMode(true);
	widgets.msg_box:EnableMouse(true);
	widgets.msg_box.widgetName = "msg_box";

	-- Addmessage functions
	f.AddMessage = function(self, msg, ...)
		msg = applyStringModifiers(msg, self.widgets.chat_display);
		self.widgets.chat_display:AddMessage(msg, unpack(arg));
		updateScrollBars(self);
		CallModuleFunction("OnWindowMessageAdded", self, msg, unpack(arg));
	end

	f.AddMessageRaw = function(self, msg, ...)
		self.widgets.chat_display:AddMessage(msg, unpack(arg));
	end

	f.AddEventMessage = function(self, r, g, b, event, ...)
		nextColor.r, nextColor.g, nextColor.b = r, g, b;
		local str = applyMessageFormatting(self.widgets.chat_display, event, unpack(arg));
		self:AddMessage(str, r, g, b);
		self.msgWaiting = true;
		self.lastActivity = _G.GetTime();
		if(self.tabStrip) then
			self.tabStrip:UpdateTabs();
		end
	end

	f.UpdateIcon = function(self)
		local icon = self.widgets.class_icon;
		if(self.type == "chat" and self.chatType) then
			icon:SetTexture(skin.message_window.widgets.class_icon.chatAlphaMask);
			local chat_type = self.chatType == "battleground" and "INSTANCE_CHAT" or string.upper(self.chatType);
			local color = _G.ChatTypeInfo[chat_type]; -- Drii: ticket 344
			icon:SetTexCoord(0,1,0,1);
			icon:SetGradient("VERTICAL", color.r, color.g, color.b, color.r, color.g, color.b);
			if(skin.message_window.widgets.from.use_class_color) then
				self.widgets.from:SetTextColor(color.r, color.g, color.b);
			end
		else
			local classTag = f.class;
			icon:SetGradient("VERTICAL", 1, 1, 1, 1, 1, 1);
			if(self.bn and self.bn.client == _G.BNET_CLIENT_SC2) then
				classTag = "sc2";--"Interface\\FriendsFrame\\Battlenet-Sc2icon"
				icon:SetTexture(skin.message_window.widgets.client_icon.texture);
				icon:SetTexCoord(unpack(skin.message_window.widgets.client_icon[classTag]));
			elseif(self.bn and self.bn.client == _G.BNET_CLIENT_D3) then
				classTag = "d3";--"Interface\\FriendsFrame\\Battlenet-D3icon"
				icon:SetTexture(skin.message_window.widgets.client_icon.texture);
				icon:SetTexCoord(unpack(skin.message_window.widgets.client_icon[classTag]));
				--(Out of room in class textures file. maybe it's time to skin only class icons and use blizzard provided textures for game clients)
			elseif(self.bn and self.bn.client == _G.BNET_CLIENT_WTCG) then
				classTag = "hs";--"Interface\\FriendsFrame\\Battlenet-WTCGicon"
				icon:SetTexture(skin.message_window.widgets.client_icon.texture);
				icon:SetTexCoord(unpack(skin.message_window.widgets.client_icon[classTag]));
			elseif(self.bn and self.bn.client == _G.BNET_CLIENT_HEROES) then
				classTag = "hots";--"Interface\\FriendsFrame\\Battlenet-HotSicon"
				icon:SetTexture(skin.message_window.widgets.client_icon.texture);
				icon:SetTexCoord(unpack(skin.message_window.widgets.client_icon[classTag]));
			elseif(self.bn and self.bn.client == _G.BNET_CLIENT_OVERWATCH) then
				classTag = "ow";--"Interface\\FriendsFrame\\Battlenet-Overwatchicon"
				icon:SetTexture(skin.message_window.widgets.client_icon.texture);
				icon:SetTexCoord(unpack(skin.message_window.widgets.client_icon[classTag]));
			elseif(self.bn and (self.bn.client == _G.BNET_CLIENT_APP or self.bn.client == _G.BNET_CLIENT_CLNT)) then--Battle.net Desktop App
			classTag = "bnd";--"Interface\\FriendsFrame\\Battlenet-Battleneticon"
			icon:SetTexture(skin.message_window.widgets.client_icon.texture);
			icon:SetTexCoord(unpack(skin.message_window.widgets.client_icon[classTag]));
			elseif(self.class == "") then
				classTag = "blank"
				icon:SetTexture(skin.message_window.widgets.class_icon.texture);
				icon:SetTexCoord(unpack(skin.message_window.widgets.class_icon[classTag]));
			else
				if(constants.classes[self.class]) then
					classTag = string.lower(constants.classes[self.class].tag);
					classTag = string.gsub(classTag, "f$", "");
				else
					classTag = "blank";
				end
				icon:SetTexture(skin.message_window.widgets.class_icon.texture);
				icon:SetTexCoord(unpack(skin.message_window.widgets.class_icon[classTag]));
			end
			if(constants.classes[self.class]) then
				self.classColor = constants.classes[self.class].color;
				if(skin.message_window.widgets.from.use_class_color) then
					self.widgets.from:SetTextColor(RGBHexToPercent(constants.classes[self.class].color));
				end
			end
		end
	end

	f.UpdateCharDetails = function(self)
		self.widgets.char_info:SetText(skin.message_window.widgets.char_info.format(self, self.guild, self.level, self.race, self.class));
	end

	f.WhoCallback = function(result)
		if(result and result.Online and result.Name == f.theUser) then
			f.class = result.Class;
			f.level = result.Level;
			f.race = result.Race;
			f.guild = result.Guild;
			f.location = result.Zone;
			f:UpdateIcon();
			f:UpdateCharDetails();
		end
	end

	f.SendWho = function(self)
		if(self.type ~= "whisper") then
			return;
		end
		if(self.isGM) then
			self.WhoCallback({
				Name = self.theUser,
				Online = true,
				Guild = "Blizzard",
				Class = L["Game Master"],
				Level = "",
				Race = "",
				Zone = L["Unknown"]
			});
		elseif(self.isBN) then
			-- get information of BN user from friends data.
			local id = self.theUser and BNet_GetBNetIDAccount(self.theUser) or nil;
			if(id) then
				local _, _, _, _, _, toonID = _G.BNGetFriendInfoByID(id)
				local hasFocus, toonName, client, realmName, realmID, faction, race, class, guild, zoneName, level, gameText, broadcastText, broadcastTime = BNGetGameAccountInfo(toonID or 0);
				self.class = class or "";
				self.level = level or "";
				self.race = race or "";
				self.guild = guild or "";
				self.location = client == _G.BNET_CLIENT_WOW and zoneName or gameText;
				self.bn.class = class;
				self.bn.level = level;
				self.bn.race = race;
				self.bn.guild = guild;
				self.bn.location = client == _G.BNET_CLIENT_WOW and zoneName or gameText;
				self.bn.gameText = gameText;
				self.bn.toonName = toonName;
				self.bn.client = client;
				self.bn.realmName = realmName;
				self.bn.faction = faction;
				self.bn.broadcastText = broadcastText;
				self.bn.broadcastTime = broadcastTime;
				self.bn.hasFocus = hasFocus;
				self.bn.id = id;
				-- self.widgets.from:SetText(self.theUser.." - "..toonName);
				self:UpdateIcon();
				if (client == _G.BNET_CLIENT_WOW) then
					self:UpdateCharDetails();
				end
			else
				self:AddMessage(_G.BN_UNABLE_TO_RESOLVE_NAME, db.displayColors.errorMsg.r, db.displayColors.errorMsg.g, db.displayColors.errorMsg.b);
			end
		else
			local whoLib = libs.WhoLib;
			if(whoLib) then
				local result = whoLib:UserInfo(self.theUser,
					{
						queue = whoLib.WHOLIB_QUEUE_QUIET,
						timeout = 0,
						-- flags = whoLib.WHOLIB_FLAG_ALWAYS_CALLBACK,
						callback = self.WhoCallback
					});
				if(result) then
					self.WhoCallback(result);
				end
			else
				dPrint("WhoLib-1.0 not loaded... Skipping who lookup!");
			end
		end
	end

	f.GetRuleSet = function(self)
		if(db.pop_rules[self.type]) then
			local curState = db.pop_rules[self.type].alwaysOther and "other" or curState
			return db.pop_rules[self.type][curState];
		else
			return db.pop_rules.whisper.other;
		end
	end

	-- PopUp rules
	f.Pop = function(self, msgDirection, forceResult, forceFocus) -- true to force show, false it ignore rules and force quiet.
	-- account for variable arguments.
	if(type(msgDirection) == "boolean") then
		forceResult, forceFocus = msgDirection, forceResult;
		msgDirection = "in";
	elseif(msgDirection == nil) then
		msgDirection = "in";
	end

	local rules = self:GetRuleSet(); -- defaults incase unknown

	-- pass isNew to pop ruleset.
	if(forceResult == true) then
		-- go by forceResult and ignore rules
		if(self.tabStrip) then
			-- if(not EditBoxInFocus) then
			ShowContainer();
			self.tabStrip:JumpToTab(self);
			if(not getVisibleChatFrameEditBox() and (rules.autofocus or forceFocus)) then
				self.widgets.msg_box:SetFocus();
			end
			-- end
		else
			ShowContainer();
			self:ResetAnimation();
			self:Show();
			if((not getVisibleChatFrameEditBox() and not EditBoxInFocus and rules.autofocus) or forceFocus) then
				self.widgets.msg_box:SetFocus();
			end
			local count = 0;
			for i = 1, getn(WindowSoupBowl.windows) do
				count = WindowSoupBowl.windows[i].obj:IsShown() and count + 1 or count;
			end
			--[[				if(count > 1) then
								DisplayTutorial(L["Creating Tab Groups"], L["You can group two or many windows together by <Shift-Clicking> a window and dragging it on top of another."]);
							else
								DisplayTutorial(L["Resizing Windows"], L["You can resize a window by holding <Shift> and dragging the bottom right corner of the window."]);
							end-- ]]
		end
	else
		-- execute pop rules.
		if((rules.onSend and msgDirection == "out") or (rules.onReceive and msgDirection == "in")) then
			if(self.tabStrip) then
				self:ResetAnimation();
				local infocus = EditBoxInFocus and EditBoxInFocus:GetParent().tabStrip;
				if(infocus ~= self.tabStrip) then
					self.tabStrip:JumpToTab(self);
					setWindowAsFadedIn(self);
				end
			else
				self:ResetAnimation();
				self:Show();
				setWindowAsFadedIn(self);
			end
			if(self:IsVisible() and not getVisibleChatFrameEditBox and not EditBoxInFocus and rules.autofocus) then
				self.widgets.msg_box:SetFocus();
			end
		end
	end

	-- at this state the message is no longer classified as a new window, reset flag.
	f.isNew = false;
	CallModuleFunction("OnWindowPopped", self);
	end

	f.UpdateProps = function(self)
		self:SetFrameStrata(db.winSize.strata);
		self:SetScale(db.winSize.scale/100);
		self.widgets.Backdrop:SetAlpha(db.windowAlpha/100);
		local Path,_,Flags = self.widgets.chat_display:GetFont();
		self:SetClampedToScreen(not WindowParent.animUp and db.clampToScreen);
		self.widgets.chat_display:SetFont(Path or _G["ChatFontNormal"]:GetFont(),db.fontSize+2,Flags);
		self.widgets.chat_display:SetAlpha(1);
		self.widgets.chat_display:SetIndentedWordWrap(db.wordwrap_indent);
		self.widgets.msg_box:SetAlpha(1);
		self.widgets.msg_box:SetAltArrowKeyMode(db.ignoreArrowKeys);

		self.widgets.from:SetAlpha(1);
		self.widgets.char_info:SetAlpha(1);
		self.widgets.close:SetAlpha(db.windowAlpha);
		self.widgets.scroll_up:SetAlpha(db.windowAlpha);
		self.widgets.scroll_down:SetAlpha(db.windowAlpha);

		if(not self.customSize) then
			self:SetWidth(db.winSize.width);
			self:SetHeight(db.winSize.height);
		end

		local minWidth, minHeight = skin.message_window.min_width, skin.message_window.min_height;

		-- process registered widgets
		local widgetName, widgetObj;
		for widgetName, widgetObj in pairs(f.widgets) do
			if(type(widgetObj.UpdateProps) == "function") then
				widgetObj:UpdateProps();
			end
			if(widgetObj.type) then
				if(widgetObj.enabled and string.match(widgetObj.type, f.type)) then
					widgetObj:Show();
					local w, h = widgetObj:GetWidth(), widgetObj:GetHeight();
					minWidth = _G.math.max(minWidth, (self:SafeGetLeft() - widgetObj:GetLeft()) + w + (widgetObj:GetRight() - self:SafeGetRight()));
					minHeight = _G.math.max(minHeight, (self:SafeGetTop() - widgetObj:GetTop() - WindowParent:GetBottom()) + h + (widgetObj:GetBottom() - self:SafeGetBottom() - WindowParent:GetBottom()));
				else
					widgetObj:Hide()
				end
			end
		end
		self:SetMinResize(minWidth, minHeight);
		self:SetWidth(_G.math.max(minWidth, self:GetWidth()))
		self:SetHeight(_G.math.max(minHeight, self:GetHeight()))
		self.initialized = true
	end

	f.Hide_Normal = f.Hide;
	f.Hide = function(self, animate)
		if(not self:IsShown() or self.animation.mode) then
			-- don't do anything if window is already hidden.
			return;
		end
		if(not animate) then
			self:Hide_Normal();
			self:ResetAnimation();
		else

			if(not db.winAnimation) then
				self:Hide_Normal();
				self:ResetAnimation();
			else
				self.widgets.chat_display:SetParent("UIParent");
				self.widgets.chat_display:Hide();
				local a = self.animation;
				f:SetClampedToScreen(false);
				a.initLeft = self:SafeGetLeft();
				a.initTop = self:SafeGetTop();
				a.to = MinimapIcon or nil;
				a.elapsed, a.time = 0, .5;
				a.scaleLimit = .001 -- _G.math.max(_G.math.ceil((100-_G.UIParent:GetScale()*100)/2)/100 + .04, .01);
				a.mode = "HIDE"; -- this starts the animation
				dPrint("Animation Started: "..self:GetName());
			end
		end
	end
	f.ResetAnimation = function(self)
		if(self.animation.mode) then
			self:SetClampedToScreen(not WindowParent.animUp and db.clampToScreen);
			self:SetScale_Orig(db.winSize.scale/100);
			self:ClearAllPoints();
			self:SetPoint("TOPLEFT", WindowParent, "BOTTOMLEFT", self.animation.initLeft, self.animation.initTop - WindowParent:GetBottom());
			self.widgets.chat_display:Show();
			self.widgets.chat_display:SetParent(self);
			dPrint("Animation Reset: "..self:GetName());
		end
		for key, _ in pairs(self.animation) do
			self.animation[key] = nil;
		end
	end
	f.SafeGetLeft = function(self)
		return self:GetLeft() - WindowParent:GetLeft();
	end
	f.SafeGetRight = function(self)
		return self:GetRight() - WindowParent:GetLeft();
	end
	f.SafeGetTop = function(self)
		return self:GetTop() - WindowParent:GetBottom();
	end
	f.SafeGetBottom = function(self)
		return self:GetBottom() - WindowParent:GetBottom();
	end

	-- enforce that all core widgets have parentWindow set.
	local w;
	for _, w in pairs(f.widgets) do
		w.parentWindow = f;
	end

	loadRegisteredWidgets(f);
	loadHandlers(f);

	return f
end