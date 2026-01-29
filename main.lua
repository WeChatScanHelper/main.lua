require "import"
import "android.app.*"
import "android.os.*"
import "android.widget.*"
import "android.view.*"
import "android.content.Context"
import "android.content.Intent"
import "android.net.Uri"
import "android.provider.Settings"
import "android.content.pm.PackageManager"
import "android.graphics.Typeface"
import "android.graphics.drawable.ColorDrawable"
import "android.graphics.drawable.GradientDrawable"
import "android.app.ActivityManager"
import "android.widget.Toast"
--import "java.io.File"
import "java.lang.String"
import "AndLua"
import "http"
import "init"
import "android.provider.Settings$Secure"
import "android.content.IntentFilter"
import "android.graphics.drawable.ColorDrawable"

activity.getWindow().addFlags(WindowManager.LayoutParams.FLAG_TRANSLUCENT_STATUS)
activity.overridePendingTransition(android.R.anim.fade_in,android.R.anim.fade_out)
activity.setRequestedOrientation(1);
import "android.content.Intent"
import "android.net.Uri"
--import "drawable"
--import "task"
--import "LuaUtil"
import "android.os.Handler"
import "android.graphics.Color"

local deltempfile = activity.getFilesDir().getAbsolutePath().."/users_temp.lua"
local deltempfile2 = activity.getFilesDir().getAbsolutePath().."/manila_time.lua"
local json = require("cjson") or require("json")

-- Create a Handler for Looping Updates
handler = Handler()
local android_id = Secure.getString(activity.getContentResolver(), Secure.ANDROID_ID)

local command = "/register " .. android_id



device_id = android_id

-- Your TextView ID for displaying online users
-- Control variable for pings

-- Send exit when app is destroyed

-- Start monitoring when app starts
import "android.graphics.drawable.Drawable"
local saveDir = activity.getExternalFilesDir(nil).getPath() .. "/AlexaAssets/icon/"

local IMAGE_DIR = saveDir

local function loadImage(view, name, color)
    local path = IMAGE_DIR .. name .. ".png"
    local drawable = Drawable.createFromPath(path)

    if drawable then
        view.setImageDrawable(drawable)
        if color then
            view.setColorFilter(color)
        end
    else
        print("⚠ Image not found: " .. path)
    end
end

-- Load images using view IDs






local primaryColor = "#BB202125" -- Semi-transparent dark background
local accentColor = "#FF8C00" -- Orange Accent
local textColor = "#FFFFFF" -- White text

-- Create Rounded Corner Background
local roundedBackground = GradientDrawable()
roundedBackground.setColor(0xBB202125) -- Semi-transparent dark
roundedBackground.setCornerRadius(25) -- Rounded corners


local loginLayout = {
  FrameLayout,
  layout_width = "match_parent",
  layout_height = "match_parent",
  backgroundColor = "#00000000", -- Fully transparent background

  {
    LinearLayout,
    orientation = "vertical",
    layout_width = "80%w",
    layout_height = "wrap_content",
    gravity = "center",
    padding = "20dp",
    layout_gravity = "center",
    background = roundedBackground, -- Rounded drawable
    elevation = "10dp",

    {
      TextView,
      text = "Alexa Injector Login",
      textSize = "20sp",
      textColor = textColor,
      layout_width = "wrap_content",
      layout_height = "wrap_content",
      gravity = "center",
      Typeface = Typeface.DEFAULT_BOLD,
      paddingBottom = "10dp"
    },

    {
      TextView,
      id = "checking",
      text = "STATUS",
      textSize = "16sp",
      textColor = "#CCCCCC",
      layout_width = "wrap_content",
      layout_height = "wrap_content",
      paddingBottom = "5dp"
    },

    {
      EditText,
      id = "Key",
      text = device_id,
      textSize = "14sp",
      hint = "Enter Key",
      hintTextColor = Color.GRAY,
      textColor = textColor,
      backgroundColor = "#333333",
      layout_width = "match_parent",
      layout_height = "wrap_content",
      gravity = "center",
      padding = "10dp",
      focusable = false,
      layout_marginBottom = "10dp"
    },


    --[[  {
      CheckBox,
      id="savedKey",
      text="Save Key?",
      textColor= "#ffffff"
    },
    -- Spinner / Dropdown right below EditText

]]

    {
      Button,
      id = "copy",
      text = "Copy Key",
      layout_width = "match_parent",
      layout_height = "wrap_content",
      textColor = textColor,
      backgroundColor = accentColor,
      padding = "10dp",
      layout_marginBottom = "10dp",
      onClick=function()
        import "android.content.*"
        import "android.widget.Toast"
        cm = activity.getSystemService(Context.CLIPBOARD_SERVICE)
        clip = ClipData.newPlainText("token",Key.getText().toString())
        cm.setPrimaryClip(clip)
      end
    },


    {
      Button,
      id = "register",
      text = " Register Now",
      layout_width = "match_parent",
      layout_height = "wrap_content",
      textColor = textColor,
      backgroundColor = accentColor,
      padding = "10dp",
      layout_marginBottom = "10dp"
    },

    {
      Button,
      id = "login",
      text = "Login",
      layout_width = "match_parent",
      layout_height = "wrap_content",
      textColor = textColor,
      backgroundColor = accentColor,
      padding = "10dp",
      layout_marginBottom = "10dp"
    },



  }
}



-- Create a transparent floating dialog without a title bar
local dialog = Dialog(activity, android.R.style.Theme_Translucent_NoTitleBar)
dialog.setContentView(loadlayout(loginLayout))



-- Get the window to apply transparency & styling
local window = dialog.getWindow()
window.setBackgroundDrawable(ColorDrawable(0x00000000)) -- Fully transparent
window.clearFlags(WindowManager.LayoutParams.FLAG_DIM_BEHIND) -- Remove dim effect
window.setLayout(WindowManager.LayoutParams.WRAP_CONTENT, WindowManager.LayoutParams.WRAP_CONTENT) -- Keep centered
window.setFlags(WindowManager.LayoutParams.FLAG_NOT_TOUCH_MODAL, WindowManager.LayoutParams.FLAG_NOT_TOUCH_MODAL) -- Allow background interaction
window.setFlags(WindowManager.LayoutParams.FLAG_LAYOUT_NO_LIMITS, WindowManager.LayoutParams.FLAG_LAYOUT_NO_LIMITS) -- Prevent system UI interference

-- Make the dialog not cancellable
dialog.setCancelable(false)
dialog.setCanceledOnTouchOutside(false)

-- Show the dialog
dialog.show()

-- Set your actual device ID here (you must provide it)
-- replace with actual device_id retrival

-- Set the deviceKey TextView text to device_id (non-editable display)
--eviceKey.setText(device_id)

-- Removed SharedPreferences for remembering key and related logic

-- Function to check key status














-- Handle Login Click
-- ######################################################
-- HTTP GET helper (OkHttp -> HttpURLConnection fallback)
-- ######################################################
-- ✅ Full fixed checkSubscriptionStatus for GitHub Release assets
-- Robust checkSubscriptionStatus with proper async chaining and smart backup fallback
-- FULL LUA: Robust subscription + update checks with backup proxy & browser-like headers
-- Assumes variables: activity, android_id, appver, dialog, txtStart, start, KeyCheckLoop, login exist in scope.

-- Utility: build a browser-like headers table for Http.get
-- ===================================================================
-- checkSubscriptionStatus + checkForUpdate with browser-like headers
-- ===================================================================
-- 🌐 Smart Proxy URLs
-- === Configuration ===
-- === PROXIES ===

-- === RADIO BUTTON SELECTION ===

local selectedProxy = "main" -- default
local notselectedProxy = "backup"
--Main.Checked = true

-- === PROXY CONFIG ===
local mainProxy = "https://alexaofficial.x10.mx/Free/proxy.php"
local backupProxy = "https://alexaproxy.onrender.com/proxy.php"

local currentProxy = function(attempt)
  if selectedProxy == "main" then
    -- Main chosen (fallback on 2nd attempt)
    return mainProxy
   else
    -- Backup chosen (no fallback)
    return backupProxy
  end
end


-- === REQUEST HANDLER WITH SELECTED SERVER ===
local function fetchWithFallback(url, attempt, callback)
  attempt = attempt or 1

  local useProxy = currentProxy() -- always only selected server
  local finalUrl = useProxy .. "?file=" .. url .. "&cb=" .. tostring(math.random(100000,999999))

  Http.get(finalUrl, "utf8", browserHeaders, function(code, content)
    local invalid = (code ~= 200) or (not content) or (#content < 50) or content:find("<html")

    if invalid then
      local serverName = (selectedProxy == "main") and "Main Server" or "Backup Server"
      local otherServerName = (notselectedProxy == "main") and "Main Server" or "Backup Server"

      --   Toast.makeText(activity, "❌ " .. serverName .. " Failed! Please Use " .. otherServerName, Toast.LENGTH_LONG).show()
      callback(false, nil)
     else
      callback(true, content)
    end
  end)
end





-- === Subscription Status ===
function checkSubscriptionStatus(callback)
  local usersUrl = "https://github.com/alexaoutreachforall-tech/license-manager/releases/download/Latest/premium_users.lua"
  local manilaUrl = "https://github.com/KaixMelon/Users_Lua/releases/download/latest/manila_time.lua"

  -- Fetch users.lua with retry/fallback
  fetchWithFallback(usersUrl, 1, function(ok, content)
    if not ok then
      --  Toast.makeText(activity, "❌ Network Error. Please try again.", Toast.LENGTH_SHORT).show()
      callback(false, false, false, false)
      return
    end

    local tempfile = activity.getFilesDir().getAbsolutePath().."/users_temp.lua"
    local f = io.open(tempfile, "w"); f:write(content); f:close()

    local success, users = pcall(dofile, tempfile)
    if not success or type(users) ~= "table" or type(users.keys) ~= "table" then
      --   Toast.makeText(activity, "⚠️ Invalid user data. Retrying...", Toast.LENGTH_SHORT).show()
      fetchWithFallback(usersUrl, 2, function(ok2, content2)
        if not ok2 then callback(false, false, false, false); return end
        local f2 = io.open(tempfile, "w"); f2:write(content2); f2:close()
        success, users = pcall(dofile, tempfile)
        if not success then callback(false, false, false, false); return end
      end)
    end

    -- Check Android ID in users.lua
    local found_key, expiry_datetime, is_banned = false, nil, false
    for _, entry in ipairs(users.keys) do
      if android_id == entry.key then
        found_key = true
        expiry_datetime = entry.expiry_datetime
        is_banned = entry.banned == true
        break
      end
    end

    if not found_key then
      callback(false, false, false, false)
      return
    end

    if is_banned then
      --  Toast.makeText(activity, "🚫 Your key has been banned!", Toast.LENGTH_LONG).show()
      callback(false, found_key, true, false)
      return
    end

    -- Fetch Manila time
    fetchWithFallback(manilaUrl, 1, function(ok2, content2)
      if not ok2 then
        -- Toast.makeText(activity, "❌ Manila time fetch failed.", Toast.LENGTH_SHORT).show()
        callback(false, found_key, false, false)
        return
      end

      local tempfile2 = activity.getFilesDir().getAbsolutePath().."/manila_time.lua"
      local f2 = io.open(tempfile2, "w"); f2:write(content2); f2:close()
      local success2, timeData = pcall(dofile, tempfile2)
      if not success2 or not timeData.manila_datetime then
        --   Toast.makeText(activity, "⚠️ Invalid Manila time!", Toast.LENGTH_LONG).show()
        callback(false, found_key, false, false)
        return
      end

      -- Parse ISO8601 into comparable number
      local function parseISO8601(str)
        local y,m,d,H,M,S = str:match("^(%d+)%-(%d+)%-(%d+)T(%d+):(%d+):?(%d*)$")
        if not y then return nil end
        if S == "" or S == nil then S = "00" end
        return tonumber(string.format("%04d%02d%02d%02d%02d%02d", y,m,d,H,M,S))
      end

      local expiry_val = parseISO8601(expiry_datetime)
      local manila_val = parseISO8601(timeData.manila_datetime)
      if not expiry_val or not manila_val then
        --   Toast.makeText(activity, "⚠️ Date parse failed!", Toast.LENGTH_LONG).show()
        callback(false, found_key, false, false)
        return
      end

      if manila_val >= expiry_val then
        callback(false, found_key, false, true)
       else
        callback(true, found_key, false, false)
      end
    end)
  end)
end

--[[

-- === Login Button ===
login.onClick = function()
  Toast.makeText(activity, "Checking your subscription...", Toast.LENGTH_LONG).show()
  checkSubscriptionStatus(function(is_valid, found_key, is_banned, is_expired)
    if is_banned then
      Toast.makeText(activity, "🚫 Banned! Contact support.", Toast.LENGTH_LONG).show()
     elseif is_expired then
      Toast.makeText(activity, "🔴 Your key has expired!", Toast.LENGTH_LONG).show()
     elseif is_valid and found_key then
      checkForUpdate()
      dialog.dismiss()
     else
      Toast.makeText(activity, "Please register your Device ID.", Toast.LENGTH_LONG).show()
    end
  end)
end
]]
-- === Update Checker ===
-- === Update Checker with Proxy + cb ===
-- === Update Checker with Proxy + cb + fallback ===
function checkForUpdate()
  local updateUrl = "https://github.com/KaixMelon/Users_Lua/releases/download/latest/update_codm.lua"

  fetchWithFallback(updateUrl, 1, function(ok, content)
    if not ok then
      Toast.makeText(activity, "❌ Update check failed.", Toast.LENGTH_SHORT).show()
      return
    end

    -- Validate Lua content (must be table)
    local tempfile = activity.getFilesDir().getAbsolutePath().."/update_codm.lua"
    local f = io.open(tempfile, "w"); f:write(content); f:close()
    local success, data = pcall(dofile, tempfile)

    if not success or type(data) ~= "table" then
      -- Retry once through backup explicitly
      Toast.makeText(activity, "⚠️ Invalid update content, retrying...", Toast.LENGTH_SHORT).show()
      fetchWithFallback(updateUrl, 2, function(ok2, content2)
        if not ok2 then
          Toast.makeText(activity, "❌ Update fetch failed again.", Toast.LENGTH_SHORT).show()
          return
        end
        local f2 = io.open(tempfile, "w"); f2:write(content2); f2:close()
        local success2, data2 = pcall(dofile, tempfile)
        if not success2 or type(data2) ~= "table" then
          Toast.makeText(activity, "⚠️ Invalid update info!", Toast.LENGTH_SHORT).show()
          return
        end
        -- Process valid update
        processUpdate(data2)
      end)
      return
    end

    -- Process valid update
    processUpdate(data)
  end)
end

-- === Process Update ===
function processUpdate(data)
  local latest_version = data.version
  local update_message = data.message
  local updateUrl = data.update_link

  if latest_version ~= appver then
    activity.runOnUiThread(luajava.createProxy("java.lang.Runnable", {
      run = function()
        local alertDialog = AlertDialog.Builder(activity)
        alertDialog.setTitle("🔔 Update " .. latest_version)
        alertDialog.setMessage(update_message or "A new update is available.")
        alertDialog.setPositiveButton("Update Now", function()
          import "android.content.Intent"
          import "android.net.Uri"
          local intent = Intent(Intent.ACTION_VIEW, Uri.parse(updateUrl))
          activity.startActivity(intent)
        end)
        alertDialog.setCancelable(false)
        local dialog = alertDialog.create()
        dialog.show()
      end
    }))
   else

  end
end


-- Function to get server time




function Waterdropanimation(Controls,time)
  import "android.animation.ObjectAnimator"
  ObjectAnimator().ofFloat(Controls,"scaleX",{1,.8,1.,.9,1}).setDuration(time).start()
  ObjectAnimator().ofFloat(Controls,"scaleY",{1,.8,1.3,.9,1}).setDuration(time).start()
end

function CircleButton(view,InsideColor,radiu,InsideColor1)
  import "android.graphics.drawable.GradientDrawable"
  drawable = GradientDrawable()
  drawable.setShape(GradientDrawable.RECTANGLE)
  drawable.setCornerRadii({radiu, radiu, radiu, radiu, radiu, radiu, radiu, radiu})
  drawable.setColor(InsideColor)
  drawable.setStroke(3, InsideColor1)
  view.setBackgroundDrawable(drawable)

end




layout = {
  --  ScrollView;

  LinearLayout;
  orientation = "vertical";
  layout_width = "fill";
  layout_height = "wrap";
  backgroundColor = "0xff121212";

  {
    LinearLayout;
    gravity = "center";
    layout_width = "wrap";
    layout_height = "50dp";
  };

  {
    LinearLayout,
    layout_height = "1.8dp",
    layout_width = "fill",
    backgroundColor = "0xFFFF0000",
    layout_marginLeft = "20dp",
    layout_marginRight = "20dp",
  };

  {
    LinearLayout;
    layout_height = "2%h";
    layout_width = "fill";
  };

  {
    CardView;
    layout_height = "15%h";
    layout_width = "fill";
    backgroundColor = "0x98414141";
    cardElevation = "0dp";
    radius = "4dp";
    {
      LinearLayout;
      padding = "2%h";
      layout_height = "fill";
      layout_width = "fill";
      orientation = "vertical";
      {
        TextView,
        typeface = Typeface.DEFAULT_BOLD,
        id = "titleDataInfo",
        layout_height = "wrap",
        text = "Alexa Injector",
        layout_gravity = "center",
        textColor = "0xFFFFFFFF",
        textSize = "15sp",
        layout_width = "wrap"
      },
      {
        LinearLayout,
        layout_height = "0.1%h",
        layout_width = "fill"
      },
      {
        LinearLayout,
        orientation = "horizontal",
        layout_height = "wrap",
        gravity = "center",
        layout_width = "wrap",
        {
          TextView,
          typeface = Typeface.DEFAULT_BOLD,
          text = "Version : ",
          id = "as",
          layout_height = "wrap",
          textSize = "12sp",
          layout_gravity = "center",
          textColor = "0xFFFFFFFF",
          gravity = "left|center",
          layout_width = "18%w"
        },
        {
          TextView,
          typeface = Typeface.DEFAULT_BOLD,
          textSize = "12sp",
          text = appver .. " VERSION | PATCH 1.6.53",
          id = "ueje",
          layout_height = "wrap",
          layout_marginLeft = "1dp",
          layout_gravity = "center",
          textColor = "0xFFFFFFFF",
          gravity = "center",
          layout_width = "wrap"
        }
      },
      {
        LinearLayout,
        layout_height = "0.5%h",
        layout_width = "fill"
      },
      {
        LinearLayout,
        orientation = "horizontal",
        layout_height = "wrap",
        gravity = "center",
        layout_width = "wrap",
        {
          TextView,
          typeface = Typeface.DEFAULT_BOLD,
          text = "Subscription Type : ",
          id = "asu",
          layout_height = "wrap",
          textSize = "12sp",
          layout_gravity = "center",
          textColor = "0xFFFFFFFF",
          gravity = "left|center",
          layout_width = "33%w"
        },
        {
          TextView,
          typeface = Typeface.DEFAULT_BOLD,
          textSize = "12sp",
          text = "FREE",
          id = "expDateX",
          layout_height = "wrap",
          layout_marginLeft = "0.1dp",
          layout_gravity = "center",
          textColor = "0xFFFFFFFF",
          gravity = "center"
        },
      },
      {
        LinearLayout,
        layout_height = "0.3%h",
        layout_width = "fill"
      },
      {
        LinearLayout,
        orientation = "horizontal",
        layout_height = "wrap",
        gravity = "center",
        layout_width = "wrap",
        {
          TextView,
          typeface = Typeface.DEFAULT_BOLD,
          text = "Status :",
          id = "kon",
          layout_height = "wrap",
          textSize = "12sp",
          layout_gravity = "center",
          textColor = "0xFFFFFFFF",
          gravity = "left|center",
          layout_width = "12%w"
        },
        {
          ProgressBar,
          id = "pstatus",
          style = "?android:attr/progressBarStyleSmall",
          layout_marginLeft = "1dp",
          layout_gravity = "center",
          layout_height = "10dp",
          visibility = "visible",
          layout_width = "10dp"
        },
        {
          TextView,
          typeface = Typeface.DEFAULT_BOLD,
          id = "status",
          layout_height = "wrap",
          layout_marginLeft = "2dp",
          text = "",
          visibility = "gone",
          gravity = "center",
          layout_gravity = "center",
          textColor = "0xFFFFFFFF",
          textSize = "12sp"
        }
      }
    }
  };

  {
    LinearLayout;
    layout_height = "5dp";
    layout_width = "match_parent";
  };

  {
    TextView;
    text = "━━━━━━━━━━━━━━━━━━━━";
    id = "NO9AT3";
    layout_width = "wrap";
    layout_gravity = "center";
    textSize = "15sp";
    layout_height = "wrap";
    textColor = "0xFFFF8209";
  };

  {
    LinearLayout;
    layout_width = "wrap";
    layout_height = "20dp";
  };

  {
    CardView;
    layout_height = "20%h";
    layout_width = "fill";
    backgroundColor = "0x98414141";
    cardElevation = "0dp";
    radius = "4dp";
    {
      LinearLayout;
      padding = "2%h";
      layout_height = "fill";
      layout_width = "fill";
      orientation = "vertical";
      {
        TextView;
        text = "Start Menu";
        textSize = "17sp";
        textColor = "0xFFFFFFFF";
        id = "startt",
        layout_height = "wrap";
        layout_width = "wrap";
        layout_gravity = "center";
      };
      {
        LinearLayout;
        layout_height = "1.5%h";
        layout_width = "fill";
      };
      {
        LinearLayout,
        layout_height = "1.8dp",
        layout_width = "fill",
        backgroundColor = "0xFFFFFFFF",
        layout_marginLeft = "95dp",
        layout_marginRight = "95dp",
      },
      {
        LinearLayout;
        layout_height = "2.2%h";
        layout_width = "fill";
      };
      {
        LinearLayout;
        gravity = "center";
        orientation = "horizontal";
        layout_width = "fill";
        layout_height = "wrap";
        {
          CardView;
          radius = "3dp";
          backgroundColor = "0xFFFFFFFF";
          layout_width = "41%w";
          id = "start";
          layout_gravity = "center";
          layout_height = "7.2%h";
          {
            LinearLayout;
            gravity = "center";
            orientation = "vertical";
            layout_width = "fill";
            layout_height = "fill";
            {
              TextView;
              id = "txtStart";
              layout_height = "wrap";
              text = "START";
              textSize = "13sp";
              layout_width = "wrap";
              textColor = "0xFF000000";
              layout_gravity = "center";
              Typeface = Typeface.defaultFromStyle(Typeface.BOLD);
            };
          };
        };
        {
          LinearLayout;
          layout_width = "3%w";
          layout_height = "fill";
        };
        {
          CardView;
          radius = "3dp";
          backgroundColor = "0xFFFFFFFF";
          layout_width = "41%w";
          id = "stop";
          layout_gravity = "center";
          layout_height = "7.2%h";
          {
            LinearLayout;
            gravity = "center";
            orientation = "vertical";
            layout_width = "fill";
            layout_height = "fill";
            {
              TextView;
              id = "txtStop";
              layout_height = "wrap";
              text = "STOP";
              textSize = "13sp";
              layout_width = "wrap";
              textColor = "0xFF000000";
              layout_gravity = "center";
              Typeface = Typeface.defaultFromStyle(Typeface.BOLD);
            };
          };
        };
      };
    };
  };

  {
    LinearLayout;
    layout_height = "2%h";
    layout_width = "fill";
  };

  {
    TextView;
    text = "  OPEN GAME";
    textColor = "0x9EFFFFFF";
    textSize = "10sp";
    layout_gravity = "center";
    layout_width = "wrap";
    layout_height = "wrap";
    Typeface = Typeface.defaultFromStyle(Typeface.BOLD)
  };

  {
    TextView;
    text = "━━━━━━━━━━━━━━━━━━━━";
    id = "NO9AT3";
    layout_width = "wrap";
    layout_gravity = "center";
    textSize = "15sp";
    layout_height = "wrap";
    textColor = "0xFFFFFFFF";
  };

  {
    LinearLayout;
    layout_width = "fill";
    layout_height = "5dp";
    gravity = "center",
  };

  {
    CardView;
    radius = "3dp",
    backgroundColor = "0xFFFFFFFF",
    layout_width = "41%w",
    id = "opengame",
    layout_gravity = "center",
    layout_height = "7.2%h",
    {
      LinearLayout;
      gravity = "center";
      orientation = "vertical";
      layout_width = "fill";
      layout_height = "fill";
      {
        TextView;
        id = "txtopengame";
        layout_height = "wrap";
        text = "CALL OF DUTY GARENA";
        textSize = "13sp";
        layout_width = "wrap";
        textColor = "0xFF000000";
        layout_gravity = "center";
        Typeface = Typeface.defaultFromStyle(Typeface.BOLD)
      }
    }
  };

  {
    TextView;
    text = "━━━━━━━━━━━━━━━━━━━━";
    id = "NO9AT3";
    layout_width = "wrap";
    layout_gravity = "center";
    textSize = "15sp";
    layout_height = "wrap";
    textColor = "0xFFFFFFFF";
  };

  {
    TextView;
    text = "JOIN HERE TO GET THE LATEST UPDATE";
    textColor = "0x9EFFFFFF";
    textSize = "10sp";
    layout_gravity = "center";
    layout_width = "wrap";
    layout_height = "wrap";
    Typeface = Typeface.defaultFromStyle(Typeface.BOLD)
  };

  {
    Button,
    id = "join",
    text = "JOIN NOW",
    layout_width = "150dp",
    layout_height = "wrap_content",
    textColor = textColor,
    backgroundColor = accentColor,
    padding = "5dp",
    layout_marginTop = "20dp",
    layout_gravity = "center",
    gravity = "center",
  };

  {
    TextView;
    text = "━━━━━━━━━━━━━━━━━━━━";
    id = "NO9AT3";
    layout_width = "wrap";
    layout_gravity = "center";
    textSize = "15sp";
    layout_height = "wrap";
    textColor = "0xFFFFFFFF";
  };

  {
    LinearLayout,
    layout_height = "0.5%h",
    layout_width = "fill"
  },

  {
    LinearLayout,
    orientation = "horizontal",
    layout_height = "wrap",
    gravity = "center",
    layout_width = "fill",

  },

  {
    LinearLayout,
    layout_height = "0.5%h",
    layout_width = "fill"
  },
  {
    TextView;
    id = "result";
    text = "";
    textColor = "0x9EFFFFFF";
    textSize = "10sp";
    layout_gravity = "center";
    layout_width = "wrap";
    layout_height = "wrap";
    Typeface = Typeface.defaultFromStyle(Typeface.BOLD)
  };


  {
    LinearLayout,
    orientation = "horizontal",
    layout_height = "wrap",
    gravity = "center",
    layout_width = "fill",

  },

  {
    LinearLayout,
    layout_height = "0.5%h",
    layout_width = "fill"
  },

  {
    LinearLayout,
    orientation = "horizontal",
    layout_height = "wrap",
    gravity = "center",
    layout_width = "fill",
    {
      TextView;
      text = "━━━━━━━━━━━━━━━━━━━━";
      id = "NO9AT3";
      layout_width = "wrap";
      layout_gravity = "center";
      textSize = "15sp";
      layout_height = "wrap";
      textColor = "0xFFFFFFFF";
    },
  },

  {
    LinearLayout,
    layout_height = "0.5%h",
    layout_width = "fill"
  },

  {
    LinearLayout,
    orientation = "horizontal",
    layout_height = "wrap",
    gravity = "center",
    layout_width = "fill",

  },
};





activity.setContentView(loadlayout(layout))

activity.getWindow().addFlags(WindowManager.LayoutParams.FLAG_DRAWS_SYSTEM_BAR_BACKGROUNDS).setStatusBarColor(0xFF000000);




require "import"
import "android.widget.*"
import "android.view.*"
import "android.provider.Settings"
import "com.androlua.Http"
import "cjson"


activity.setContentView(loadlayout(layout))

-- API CONFIG
local API_URL = "https://alexaofficial.x10.mx/connect"
local GAME = "CODMGRINJECT"

-- GET DEVICE SERIAL (STABLE)
local serial = Settings.Secure.getString(
activity.getContentResolver(),
Settings.Secure.ANDROID_ID
)

-- BUTTON CLICK
login.onClick = function()

  local user_key = Key.getText().toString()

  if user_key == "" then
    Toast.makeText(activity, "Enter license key", Toast.LENGTH_SHORT).show()
    return
  end

  checking.setText("Checking license...")

  local postData = {
    game = GAME,
    user_key = user_key,
    serial = serial
  }

  Http.post(API_URL, postData, nil, nil,
  function(code, body)

    if code ~= 200 then
      checking.setText("Network error: "..tostring(code))
      return
    end

    local ok, json = pcall(cjson.decode, body)
    if not ok then
      checking.setText("Invalid server response")
      return
    end

    if json.status == true then
      local token = json.data.token
      local exp = tostring(json.data.EXP)
      local mod = json.data.modname

      -- SAVE TOKEN
      local path = activity.getFilesDir().toString().."/token.txt"
      local f = io.open(path, "w")
      f:write(token)
      f:close()

      result.setText(
      "EXP: "..exp
      )

      checkForUpdate()
      dialog.dismiss()
      txtStart.setText("START")
      start.setEnabled(true)
      Toast.makeText(activity, "✅ Access Granted!", Toast.LENGTH_LONG).show()
  

     else
      checking.setText("FAILED: "..tostring(json.reason))
    end
  end
  )
end



--[[

local path = activity.getFilesDir().getPath().."/data.txt"
local file = io.open(path, "r")
if file then
  local saved = file:read("*a")
  file:close()
  Key.setText(saved)
end ]]




if Build.VERSION.SDK_INT >= 19 then
  activity.getWindow().addFlags(WindowManager.LayoutParams.FLAG_DRAWS_SYSTEM_BAR_BACKGROUNDS).setStatusBarColor(0xFF0080FF);
  
end

icon={

  LinearLayout;
  layout_height="wrap";
  layout_width="wrap";
  id = "Win_minWindow";
  background="0xFF000000"; -- Solid black background
  {
    CardView;
    layout_height = "wrap";
    layout_width = "wrap";
    cardBackgroundColor="0x1AFFFFFF"; -- Solid black CardView background
    radius="8dp"; -- Rounded corners
    elevation="0dp"; -- Removes shadow effect
    id="menu"; -- Layout max
    {
      LinearLayout;
      layout_height = "wrap";
      layout_width = "wrap";
      orientation="horizontal";
      padding="5dp";
      background="0xFF000000"; -- Ensures inner layout is also black
      {
        ImageView;
       -- id="img1";
        id = "ic_to_top_Full";
        layout_width="15dp"; -- Adjusted size
        layout_height="15dp";
       -- src="icon/ic_to_top_Full.png";
        colorFilter="0xFFFFFFFF"; -- White icon
        layout_gravity="center";
        padding="3dp";
      };
      {
        TextView;
        textColor="0xFFFFFFFF"; -- White text
        textSize="10dp";
        Typeface=Typeface.defaultFromStyle(Typeface.BOLD);
        text="     ᴀʟᴇxᴀ ғʀᴇᴇ ɪɴᴊᴇᴄᴛᴏʀ | 1.6.53 64ʙɪᴛ ";
        layout_gravity="center";
        gravity="center";
        id="min_move";
      };
      {
        TextView;
        textColor="0xFFFFFFFF"; -- White text
        textSize="12dp";
        Typeface=Typeface.defaultFromStyle(Typeface.BOLD);
        text="";
        layout_gravity="center";
        gravity="center";
        id="win_temp"; -- FPS ID

      };
      {
        TextView;
        textColor="0xFFFFFFFF"; -- White text
        textSize="12dp";
        Typeface=Typeface.defaultFromStyle(Typeface.BOLD);
        text="";
        layout_gravity="center";
        gravity="center";
        id="cpu_temp"; -- FPS ID

      };
      {
        TextView;
        textColor="0xFFFFFFFF"; -- White text
        textSize="12dp";
        Typeface=Typeface.defaultFromStyle(Typeface.BOLD);
        text="";
        layout_gravity="center";
        gravity="center";
        id="gpu_temp"; -- FPS ID

      };


    };
  };
};
floating = {
  LinearLayout,
  layout_width="fill",
  layout_height="fill",
  background="transparent",
  orientation="vertical";
  {
    CardView,
    radius=20;
    layout_width="fill",
    layout_height="wrap",
    backgroundColor="0xFFFFFFFF",
    CardElevation="0dp",
    layout_gravity="center";
    id="win_mainview";
    {
      LinearLayout;
      orientation="vertical";
      layout_width="fill",
      layout_height="fill",
      gravity="center";
      {
        CardView,
        radius=0;
        layout_width="fill",
        layout_height="35dp",
        backgroundColor="0xFF202125",
        CardElevation="0dp",
        layout_gravity="center";
        id="fl";
        {
          LinearLayout;
          layout_height="wrap";
          layout_width="fill";
          orientation="horizontal";
          layout_gravity="center";
          padding="5dp";
          {
            LinearLayout;
            layout_height="wrap";
            layout_width="fill";
            orientation="vertical";
            layout_gravity="center";
            {
              LinearLayout;
              layout_height="wrap";
              layout_width="fill";
              orientation="vertical";
              layout_gravity="center";
              {
                TextView,
                typeface=Typeface.DEFAULT_BOLD,
                layout_width="wrap",
                layout_height="wrap",
                layout_gravity="center",
                textColor="0xFFFFFFFF",
                textSize="17sp",
                Gravity="center",
                layout_gravity="left";
                text=" ALEXA INJECTOR",
                id="t2",
              },
              {
                TextView,
                typeface=Typeface.DEFAULT_BOLD,
                layout_width="wrap",
                layout_height="wrap",
                layout_gravity="center",
                textColor="0xA0FFFFFF",
                textSize="8sp",
                Gravity="center",
                layout_gravity="left";
                text="",
                id="t3",
              },
            };
          };
        };

        {
          LinearLayout;
          orientation="horizontal";
          layout_height="fill";
          layout_width="fill";
          gravity="right";
          background="transparent",

          {
            ImageView;
            layout_width="30dp";
            layout_height="30dp";
           -- src="src/x.png";
            colorFilter="0xFFFFFFFF";
            layout_gravity="center";
            padding="5dp";
           -- id="t1";
            id = "x";
          };
        };
      };




      {
        CardView,
        radius=20;
        layout_width="fill",
        layout_height="wrap",
        backgroundColor="0xFF202125",
        CardElevation="0dp",
        layout_gravity="center";
        layout_margin="5dp";
        id="";
        {
          LinearLayout;
          orientation="vertical";
          layout_width="fill",
          layout_height="fill",
          gravity="center";
          {
            LinearLayout;
            orientation="vertical";
            padding="5";
            {
              ScrollView;
              layout_width="fill_parent";
              layout_height="fill",
              layout_gravity="center_horizontal";
              id="";
              {
                LinearLayout,
                id="win_mainviewX",
                layout_width="fill",
                layout_height="fill";
                backgroundColor="0x00000000";
                gravity="center";
                Visibility="visible";
                padding="3dp";
                {
                  LinearLayout;
                  orientation="vertical";
                  {
                    CardView,
                    id="win_mainview",
                    layout_width="85%w",
                    layout_height="fill";
                    backgroundColor="0x00000000",
                    CardElevation="0dp",
                    layout_gravity="center";
                    radius="0";
                    {
                      LinearLayout;
                      orientation="vertical";
                      layout_width="fill_parent";
                      background="transparent",
                      {
                        LinearLayout;
                        layout_width="fill_parent";
                        background="transparent";
                      };




                      {
                        LinearLayout;
                        orientation="horizontal";
                        layout_height="40dp";
                        layout_width="fill";
                        backgroundColor="0x00000000",
                        layout_gravity="center";
                        id="espmenu";
                        {
                          ImageView;
                          layout_width="25dp";
                          layout_height="25dp";
                         -- src="aaQHKoFopjRHoBpzhasjkljZxxAuktglnb.ogg";
                          colorFilter="0x8C000000";
                          layout_gravity="center";
                          padding="5dp";
                          id="espicon";
                        }; 



                        {
                          TextView;
                          text="ＩＮＪＥＣＴＯＲ ＭＥＮＵ";
                          textColor="0xFFFFFFFF";
                          id="";
                          textSize="13sp";
                          layout_gravity="center";
                          layout_width="fill";
                          layout_height="wrap";
                        };
                      };


                      {
                        LinearLayout;
                        layout_width="fill";
                        layout_height="fill",
                        orientation="vertical";
                        id="menu1";
                        visibility="gone";
                        {
                          ScrollView;
                          layout_width="fill";
                          layout_height="fill",
                          layout_gravity="center_horizontal";
                          id="";
                          {
                            LinearLayout;
                            layout_height="fill";
                            layout_width="fill";
                            orientation="vertical";
                            {
                              LinearLayout;
                              orientation="vertical";
                              layout_height="fill";
                              layout_width="fill";



                              {
                                TextView,
                                textColor = "0x9EFFFFFF",
                                layout_height = "wrap",
                                layout_width = "wrap",
                                text = "  Telegram: https://t.me/Alexak_only",
                                textSize = "10sp"
                              },
                              {
                                LinearLayout;
                                orientation="horizontal";
                                layout_height="40dp";
                                layout_width="fill";
                                backgroundColor="0x00000000",
                                layout_gravity="center";



                                {
                                  TextView;
                                  text="  𝗣𝗥𝗢𝗧𝗘𝗖𝗧𝗜𝗢𝗡";
                                  textColor="0x9EFFFFFF";
                                  id="";
                                  textSize="10sp";
                                  layout_gravity="center";
                                  layout_width="fill";
                                  layout_height="wrap";
                                };
                              };
                              -- Features Start
                              {
                                RadioButton,
                                text = "𝗕𝗬𝗣𝗔𝗦𝗦 𝗟𝗢𝗚𝗢 (OPEN GARENA LOGO)",
                                textColor = "0xFFFFFFFF",
                                id = "floatmenu1",
                                layout_gravity = "center",
                                textSize = "11sp",
                                padding="10dp";
                                layout_width = "fill",
                                layout_height = "wrap"
                              };
                              {
                                CheckBox,
                                text = "RESET GUEST (Alexa & Chorok)",
                                textColor = "0xFFFFFFFF",
                                id = "resetG",
                                layout_gravity = "center",
                                textSize = "11sp",
                                padding="10dp";
                                layout_width = "fill",
                                layout_height = "wrap"
                              };

                              {
                                CheckBox,
                                text = "Display Temperature on Floating Menu",
                                textColor = "0xFFFFFFFF",
                                id = "tempe",
                                layout_gravity = "center",
                                textSize = "11sp",
                                padding="10dp";
                                layout_width = "fill",
                                layout_height = "wrap"
                              };


                              {
                                LinearLayout;
                                orientation="vertical";
                                layout_width="fill";
                                layout_height="wrap";
                                backgroundColor="0xFF303030"; -- Background for dropdown section
                                padding="10dp";
                                margin="5dp";
                                radius="10dp"; -- Rounded corners
                                {
                                  TextView;
                                  text=" ADJUSTABLE FEATURES";
                                  textColor="0xFFFFFFFF";
                                  id="adjustableTrigger"; -- Trigger for dropdown
                                  textSize="10sp";
                                  layout_gravity="center";
                                  layout_width="fill";
                                  layout_height="wrap";
                                  padding="10dp";
                                  backgroundColor="0xFF505050"; -- Highlight the header
                                };
                                {
                                  LinearLayout;
                                  orientation="vertical";
                                  id="adjustableDropdown"; -- Dropdown container
                                  visibility="gone"; -- Initially hidden
                                  layout_width="fill";
                                  layout_height="wrap";
                                  padding="5dp";
                                  marginTop="5dp";
                                  backgroundColor="0xFF404040"; -- Background for dropdown content

                                  {
                                    TextView;
                                    id="seekValue";
                                    text="Aimbot Disabled"; -- Default value (midpoint)
                                    textSize="16sp";
                                    textColor="0xFFFFFFFF";
                                    layout_width="wrap";
                                    layout_height="wrap";
                                    layout_gravity="center";
                                  };

                       

                                  {
                                    SeekBar;
                                    id="aimbotSeekbar";
                                    layout_width="fill";
                                    layout_height="wrap";
                                    max=100; -- Max value (150 - 1 because min is 1)
                                    progress=1; -- Default value (midpoint, 75)
                                  };
                                

                                  -- Separator
                                  {
                                    View;
                                    layout_width="fill";
                                    layout_height="1dp";
                                    backgroundColor="0xFF505050"; -- Separator color
                                    marginTop="10dp";
                                    marginBottom="10dp";
                                  };

                                  {
                                    TextView;
                                    id="snowseekValue";
                                    text="SnowBoard Boost Disabled"; -- Default value (midpoint)
                                    textSize="16sp";
                                    textColor="0xFFFFFFFF";
                                    layout_width="wrap";
                                    layout_height="wrap";
                                    layout_gravity="center";
                                  };
                               
                                  {
                                    SeekBar;
                                    id="snowBSeekbar";
                                    layout_width="fill";
                                    layout_height="wrap";
                                    max=150; -- Max value (150 - 1 because min is 1)
                                    progress=1; -- Default value (midpoint, 75)
                                  };

                              

                                  -- Separator
                                  {
                                    View;
                                    layout_width="fill";
                                    layout_height="1dp";
                                    backgroundColor="0xFF505050"; -- Separator color
                                    marginTop="10dp";
                                    marginBottom="10dp";
                                  };



                                  {
                                    TextView;
                                    id="FOVseekValue";
                                    text="FOV Disabled"; -- Default value (midpoint)
                                    textSize="16sp";
                                    textColor="0xFFFFFFFF";
                                    layout_width="wrap";
                                    layout_height="wrap";
                                    layout_gravity="center";
                                  };

                              

                                  {
                                    SeekBar;
                                    id="FOVSeekbar";
                                    layout_width="fill";
                                    layout_height="wrap";
                                    max=100; -- Max value (150 - 1 because min is 1)
                                    progress=1; -- Default value (midpoint, 75)
                                  };
                                

                                };
                              };





                              -- Features End
                              -- DropDown For Gun Settings

                              {
                                LinearLayout;
                                orientation="vertical";
                                layout_width="fill";
                                layout_height="wrap";
                                backgroundColor="0xFF303030"; -- Background for dropdown section
                                padding="10dp";
                                margin="5dp";
                                radius="10dp"; -- Rounded corners
                                {
                                  TextView;
                                  text="  GUN SETTINGS: (GUN CHEAT)";
                                  textColor="0xFFFFFFFF";
                                  id="gunSettingsTrigger"; -- Trigger for dropdown
                                  textSize="10sp";
                                  layout_gravity="center";
                                  layout_width="fill";
                                  layout_height="wrap";
                                  padding="10dp";
                                  backgroundColor="0xFF505050"; -- Highlight the header
                                };
                                {
                                  LinearLayout;
                                  orientation="vertical";
                                  id="gunSettingsDropdown"; -- Dropdown container
                                  visibility="gone"; -- Initially hidden
                                  layout_width="fill";
                                  layout_height="wrap";
                                  padding="5dp";
                                  marginTop="5dp";
                                  backgroundColor="0xFF404040"; -- Background for dropdown content
                                  {
                                    CheckBox;
                                    text = "No Recoil";
                                    textColor = "0xFFFFFFFF";
                                    id = "noRecoil";
                                    textSize = "11dp";
                                    layout_gravity = "center";
                                    layout_width = "fill";
                                    layout_height = "wrap";
                                  };
                                  {
                                    CheckBox;
                                    text = "No Spread";
                                    textColor = "0xFFFFFFFF";
                                    id = "noSpread";
                                    textSize = "11dp";
                                    layout_gravity = "center";
                                    layout_width = "fill";
                                    layout_height = "wrap";
                                  };
                                  {
                                    CheckBox;
                                    text = "No Reload";
                                    textColor = "0xFFFFFFFF";
                                    id = "noReload";
                                    textSize = "11dp";
                                    layout_gravity = "center";
                                    layout_width = "fill";
                                    layout_height = "wrap";
                                  };
                                  {
                                    CheckBox;
                                    text = "Unli Ammo";
                                    textColor = "0xFFFFFFFF";
                                    id = "unliAmmo";
                                    textSize = "11dp";
                                    layout_gravity = "center";
                                    layout_width = "fill";
                                    layout_height = "wrap";
                                  };

                                  {
                                    CheckBox;
                                    text = "No FlashBang";
                                    textColor = "0xFFFFFFFF";
                                    id = "noFlash";
                                    textSize = "11dp";
                                    layout_gravity = "center";
                                    layout_width = "fill";
                                    layout_height = "wrap";
                                  };
                                  {
                                    CheckBox;
                                    text = "No Shake";
                                    textColor = "0xFFFFFFFF";
                                    id = "noShake";
                                    textSize = "11dp";
                                    layout_gravity = "center";
                                    layout_width = "fill";
                                    layout_height = "wrap";
                                  };

                                };
                              };




                              -- DropDown For Player Settings

                              {
                                LinearLayout;
                                orientation="vertical";
                                layout_width="fill";
                                layout_height="wrap";
                                backgroundColor="0xFF303030"; -- Background for dropdown section
                                padding="10dp";
                                margin="5dp";
                                radius="10dp"; -- Rounded corners
                                {
                                  TextView;
                                  text="  PLAYER SETTINGS: (PLAYER CHEAT)";
                                  textColor="0xFFFFFFFF";
                                  id="playerSettingsTrigger"; -- Trigger for dropdown
                                  textSize="10sp";
                                  layout_gravity="center";
                                  layout_width="fill";
                                  layout_height="wrap";
                                  padding="10dp";
                                  backgroundColor="0xFF505050"; -- Highlight the header
                                };
                                {
                                  LinearLayout;
                                  orientation="vertical";
                                  id="playerSettingsDropdown"; -- Dropdown container
                                  visibility="gone"; -- Initially hidden
                                  layout_width="fill";
                                  layout_height="wrap";
                                  padding="5dp";
                                  marginTop="5dp";
                                  backgroundColor="0xFF404040"; -- Background for dropdown content
                                  {
                                    CheckBox;
                                    text = "Advance UAV";
                                    textColor = "0xFFFFFFFF";
                                    id = "advanceUAV";
                                    textSize = "11dp";
                                    layout_gravity = "center";
                                    layout_width = "fill";
                                    layout_height = "wrap";
                                  };
                                  {
                                    CheckBox;
                                    text = "Spectator Tags";
                                    textColor = "0xFFFFFFFF";
                                    id = "espTags";
                                    textSize = "11dp";
                                    layout_gravity = "center";
                                    layout_width = "fill";
                                    layout_height = "wrap";
                                  };
                                  {
                                    CheckBox;
                                    text = "Hitbox";
                                    textColor = "0xFFFFFFFF";
                                    id = "hitbox";
                                    textSize = "11dp";
                                    layout_gravity = "center";
                                    layout_width = "fill";
                                    layout_height = "wrap";
                                  };
                                  {
                                    CheckBox;
                                    text = "Long Execution";
                                    textColor = "0xFFFFFFFF";
                                    id = "longExecution";
                                    textSize = "11dp";
                                    layout_gravity = "center";
                                    layout_width = "fill";
                                    layout_height = "wrap";
                                  };
                                  {
                                    CheckBox;
                                    text = "Wallhack B/Y (LOBBY)";
                                    textColor = "0xFFFFFFFF";
                                    id = "wallhackChams";
                                    textSize = "11dp";
                                    layout_gravity = "center";
                                    layout_width = "fill";
                                    layout_height = "wrap";
                                  };
                                  {
                                    CheckBox;
                                    text = "Wallhack RED (LOBBY)";
                                    textColor = "0xFFFFFFFF";
                                    id = "wallhackOutline";
                                    textSize = "11dp";
                                    layout_gravity = "center";
                                    layout_width = "fill";
                                    layout_height = "wrap";
                                  };

                                  {
                                    CheckBox;
                                    text = "Spectate No Delay";
                                    textColor = "0xFFFFFFFF";
                                    id = "NoDelay";
                                    textSize = "11dp";
                                    layout_gravity = "center";
                                    layout_width = "fill";
                                    layout_height = "wrap";
                                  };
                                };
                              };



                              -- DropDown For Movement Settings

                              {
                                LinearLayout;
                                orientation="vertical";
                                layout_width="fill";
                                layout_height="wrap";
                                backgroundColor="0xFF303030"; -- Background for dropdown section
                                padding="10dp";
                                margin="5dp";
                                radius="10dp"; -- Rounded corners
                                {
                                  TextView;
                                  text="  MOVEMENT SETTINGS: (MOVEMENT CHEAT)";
                                  textColor="0xFFFFFFFF";
                                  id="movementSettingsTrigger"; -- Trigger for dropdown
                                  textSize="10sp";
                                  layout_gravity="center";
                                  layout_width="fill";
                                  layout_height="wrap";
                                  padding="10dp";
                                  backgroundColor="0xFF505050"; -- Highlight the header
                                };
                                {
                                  LinearLayout;
                                  orientation="vertical";
                                  id="movementSettingsDropdown"; -- Dropdown container
                                  visibility="gone"; -- Initially hidden
                                  layout_width="fill";
                                  layout_height="wrap";
                                  padding="5dp";
                                  marginTop="5dp";
                                  backgroundColor="0xFF404040"; -- Background for dropdown content

                                  {
                                    CheckBox;
                                    text = "Fast Switch";
                                    textColor = "0xFFFFFFFF";
                                    id = "fastSwitch";
                                    textSize = "11dp";
                                    layout_gravity = "center";
                                    layout_width = "fill";
                                    layout_height = "wrap";
                                  };

                                  {
                                    CheckBox;
                                    text = "Long Slide";
                                    textColor = "0xFFFFFFFF";
                                    id = "longSlide";
                                    textSize = "11dp";
                                    layout_gravity = "center";
                                    layout_width = "fill";
                                    layout_height = "wrap";
                                  };



                                  {
                                    CheckBox;
                                    text = "Speedwalk";
                                    textColor = "0xFFFFFFFF";
                                    id = "speedwalk";
                                    textSize = "11dp";
                                    layout_gravity = "center";
                                    layout_width = "fill";
                                    layout_height = "wrap";
                                  };
                                  {
                                    CheckBox;
                                    text = "No Parachute";
                                    textColor = "0xFFFFFFFF";
                                    id = "noParachute";
                                    textSize = "11dp";
                                    layout_gravity = "center";
                                    layout_width = "fill";
                                    layout_height = "wrap";
                                  };
                                  {
                                    CheckBox;
                                    text = "Fast Dive/Drop";
                                    textColor = "0xFFFFFFFF";
                                    id = "fdive";
                                    textSize = "11dp";
                                    layout_gravity = "center";
                                    layout_width = "fill";
                                    layout_height = "wrap";
                                  };

                                  {
                                    CheckBox;
                                    text = "Pump Boost";
                                    textColor = "0xFFFFFFFF";
                                    id = "pBoost";
                                    textSize = "11dp";
                                    layout_gravity = "center";
                                    layout_width = "fill";
                                    layout_height = "wrap";
                                  };

                                  {
                                    CheckBox;
                                    text = "Gravity Fall";
                                    textColor = "0xFFFFFFFF";
                                    id = "maimai29";
                                    textSize = "11dp";
                                    layout_gravity = "center";
                                    layout_width = "fill";
                                    layout_height = "wrap";
                                  };
                                  {
                                    CheckBox;
                                    text = "Fast Swim";
                                    textColor = "0xFFFFFFFF";
                                    id = "fastSwim";
                                    textSize = "11dp";
                                    layout_gravity = "center";
                                    layout_width = "fill";
                                    layout_height = "wrap";
                                  };

                                };
                              };




                             --[[ {
                                LinearLayout;
                                orientation="vertical";
                                layout_width="fill";
                                layout_height="wrap";
                                backgroundColor="0xFF303030"; -- Background for dropdown section
                                padding="10dp";
                                margin="5dp";
                                radius="10dp"; -- Rounded corners
                                {
                                  TextView;
                                  text="SKIN HACKS";
                                  textColor="0xFFFFFFFF";
                                  id="skinTrigger"; -- Trigger for dropdown
                                  textSize="12sp";
                                  layout_gravity="center";
                                  layout_width="fill";
                                  layout_height="wrap";
                                  padding="10dp";
                                  backgroundColor="0xFF505050"; -- Highlight the header
                                };
                                {
                                  LinearLayout;
                                  orientation="vertical";
                                  id="skinDropdown"; -- Dropdown container
                                  visibility="gone"; -- Initially hidden
                                  layout_width="fill";
                                  layout_height="wrap";
                                  padding="5dp";
                                  marginTop="5dp";
                                  backgroundColor="0xFF404040"; -- Background for dropdown content
                                  {
                                    CheckBox;
                                    text="Ashura Reaper (Charly)";
                                    textColor="0xFFFFFFFF";
                                    id="maimai1";
                                    layout_gravity="center";
                                    textSize="15sp";
                                    layout_width="fill";
                                    layout_height="wrap";
                                  };

                                  {
                                    CheckBox;
                                    text="Nikto Darkside (Charly)";
                                    textColor="0xFFFFFFFF";
                                    id="maimai2";
                                    layout_gravity="center";
                                    textSize="15sp";
                                    layout_width="fill";
                                    layout_height="wrap";
                                  };

                                  {
                                    CheckBox;
                                    text="NYX STARSTRUCK (Charly)";
                                    textColor="0xFFFFFFFF";
                                    id="maimai3";
                                    layout_gravity="center";
                                    textSize="15sp";
                                    layout_width="fill";
                                    layout_height="wrap";
                                  };

                                  {
                                    CheckBox;
                                    text="DAME BREAK OF DAWN (Charly)";
                                    textColor="0xFFFFFFFF";
                                    id="maimai4";
                                    layout_gravity="center";
                                    textSize="15sp";
                                    layout_width="fill";
                                    layout_height="wrap";
                                  };

                                  {
                                    CheckBox;
                                    text="OUTRIDER TECHBORN (Charly)";
                                    textColor="0xFFFFFFFF";
                                    id="maimai5";
                                    layout_gravity="center";
                                    textSize="15sp";
                                    layout_width="fill";
                                    layout_height="wrap";
                                  };

                                  {
                                    CheckBox;
                                    text="SOPHIA ERRANT KNIGHT (Charly)";
                                    textColor="0xFFFFFFFF";
                                    id="maimai6";
                                    layout_gravity="center";
                                    textSize="15sp";
                                    layout_width="fill";
                                    layout_height="wrap";
                                  };

                                  {
                                    CheckBox;
                                    text="MANTA RAY (Charly)";
                                    textColor="0xFFFFFFFF";
                                    id="maimai7";
                                    layout_gravity="center";
                                    textSize="15sp";
                                    layout_width="fill";
                                    layout_height="wrap";
                                  };

                                  {
                                    CheckBox;
                                    text="HIDORA KAI (Charly)";
                                    textColor="0xFFFFFFFF";
                                    id="maimai8";
                                    layout_gravity="center";
                                    textSize="15sp";
                                    layout_width="fill";
                                    layout_height="wrap";
                                  };

                                  {
                                    CheckBox;
                                    text="FOXROT (Charly)";
                                    textColor="0xFFFFFFFF";
                                    id="maimai9";
                                    layout_gravity="center";
                                    textSize="15sp";
                                    layout_width="fill";
                                    layout_height="wrap";
                                  };


                                  {
                                    TextView;
                                    text="GUN SKIN HACK";
                                    textColor="0xFFFF8C00";
                                    textSize="20sp";
                                    layout_width = "fill";
                                    layout_height = "wrap";
                                  };
                                  {
                                    TextView;
                                    id="GunGuide";
                                    text="USE AK117 IF THE SKIN YOU WANT HAVE (117) INDICATED"; -- Default value (midpoint)
                                    textSize="10sp";
                                    textColor="0xFFFF8C00";
                                    layout_width="fill";
                                    layout_height="wrap";
                                    layout_gravity="left";
                                  };
                                  {
                                    CheckBox;
                                    text="AK117 MYTHIC (M Mori)";
                                    textColor="0xFFFFFFFF";
                                    id="maimai10";
                                    layout_gravity="center";
                                    textSize="15sp";
                                    layout_width="fill";
                                    layout_height="wrap";
                                  };

                                  {
                                    CheckBox;
                                    text="BP50 MYTHIC (AK117)";
                                    textColor="0xFFFFFFFF";
                                    id="maimai11";
                                    layout_gravity="center";
                                    textSize="15sp";
                                    layout_width="fill";
                                    layout_height="wrap";
                                  };

                                  {
                                    CheckBox;
                                    text="FFar MYTHIC (AK117)";
                                    textColor="0xFFFFFFFF";
                                    id="maimai12";
                                    layout_gravity="center";
                                    textSize="15sp";
                                    layout_width="fill";
                                    layout_height="wrap";
                                  };

                                  {
                                    CheckBox;
                                    text="Grau MYTHIC (AK117)";
                                    textColor="0xFFFFFFFF";
                                    id="maimai13";
                                    layout_gravity="center";
                                    textSize="15sp";
                                    layout_width="fill";
                                    layout_height="wrap";
                                  };

                                  {
                                    CheckBox;
                                    text="Krig6 MYTHIC (AK117)";
                                    textColor="0xFFFFFFFF";
                                    id="maimai14";
                                    layout_gravity="center";
                                    textSize="15sp";
                                    layout_width="fill";
                                    layout_height="wrap";
                                  };

                                  {
                                    CheckBox;
                                    text="Type 19 MYTHIC (AK117)";
                                    textColor="0xFFFFFFFF";
                                    id="maimai15";
                                    layout_gravity="center";
                                    textSize="15sp";
                                    layout_width="fill";
                                    layout_height="wrap";
                                  };

                                  {
                                    CheckBox;
                                    text="AK47 MYTHIC (AK117)";
                                    textColor="0xFFFFFFFF";
                                    id="maimai16";
                                    layout_gravity="center";
                                    textSize="15sp";
                                    layout_width="fill";
                                    layout_height="wrap";
                                  };

                                  {
                                    CheckBox;
                                    text="DLQ MYTHIC (AK117)";
                                    textColor="0xFFFFFFFF";
                                    id="maimai17";
                                    layout_gravity="center";
                                    textSize="15sp";
                                    layout_width="fill";
                                    layout_height="wrap";
                                  };

                                  {
                                    CheckBox;
                                    text="Jak12 MYTHIC";
                                    textColor="0xFFFFFFFF";
                                    id="maimai18";
                                    layout_gravity="center";
                                    textSize="15sp";
                                    layout_width="fill";
                                    layout_height="wrap";
                                  };

                                  {
                                    CheckBox;
                                    text="Switchblade MYTHIC";
                                    textColor="0xFFFFFFFF";
                                    id="maimai19";
                                    layout_gravity="center";
                                    textSize="15sp";
                                    layout_width="fill";
                                    layout_height="wrap";
                                  };

                                  {
                                    CheckBox;
                                    text="QQ9 MYTHIC";
                                    textColor="0xFFFFFFFF";
                                    id="maimai20";
                                    layout_gravity="center";
                                    textSize="15sp";
                                    layout_width="fill";
                                    layout_height="wrap";
                                  };

                                  {
                                    CheckBox;
                                    text="FENNEC MYTHIC";
                                    textColor="0xFFFFFFFF";
                                    id="maimai21";
                                    layout_gravity="center";
                                    textSize="15sp";
                                    layout_width="fill";
                                    layout_height="wrap";
                                  };

                                  {
                                    CheckBox;
                                    text="ARGUS LEGENDARY";
                                    textColor="0xFFFFFFFF";
                                    id="maimai22";
                                    layout_gravity="center";
                                    textSize="15sp";
                                    layout_width="fill";
                                    layout_height="wrap";
                                  };

                                  {
                                    CheckBox;
                                    text="R90 LEGENDARY";
                                    textColor="0xFFFFFFFF";
                                    id="maimai23";
                                    layout_gravity="center";
                                    textSize="15sp";
                                    layout_width="fill";
                                    layout_height="wrap";
                                  };

                                  {
                                    CheckBox;
                                    text="BY50 LEGENDARY";
                                    textColor="0xFFFFFFFF";
                                    id="maimai24";
                                    layout_gravity="center";
                                    textSize="15sp";
                                    layout_width="fill";
                                    layout_height="wrap";
                                  };

                                  {
                                    CheckBox;
                                    text="KRM LEGENDARY";
                                    textColor="0xFFFFFFFF";
                                    id="maimai25";
                                    layout_gravity="center";
                                    textSize="15sp";
                                    layout_width="fill";
                                    layout_height="wrap";
                                  };

                                  {
                                    CheckBox;
                                    text="LOCUS LEGENDARY";
                                    textColor="0xFFFFFFFF";
                                    id="maimai26";
                                    layout_gravity="center";
                                    textSize="15sp";
                                    layout_width="fill";
                                    layout_height="wrap";
                                  };


                                  {
                                    CheckBox;
                                    text="MG42 THE CAMPAIGN";
                                    textColor="0xFFFFFFFF";
                                    id="skin9";
                                    layout_gravity="center";
                                    textSize="15sp";
                                    layout_width="fill";
                                    layout_height="wrap";
                                  };

                                  {
                                    CheckBox;
                                    text="X9 Neon Legend";
                                    textColor="0xFFFFFFFF";
                                    id="skin5";
                                    layout_gravity="center";
                                    textSize="15sp";
                                    layout_width="fill";
                                    layout_height="wrap";
                                  };


                                  {
                                    CheckBox;
                                    text="Fennec Accended";
                                    textColor="0xFFFFFFFF";
                                    id="skin11";
                                    layout_gravity="center";
                                    textSize="15sp";
                                    layout_width="fill";
                                    layout_height="wrap";
                                  };


                                  {
                                    CheckBox;
                                    text="M13 Morning Star";
                                    textColor="0xFFFFFFFF";
                                    id="skin12";
                                    layout_gravity="center";
                                    textSize="15sp";
                                    layout_width="fill";
                                    layout_height="wrap";
                                  };

                                  {
                                    CheckBox;
                                    text="AK Hizuki";
                                    textColor="0xFFFFFFFF";
                                    id="skin14";
                                    layout_gravity="center";
                                    textSize="15sp";
                                    layout_width="fill";
                                    layout_height="wrap";
                                  };





                                  {
                                    CheckBox;
                                    text="Oden Mythic";
                                    textColor="0xFFFFFFFF";
                                    id="skin16";
                                    layout_gravity="center";
                                    textSize="15sp";
                                    layout_width="fill";
                                    layout_height="wrap";
                                  };



                                  {
                                    CheckBox;
                                    text="KNIFE BUTTERFLY LEGENDARY";
                                    textColor="0xFFFFFFFF";
                                    id="maimai27";
                                    layout_gravity="center";
                                    textSize="15sp";
                                    layout_width="fill";
                                    layout_height="wrap";
                                  };

                                };
                              };



                              {
                                LinearLayout;
                                orientation="vertical";
                                layout_width="fill";
                                layout_height="wrap";
                                backgroundColor="0xFF303030"; -- Background for dropdown section
                                padding="10dp";
                                margin="5dp";
                                radius="10dp"; -- Rounded corners
                                {
                                  TextView;
                                  text="LIGHT ANTHENNA (OPEN EVERY GAME)";
                                  textColor="0xFFFFFFFF";
                                  id="annTrigger"; -- Trigger for dropdown
                                  textSize="12sp";
                                  layout_gravity="center";
                                  layout_width="fill";
                                  layout_height="wrap";
                                  padding="10dp";
                                  backgroundColor="0xFF505050"; -- Highlight the header
                                };
                                {
                                  LinearLayout;
                                  orientation="vertical";
                                  id="annDropdown"; -- Dropdown container
                                  visibility="gone"; -- Initially hidden
                                  layout_width="fill";
                                  layout_height="wrap";
                                  padding="5dp";
                                  marginTop="5dp";
                                  backgroundColor="0xFF404040"; -- Background for dropdown content
                                  {
                                    TextView;
                                    text="ANNTENA FOR SUPPORTED DEVICE";
                                    textColor="0xFFFF8C00";
                                    layout_gravity="center";
                                    textSize="15sp";
                                    layout_width = "fill";
                                    layout_height = "wrap";
                                  };

                                  {
                                    CheckBox;
                                    text="ᴀɴɴᴛᴇɴᴀ ʀᴇᴅ";
                                    textColor="0xFFFFFFFF";
                                    id="anntena1";
                                    layout_gravity="center";
                                    textSize="15sp";
                                    layout_width="fill";
                                    layout_height="wrap";

                                  };

                                  {
                                    CheckBox;
                                    text="ᴀɴɴᴛᴇɴᴀ ʙʟᴜᴇ";
                                    textColor="0xFFFFFFFF";
                                    id="anntena2";
                                    layout_gravity="center";
                                    textSize="15sp";
                                    layout_width="fill";
                                    layout_height="wrap";

                                  };

                                  {
                                    CheckBox;
                                    text="ᴀɴɴᴛᴇɴᴀ ᴘɪɴᴋ";
                                    textColor="0xFFFFFFFF";
                                    id="anntena3";
                                    layout_gravity="center";
                                    textSize="15sp";
                                    layout_width="fill";
                                    layout_height="wrap";

                                  };

                                  {
                                    CheckBox;
                                    text="ᴀɴɴᴛᴇɴᴀ ᴄʏᴀɴ";
                                    textColor="0xFFFFFFFF";
                                    id="anntena4";
                                    layout_gravity="center";
                                    textSize="15sp";
                                    layout_width="fill";
                                    layout_height="wrap";

                                  };

                                  {
                                    CheckBox;
                                    text="ᴀɴɴᴛᴇɴᴀ ʙʟᴀᴄᴋ";
                                    textColor="0xFFFFFFFF";
                                    id="anntena5";
                                    layout_gravity="center";
                                    textSize="15sp";
                                    layout_width="fill";
                                    layout_height="wrap";

                                  };

                                  {
                                    CheckBox;
                                    text="ᴀɴɴᴛᴇɴᴀ ɢʀᴇᴇɴ";
                                    textColor="0xFFFFFFFF";
                                    id="anntena6";
                                    layout_gravity="center";
                                    textSize="15sp";
                                    layout_width="fill";
                                    layout_height="wrap";

                                  };

                                  {
                                    CheckBox;
                                    text="ᴀɴɴᴛᴇɴᴀ ᴘᴜʀᴘʟᴇ";
                                    textColor="0xFFFFFFFF";
                                    id="anntena7";
                                    layout_gravity="center";
                                    textSize="15sp";
                                    layout_width="fill";
                                    layout_height="wrap";

                                  };
                                  {
                                    CheckBox;
                                    text="ᴀɴɴᴛᴇɴᴀ ʏᴇʟʟᴏᴡ";
                                    textColor="0xFFFFFFFF";
                                    id="anntena8";
                                    layout_gravity="center";
                                    textSize="15sp";
                                    layout_width="fill";
                                    layout_height="wrap";

                                  };

                                  {
                                    CheckBox;
                                    text="ᴀɴɴᴛᴇɴᴀ ᴏʀᴀɴɢᴇ";
                                    textColor="0xFFFFFFFF";
                                    id="anntena9";
                                    layout_gravity="center";
                                    textSize="15sp";
                                    layout_width="fill";
                                    layout_height="wrap";

                                  };
                                },
                              };






                              {
                                LinearLayout;
                                orientation="vertical";
                                layout_width="fill";
                                layout_height="wrap";
                                backgroundColor="0xFF303030"; -- Background for dropdown section
                                padding="10dp";
                                margin="5dp";
                                radius="10dp"; -- Rounded corners
                                {
                                  TextView;
                                  text="SKIN HACKS V2 (SOON) ";
                                  textColor="0xFFFFFFFF";
                                  id="skin2Trigger"; -- Trigger for dropdown
                                  textSize="12sp";
                                  layout_gravity="center";
                                  layout_width="fill";
                                  layout_height="wrap";
                                  padding="10dp";
                                  backgroundColor="0xFF505050"; -- Highlight the header
                                };
                                {
                                  LinearLayout;
                                  orientation="vertical";
                                  id="skin2Dropdown"; -- Dropdown container
                                  visibility="gone"; -- Initially hidden
                                  layout_width="fill";
                                  layout_height="wrap";
                                  padding="5dp";
                                  marginTop="5dp";
                                  backgroundColor="0xFF404040"; -- Background for dropdown content


                                  {
                                    TextView;
                                    text="ᴜsᴇ ᴄʜᴀʀʟʏ sᴋɪɴ [ ᴠɪsᴜᴀʟ sᴋɪɴ ]";
                                    textColor="0xFFFFFFFF";
                                    id="";
                                    textSize="15sp";
                                    layout_gravity="center";
                                    layout_width="wrap";
                                    layout_height="wrap";
                                  };
                                  {

                                    RadioButton,
                                    text = "ᴀsʜᴜʀᴀ ʀᴇᴀᴘᴇʀ",
                                    textColor = "0xFFFFFFFF",
                                    id = "ashura",
                                    textSize = "15sp",
                                    layout_gravity = "center",
                                    layout_width="77%w",
                                    layout_height = "wrap"
                                  },

                                  {
                                    RadioButton,
                                    text = "ɴɪᴋᴛᴏ ᴅᴀʀᴋsɪᴅᴇ",
                                    textColor = "0xFFFFFFFF",
                                    id = "nikto",
                                    textSize = "15sp",
                                    layout_gravity = "center",
                                    layout_width="77%w",
                                    layout_height = "wrap"
                                  },

                                  {
                                    RadioButton,
                                    text = "ʜɪɢʜᴘʀɪᴇꜱᴛᴏꜰᴄʜᴀᴏꜱ - ᴘᴀᴅᴇʀ",
                                    textColor = "0xFFFFFFFF",
                                    id = "pader",
                                    textSize = "15sp",
                                    layout_gravity = "center",
                                    layout_width="77%w",
                                    layout_height = "wrap"
                                  },

                                  {
                                    RadioButton,
                                    text = "ᴠɪᴠɪᴀɴʜᴀʀʀɪꜱ - ʙʟᴀᴄᴋ ᴠɪᴠɪᴀɴ",
                                    textColor = "0xFFFFFFFF",
                                    id = "vivian",
                                    textSize = "15sp",
                                    layout_gravity = "center",
                                    layout_width="77%w",
                                    layout_height = "wrap"
                                  },

                                  {


                                    TextView;
                                    text="ᴜsᴇ ᴀᴋ 117 [ ᴡɪᴛʜ ᴋɪʟʟ ᴇғғᴇᴄᴛ ]";
                                    textColor="0xFFFFFFFF";
                                    id="";
                                    textSize="15sp";
                                    layout_gravity="center";
                                    layout_width="wrap";
                                    layout_height="wrap";
                                  };
                                  {
                                    RadioButton,
                                    text = "ᴀᴋ117 ᴍʏᴛʜɪᴄ",
                                    textColor = "0xFFFFFFFF",
                                    id = "ak117",
                                    textSize = "15sp",
                                    layout_gravity = "center",
                                    layout_width="77%w",
                                    layout_height = "wrap"
                                  },

                                  {
                                    RadioButton,
                                    text = "ʙᴘ50 ᴍʏᴛʜɪᴄ",
                                    textColor = "0xFFFFFFFF",
                                    id = "bp50",
                                    textSize = "15sp",
                                    layout_gravity = "center",
                                    layout_width="77%w",
                                    layout_height = "wrap"
                                  },

                                  {
                                    RadioButton,
                                    text = "ғғᴀʀ ᴍʏᴛʜɪᴄ",
                                    textColor = "0xFFFFFFFF",
                                    id = "ffar",
                                    textSize = "15sp",
                                    layout_gravity = "center",
                                    layout_width="77%w",
                                    layout_height = "wrap"
                                  },

                                  {
                                    RadioButton,
                                    text = "ɢʀᴀᴜ ᴍʏᴛʜɪᴄ",
                                    textColor = "0xFFFFFFFF",
                                    id = "grau",
                                    textSize = "15sp",
                                    layout_gravity = "center",
                                    layout_width="77%w",
                                    layout_height = "wrap"
                                  },

                                  {
                                    RadioButton,
                                    text = "ᴋʀɪɢ6 ᴍʏᴛʜɪᴄ",
                                    textColor = "0xFFFFFFFF",
                                    id = "krig6",
                                    textSize = "15sp",
                                    layout_gravity = "center",
                                    layout_width="77%w",
                                    layout_height = "wrap"
                                  },

                                  {
                                    RadioButton,
                                    text = "ᴛʏᴘᴇ 19 ᴍʏᴛʜɪᴄ",
                                    textColor = "0xFFFFFFFF",
                                    id = "type19",
                                    textSize = "15sp",
                                    layout_gravity = "center",
                                    layout_width="77%w",
                                    layout_height = "wrap"
                                  },

                                  {


                                    TextView;
                                    text="ᴜsᴇ sɢ [ ᴡɪᴛʜ ᴋɪʟʟ ᴇғғᴇᴄᴛ ]";
                                    textColor="0xFFFFFFFF";
                                    id="";
                                    textSize="15sp";
                                    layout_gravity="center";
                                    layout_width="wrap";
                                    layout_height="wrap";
                                  };
                                  {
                                    RadioButton,
                                    text = "ᴋʀᴍ ɢʟᴏʀɪᴏᴜs ʙʟᴀᴢᴇ",
                                    textColor = "0xFFFFFFFF",
                                    id = "krmleg",
                                    textSize = "15sp",
                                    layout_gravity = "center",
                                    layout_width="77%w",
                                    layout_height = "wrap"
                                  },

                                  {
                                    RadioButton,
                                    text = "ʙʏ15 ʙᴏʙᴀ",
                                    textColor = "0xFFFFFFFF",
                                    id = "by15boba",
                                    textSize = "15sp",
                                    layout_gravity = "center",
                                    layout_width="77%w",
                                    layout_height = "wrap"
                                  },

                                  {
                                    RadioButton,
                                    text = "ʜs sᴏɴɢᴛʀᴇss",
                                    textColor = "0xFFFFFFFF",
                                    id = "hssong",
                                    textSize = "15sp",
                                    layout_gravity = "center",
                                    layout_width="77%w",
                                    layout_height = "wrap"
                                  },


                                  {

                                    TextView;
                                    text="ᴜsᴇ ᴅᴇғᴀᴜʟᴛ ɢᴜɴ [ ᴡɪᴛʜ ᴋɪʟʟ ᴇғғᴇᴄᴛ ]";
                                    textColor="0xFFFFFFFF";
                                    id="";
                                    textSize="15sp";
                                    layout_gravity="center";
                                    layout_width="wrap";
                                    layout_height="wrap";

                                  };
                                  {
                                    RadioButton,
                                    text = "ʟᴏᴄᴜs ʟᴇɢᴇɴᴅᴀʀʏ",
                                    textColor = "0xFFFFFFFF",
                                    id = "locus",
                                    textSize = "15sp",
                                    layout_gravity = "center",
                                    layout_width="77%w",
                                    layout_height = "wrap"
                                  };
                                  {
                                    RadioButton,
                                    text = "ᴀᴋ𝟦𝟩 ᴍʏᴛʜɪᴄ",
                                    textColor = "0xFFFFFFFF",
                                    id = "ak47",
                                    textSize = "15sp",
                                    layout_gravity = "center",
                                    layout_width="77%w",
                                    layout_height = "wrap"
                                  };
                                  {
                                    TextView;
                                    text="ᴜsᴇ ᴅᴇғᴀᴜʟᴛ ɢᴜɴ [ ɴᴏ ᴇғғᴇᴄᴛ ]";
                                    textColor="0xFFFFFFFF";
                                    id="";
                                    textSize="15sp";
                                    layout_gravity="center";
                                    layout_width="wrap";
                                    layout_height="wrap";

                                  };
                                  {
                                    RadioButton,
                                    text = "ᴍɢ40 ᴍʏᴛʜɪᴄ",
                                    textColor = "0xFFFFFFFF",
                                    id = "mg40",
                                    textSize = "15sp",
                                    layout_gravity = "center",
                                    layout_width="77%w",
                                    layout_height = "wrap"
                                  };
                                  {
                                    RadioButton,
                                    text = "sᴡɪᴛᴄʜʙʟᴀᴅᴇ x9 ᴍʏᴛʜɪᴄ",
                                    textColor = "0xFFFFFFFF",
                                    id = "x9",
                                    textSize = "15sp",
                                    layout_gravity = "center",
                                    layout_width="77%w",
                                    layout_height = "wrap"
                                  };
                                  {
                                    RadioButton,
                                    text = "ꜰᴇɴɴᴇᴄ ᴍʏᴛʜɪᴄ",
                                    textColor = "0xFFFFFFFF",
                                    id = "fennec",
                                    textSize = "15sp",
                                    layout_gravity = "center",
                                    layout_width="77%w",
                                    layout_height = "wrap"
                                  };
                                  {
                                    RadioButton,
                                    text = "ǫǫ9 ᴍʏᴛʜɪᴄ",
                                    textColor = "0xFFFFFFFF",
                                    id = "qq9",
                                    textSize = "15sp",
                                    layout_gravity = "center",
                                    layout_width="77%w",
                                    layout_height = "wrap"
                                  };
                                  {
                                    RadioButton,
                                    text = "ᴍ13 ᴍʏᴛʜɪᴄ",
                                    textColor = "0xFFFFFFFF",
                                    id = "m13",
                                    textSize = "15sp",
                                    layout_gravity = "center",
                                    layout_width="77%w",
                                    layout_height = "wrap"
                                  };
                                  {
                                    TextView;
                                    text="ᴜsᴇ ᴅᴇғᴀᴜʟᴛ ɢᴜɴ [ ɴᴏ ᴋɪʟʟ ᴇғғᴇᴄᴛ ]";
                                    textColor="0xFFFFFFFF";
                                    id="";
                                    textSize="15sp";
                                    layout_gravity="center";
                                    layout_width="wrap";
                                    layout_height="wrap";

                                  };
                                  {
                                    RadioButton,
                                    text = "ᴅʟǫ ᴍʏᴛʜɪᴄ",
                                    textColor = "0xFFFFFFFF",
                                    id = "dlq",
                                    textSize = "15sp",
                                    layout_gravity = "center",
                                    layout_width="77%w",
                                    layout_height = "wrap"
                                  },

                                  {
                                    RadioButton,
                                    text = "ᴊᴀᴄᴋ ᴍʏᴛʜɪᴄ",
                                    textColor = "0xFFFFFFFF",
                                    id = "jak",
                                    textSize = "15sp",
                                    layout_gravity = "center",
                                    layout_width="77%w",
                                    layout_height = "wrap"
                                  };

                                  {
                                    TextView;
                                    text="ᴜsᴇ ᴅᴇғᴀᴜʟᴛ ᴍᴇʟᴇᴇ [ ɴᴏ ᴋɪʟʟ ᴇғғᴇᴄᴛ ]";
                                    textColor="0xFFFFFFFF";
                                    id="";
                                    textSize="15sp";
                                    layout_gravity="center";
                                    layout_width="wrap";
                                    layout_height="wrap";

                                  };
                                  {
                                    RadioButton,
                                    text = "ᴛᴀɴɢ ᴋɴɪꜰᴇ",
                                    textColor = "0xFFFFFFFF",
                                    id = "tang",
                                    textSize = "15sp",
                                    layout_gravity = "center",
                                    layout_width="77%w",
                                    layout_height = "wrap"
                                  };
                                  {
                                    RadioButton,
                                    text = "ᴅᴀʀᴋ sᴡᴏʀᴅ",
                                    textColor = "0xFFFFFFFF",
                                    id = "dark",
                                    textSize = "15sp",
                                    layout_gravity = "center",
                                    layout_width="77%w",
                                    layout_height = "wrap"
                                  };
                                  {
                                    TextView;
                                    text="ᴀᴄᴛɪᴠᴀᴛᴇ ᴛʜɪs ᴡʜɪʟᴇ ɪɴɢᴀᴍᴇ";
                                    textColor="0xFFFFFFFF";
                                    id="";
                                    textSize="15sp";
                                    layout_gravity="center";
                                    layout_width="wrap";
                                    layout_height="wrap";
                                  };
                                  {
                                    Switch,
                                    text="ʀᴇᴅ ᴀɴᴛᴇɴɴᴀ";
                                    textColor="0xFFFFFFFF";
                                    id="antenna";
                                    layout_gravity="center";
                                    textSize="15sp";
                                    layout_width="fill";
                                    layout_height="wrap";
                                  };
                                  {
                                    Switch,
                                    text="ᴄʏᴀɴ ᴀɴᴛᴇɴɴᴀ";
                                    textColor="0xFFFFFFFF";
                                    id="antenna1";
                                    layout_gravity="center";
                                    textSize="15sp";
                                    layout_width="fill";
                                    layout_height="wrap";
                                  };
                                  {
                                    Switch,
                                    text="ʙʟᴀᴄᴋ ᴀɴᴛᴇɴɴᴀ";
                                    textColor="0xFFFFFFFF";
                                    id="antenna2";
                                    layout_gravity="center";
                                    textSize="15sp";
                                    layout_width="fill";
                                    layout_height="wrap";
                                  };
                                  {
                                    Switch,
                                    text="ᴡʜɪᴛᴇ ᴀɴᴛᴇɴɴᴀ";
                                    textColor="0xFFFFFFFF";
                                    id="antenna3";
                                    layout_gravity="center";
                                    textSize="15sp";
                                    layout_width="fill";
                                    layout_height="wrap";
                                  };
                                  {
                                    Switch,
                                    text="ᴘᴜʀᴘʟᴇ ᴀɴᴛᴇɴɴᴀ";
                                    textColor="0xFFFFFFFF";
                                    id="antenna4";
                                    layout_gravity="center";
                                    textSize="15sp";
                                    layout_width="fill";
                                    layout_height="wrap";
                                  };
                                  {
                                    Switch,
                                    text="ʏᴇʟʟᴏᴡ ᴀɴᴛᴇɴɴᴀ";
                                    textColor="0xFFFFFFFF";
                                    id="antenna5";
                                    layout_gravity="center";
                                    textSize="15sp";
                                    layout_width="fill";
                                    layout_height="wrap";
                                  };
                                  {
                                    Switch,
                                    text="ᴏʀᴀɴɢᴇ ᴀɴᴛᴇɴɴᴀ";
                                    textColor="0xFFFFFFFF";
                                    id="antenna6";
                                    layout_gravity="center";
                                    textSize="15sp";
                                    layout_width="fill";
                                    layout_height="wrap";


                                  };


                                },
                              };
]]



                              {
                                TextView;
                                text="  𝗚𝗔𝗠𝗘 𝗕𝗢𝗢𝗦𝗧𝗘𝗥";
                                textColor="0x9EFFFFFF";
                                id="";
                                textSize="10sp";
                                layout_gravity="center";
                                layout_width="fill";
                                layout_height="wrap";
                              };

                              {
                                TextView;
                                text="  𝗠𝗔𝗫 𝗙𝗥𝗔𝗠𝗘𝗥𝗔𝗧𝗘 | 𝗔𝗡𝗧𝗜 𝗙𝗣𝗦 𝗗𝗥𝗢𝗣 | 𝗙𝗣𝗦 𝗟𝗢𝗖𝗞 𝟭𝟮𝟬";
                                textColor="0x9EFFFFFF";
                                id="";
                                textSize="11sp";
                                layout_gravity="center";
                                layout_width="fill";
                                layout_height="wrap";
                              };

                              {
                                RadioButton,
                                text = "𝗚𝗔𝗠𝗘 𝗕𝗢𝗢𝗦𝗧",
                                textColor = "0xFFFFFFFF",
                                id = "max",
                                layout_gravity = "center",
                                textSize = "12sp",
                                padding="10dp";
                                layout_width = "fill",
                                layout_height = "wrap"
                              };





                              {
                                Button,
                                text = "KILL MENU",
                                textColor = "0xFFFFFFFF",
                                id = "Exit",
                                layout_gravity = "center",
                                textSize = "12sp",
                                padding="10dp";
                                layout_width = "fill",
                                layout_height = "wrap",
                                backgroundColor="0xFF303030";
                              };








                              --[[ {

                                CheckBox,
                                text = "Bypass Test",
                                textColor = "0xFFFFFFFF",
                                id = "BlackGold",
                                textSize = "15sp",
                                layout_gravity = "center",
                                layout_width="77%w",
                                layout_height = "wrap"
                              },]]
                              --[[
                              {
                                CheckBox,
                                text = "HOLGER 26",
                                textColor = "0xFFFFFFFF",
                                id = "HOLGER",
                                textSize = "15sp",
                                layout_gravity = "center",
                                layout_width="77%w",
                                layout_height = "wrap"
                              },



]]




                              -- Features End

                            },


                          };


                        };
                      };
                    };
                  };
                };
              };
            };
          };
        };
      };
    };
  };
};

start.setEnabled(false)


LayoutVIP = activity.getSystemService(Context.WINDOW_SERVICE)
HasFocus = false
WmHz = WindowManager.LayoutParams()
if Build.VERSION.SDK_INT >= 26 then
  WmHz.type = WindowManager.LayoutParams.TYPE_APPLICATION_OVERLAY
 else
  WmHz.type = WindowManager.LayoutParams.TYPE_SYSTEM_ALERT
end

import("android.graphics.PixelFormat")
WmHz.format = PixelFormat.RGBA_8888
WmHz.flags = WindowManager.LayoutParams().FLAG_NOT_FOCUSABLE
WmHz.gravity = Gravity.CENTER | Gravity.CENTER
WmHz.x = 0
WmHz.y = 0
WmHz.width = WindowManager.LayoutParams.WRAP_CONTENT
WmHz.height = WindowManager.LayoutParams.WRAP_CONTENT
mainWindow = loadlayout(floating)
loadImage(x, "x", 0xFFFFFFFF)
minWindow = loadlayout(icon)
isMax = true
loadImage(ic_to_top_Full, "ic_to_top_Full", 0xFFFFFFFF)
function win_mainview.OnTouchListener(A0_28, A1_29)
  if A1_29.getAction() == MotionEvent.ACTION_DOWN then
    firstX = A1_29.getRawX()
    firstY = A1_29.getRawY()
    wmX = WmHz.x
    wmY = WmHz.y
   elseif A1_29.getAction() == MotionEvent.ACTION_MOVE then
    WmHz.x = wmX + (A1_29.getRawX() - firstX)
    WmHz.y = wmY + (A1_29.getRawY() - firstY)
    LayoutVIP.updateViewLayout(mainWindow, WmHz)
   elseif A1_29.getAction() == MotionEvent.ACTION_UP then
  end
  return true
end



join.onClick = function()
  local url = "https://t.me/AlexaInjector"
  local intent = Intent(Intent.ACTION_VIEW, Uri.parse(url))
  activity.startActivity(intent)
end

register.onClick = function()
  local url = "https://alexaofficial.x10.mx/Free/register.php"
  local intent = Intent(Intent.ACTION_VIEW, Uri.parse(url))
  activity.startActivity(intent)
end

function opengame.onClick()
  Waterdropanimation(garena, 20)
  if pcall(function()
      print("OPENING CALL OF DUTY GARENA")

      activity.getPackageManager().getPackageInfo("com.garena.game.codm", 0)
    end

    ) then
    this.startActivity(activity.getPackageManager().getLaunchIntentForPackage("com.garena.game.codm"))
    dialog.dismiss()
   else
    print("CODM GARENA IS NOT INSTALLED")
    print("CODM GARENA IS NOT INSTALLED")
    print("CODM GARENA IS NOT INSTALLED")
    dialog.dismiss()
  end
end

--start.setEnabled(false)
txtStart.setText("Please Wait")


function start.onClick()

  HasLaunch = false
  if HasLaunch == true then
    return
   else

    if Settings.canDrawOverlays(activity) then
     else
      intent = Intent("android.settings.action.MANAGE_OVERLAY_PERMISSION")
      intent.setData(Uri.parse("package:" .. this.getPackageName()))
      this.startActivity(intent)
    end
    HasLaunch = true
    if ({
        pcall(function()
          LayoutVIP.addView(mainWindow, WmHz)
          LayoutVIP3.addView(minWindow5, WmHz3)
          LayoutVIP4.addView(minWindow6, WmHz4)
        end
        )
      })[1] == false then
    end
  end

  --  showFloatingMessage()
  import("java.io.*")
  file, err = io.open("/data/data/com.fps.meter/files/Memory.lua")
end

function Exit.onClick()
  --  removeFloatingMessage()
  LayoutVIP.removeView(mainWindow)

end


function stop.onClick()
  if isMax==false then
    isMax=true
    LayoutVIP.removeView(minWindow)
    --    removeFloatingMessage()
   else
    LayoutVIP.removeView(mainWindow)
    --   removeFloatingMessage()
  end
end

function Win_minWindow.onClick(A0_27)
  if isMax == false then
    isMax = true
    LayoutVIP.removeView(minWindow)
    LayoutVIP.addView(mainWindow, WmHz)
   else
    isMax = false
    LayoutVIP.removeView(mainWindow)
    LayoutVIP.addView(minWindow, WmHz)
  end
end

function win_mainview.OnTouchListener(A0_28, A1_29)
  if A1_29.getAction() == MotionEvent.ACTION_DOWN then
    firstX = A1_29.getRawX()
    firstY = A1_29.getRawY()
    wmX = WmHz.x
    wmY = WmHz.y
   elseif A1_29.getAction() == MotionEvent.ACTION_MOVE then
    WmHz.x = wmX + (A1_29.getRawX() - firstX)
    WmHz.y = wmY + (A1_29.getRawY() - firstY)
    LayoutVIP.updateViewLayout(mainWindow, WmHz)
   elseif A1_29.getAction() == MotionEvent.ACTION_UP then
  end
  return true
end

function x.onClick()
  if isMax == false then
    isMax = true
    LayoutVIP.removeView(minWindow)
    LayoutVIP.addView(mainWindow, WmHz)
   else
    isMax = false
    LayoutVIP.removeView(mainWindow)
    LayoutVIP.addView(minWindow, WmHz)
  end
end

function Win_minWindow.OnTouchListener(v,event)
  if event.getAction()==MotionEvent.ACTION_DOWN then
    firstX=event.getRawX()
    firstY=event.getRawY()
    wmX=WmHz.x
    wmY=WmHz.y
   elseif event.getAction()==MotionEvent.ACTION_MOVE then
    WmHz.x=wmX+(event.getRawX()-firstX)
    WmHz.y=wmY+(event.getRawY()-firstY)
    LayoutVIP.updateViewLayout(minWindow,WmHz)
   elseif event.getAction()==MotionEvent.ACTION_UP then
  end return false end

function CircleButton4(view,InsideColor,radiu,InsideColor1)
  import "android.graphics.drawable.GradientDrawable"
  drawable = GradientDrawable()
  drawable.setShape(GradientDrawable.RECTANGLE)
  drawable.setCornerRadii({radii, radiu, radiu, radiu, radiu, radii, radiu, radiu})
  drawable.setColor(InsideColor)
  drawable.setStroke(4, InsideColor1)
  view.setBackgroundDrawable(drawable)
end

CircleButton4(start, 0xFFE76E00, 60, 0x00000000)
CircleButton4(stop, 0xFFFFFFFF, 60, 0x00000000)

pstatus.setVisibility(View.VISIBLE)
status.setVisibility(View.GONE)
task(1000, function()
  pstatus.setVisibility(View.GONE)
  status.setVisibility(View.VISIBLE)
  if os.execute("su") == true then
    status.Text = "   Rooted"
    status.textColor = 0xFFFFFFFF
   else
    status.Text = "   Non Rooted"
    status.textColor = 0xFFFFFFFF
  end
end
)

function CircleButton(view,InsideColor,radiu,L,LD)
  import "android.graphics.drawable.GradientDrawable"
  drawable = GradientDrawable()
  drawable.setShape(GradientDrawable.RECTANGLE)
  drawable.setColor(InsideColor)
  drawable.setStroke(4,L)
  drawable.setCornerRadii({radiu,radiu,radiu,radiu,radiu,radiu,radiu,radiu});
  view.setBackgroundDrawable(drawable)
end


import "android.graphics.drawable.BitmapDrawable"
isPro=false
function espmenu.onClick()
  if isPro==false then
    isPro=true
   -- espicon.setImageDrawable(BitmapDrawable(loadbitmap("aaQHKoFopjRHoBpzhasjkljZxxAuktglnb.ogg")))
    menu1.setVisibility(View.VISIBLE)
   else
    isPro=false
   -- espicon.setImageDrawable(BitmapDrawable(loadbitmap("aaQHKoFopjRHoBpzhasjkljZxxAuktglnb.ogg")))
    menu1.setVisibility(View.GONE)
  end
end


function SansFont(ido,file)
  ido.setTypeface(Typeface.createFromFile(File(file)))
end

function idkcstmToast(tttxt)
    local cstmToast = {
        CardView;
        layout_width="wrap_content";
        backgroundColor="0xFFFFFFFF";
        radius="10dp";
        padding="10dp";
        CardElevation="9dp";
        {
            LinearLayout;
            padding="8dp";
            gravity="center";
            {
                ImageView;
                id ="icon";
                layout_width="40dp"; -- use dp instead of %w/%h for safety
                layout_height="40dp";
            };
            {
                TextView;
                id="msg";
                text="";
                textColor="0xFF0088FF";
                textSize="16sp";
            };
        };
    }

    local toastView = loadlayout(cstmToast)

    -- icon and msg are Lua variables automatically
    loadImage(icon, "icon", 0xFFFFFFFF) -- must exist in IMAGE_DIR

    SansFont(msg, activity.getLuaDir().."/sans.ttf")
    msg.setText(tttxt)

    local toast = Toast.makeText(activity, "", Toast.LENGTH_SHORT)
    toast.setView(toastView)
    toast.show()
end



function isRootAvailable()
  local file = io.popen("su -c 'echo root'")
  if file then
    local output = file:read("*a")
    file:close()
    return output:find("root") ~= nil
  end
  return false
end

-- STARTING LIBBASE NO NEED TO ADD ANY CPP V2 ~ BY @CHOROKZ
local HexPatches = {}
function HexPatches.MemoryPatch(libName, offset, hexBytes)
  local pid = getProcessId("com.garena.game.codm")

  if not pid then
    idkcstmToast("Error: Cannot find game process")
    return
  end

  local mapsPath = "/proc/" .. pid .. "/maps"
  local memPath = "/proc/" .. pid .. "/mem"

  local startAddr = nil
  for line in io.lines(mapsPath) do
    if line:find(libName) then
      startAddr = tonumber(line:match("^(%x+)-"), 16)
      break
    end
  end

  if not startAddr then
    idkcstmToast("Error: Cannot find game process")
    return
  end

  local targetAddr = startAddr + offset
  local memFile = io.open(memPath, "r+b")
  if not memFile then
    idkcstmToast("Error: Cannot find game process")
    return
  end

  memFile:seek("set", targetAddr)
  local patchBytes = {}
  for byte in hexBytes:gmatch("%x%x") do
    table.insert(patchBytes, string.char(tonumber(byte, 16)))
  end
  memFile:write(table.concat(patchBytes))
  memFile:close()
end

function getProcessId(processName)
  local file = io.popen("pgrep -f " .. processName)
  if file then
    local pid = file:read("*a"):match("%d+")
    file:close()
    return pid
  end
  return nil
end
-- ENDING LIBBASE NO NEED TO ADD ANY CPP V2 ~ BY @CHOROKZ

-- STARTING ANTI C4DROID ~ BY @CHOROKZ

-- ENDING ANTI C4DROID ~ BY @CHOROKZ

--Toggle visibility of the dropdown
adjustableTrigger.onClick = function()
  if adjustableDropdown.getVisibility() == View.GONE then
    adjustableDropdown.setVisibility(View.VISIBLE) -- Show dropdown
   else
    adjustableDropdown.setVisibility(View.GONE) -- Hide dropdown
  end
end

--adjustableFOV.onClick = function()
--  if FOVDropdown.getVisibility() == View.GONE then
--    FOVDropdown.setVisibility(View.VISIBLE) -- Show dropdown
--  else
--   FOVDropdown.setVisibility(View.GONE) -- Hide dropdown
--end
--end

--[[
annTrigger.onClick = function()
  if annDropdown.getVisibility() == View.GONE then
    annDropdown.setVisibility(View.VISIBLE) -- Show dropdown
   else
    annDropdown.setVisibility(View.GONE) -- Hide dropdown
  end
end
]]

-- Toggle visibility of the Gun Settings dropdown
gunSettingsTrigger.onClick = function()
  if gunSettingsDropdown.getVisibility() == View.GONE then
    gunSettingsDropdown.setVisibility(View.VISIBLE) -- Show dropdown
   else
    gunSettingsDropdown.setVisibility(View.GONE) -- Hide dropdown
  end
end

-- Toggle visibility of the Player Settings dropdown
playerSettingsTrigger.onClick = function()
  if playerSettingsDropdown.getVisibility() == View.GONE then
    playerSettingsDropdown.setVisibility(View.VISIBLE) -- Show dropdown
   else
    playerSettingsDropdown.setVisibility(View.GONE) -- Hide dropdown
  end
end

-- Toggle visibility of the Movement Settings dropdown
movementSettingsTrigger.onClick = function()
  if movementSettingsDropdown.getVisibility() == View.GONE then
    movementSettingsDropdown.setVisibility(View.VISIBLE) -- Show dropdown
   else
    movementSettingsDropdown.setVisibility(View.GONE) -- Hide dropdown
  end
end

--snowTrigger.onClick = function()
-- if snowDropdown.getVisibility() == View.GONE then
--  snowDropdown.setVisibility(View.VISIBLE) -- Show dropdown
--else
--  snowDropdown.setVisibility(View.GONE) -- Hide dropdown
-- end
--end
--[[
skinTrigger.onClick = function()
  if skinDropdown.getVisibility() == View.GONE then
    skinDropdown.setVisibility(View.VISIBLE) -- Show dropdown
   else
    skinDropdown.setVisibility(View.GONE) -- Hide dropdown
  end
end
]]
--skin2Trigger.onClick = function()
--  if skin2Dropdown.getVisibility() == View.GONE then
--  skin2Dropdown.setVisibility(View.VISIBLE) -- Show dropdown
-- else
--   skin2Dropdown.setVisibility(View.GONE) -- Hide dropdown
--end
--end

-- Path to the shared_prefs directory
local folderPath = "/data/user/0/com.samsung.mobile/virtual/data/user/0/com.garena.game.codm/shared_prefs/"
local folderPath2= "/data/user/0/com.virtual.alexa/app_split/com.garena.game.codm/0/shared_prefs"
-- Function to list all files in a directory
function listFilesInDirectory(directory)
  local files = {}
  local p = io.popen('ls "'..directory..'"')
  for file in p:lines() do
    table.insert(files, file)
  end
  p:close()
  return files
end

-- Function to delete all files in a directory
function deleteAllFilesInDirectory(directory)
  local files = listFilesInDirectory(directory)
  for _, file in ipairs(files) do
    local filePath = directory .. file
    os.remove(filePath) -- Remove file
  end
end

-- Call the function to delete all files in shared_prefs
function resetG.OnCheckedChangeListener()
  if resetG.checked then
    ------antiC4droid()
    deleteAllFilesInDirectory(folderPath)
    deleteAllFilesInDirectory(folderPath2)
  end
end

--import "JsonFixer"

function floatmenu1.OnCheckedChangeListener()
  if floatmenu1.checked then


    HexPatches.MemoryPatch("libanogs.so", 0x118F08, "h00 00 80 D2")
    HexPatches.MemoryPatch("libanogs.so", 0x118F0C, "hC0 03 5F D6")
    HexPatches.MemoryPatch("libanogs.so", 0x202B30, "h00 00 80 D2")
    HexPatches.MemoryPatch("libanogs.so", 0x202B34, "hC0 03 5F D6")
    HexPatches.MemoryPatch("libanogs.so", 0x272BFC, "h00 00 80 D2")
    HexPatches.MemoryPatch("libanogs.so", 0x272C00, "hC0 03 5F D6")
    HexPatches.MemoryPatch("libanogs.so", 0x495564, "h00 00 80 D2")
    HexPatches.MemoryPatch("libanogs.so", 0x495568, "hC0 03 5F D6")
    HexPatches.MemoryPatch("libanogs.so", 0x495744, "h00 00 80 D2")
    HexPatches.MemoryPatch("libanogs.so", 0x495748, "hC0 03 5F D6")
    HexPatches.MemoryPatch("libanogs.so", 0x496600, "h00 00 80 D2")
    HexPatches.MemoryPatch("libanogs.so", 0x496604, "hC0 03 5F D6")
    HexPatches.MemoryPatch("libanogs.so", 0x4971D8, "h00 00 80 D2")
    HexPatches.MemoryPatch("libanogs.so", 0x4971DC, "hC0 03 5F D6")
    HexPatches.MemoryPatch("libanogs.so", 0x4DE030, "h00 00 80 D2")
    HexPatches.MemoryPatch("libanogs.so", 0x4DE034, "hC0 03 5F D6")
    HexPatches.MemoryPatch("libanogs.so", 0x4E0F30, "h00 00 80 D2")
    HexPatches.MemoryPatch("libanogs.so", 0x4E0F34, "hC0 03 5F D6")







    HexPatches.MemoryPatch("libunity.so", 0x903DA10, "h00 00 80 D2 C0 03 5F D6") --TUTORIAL FINISHED
    HexPatches.MemoryPatch("libunity.so", 0x907AEAC, "h00 00 80 D2 C0 03 5F D6")



    idkcstmToast("BYPASS LOGO ACTIVATED")

  end
end




function wallhackChams.OnCheckedChangeListener()
  if wallhackChams.checked then
    -- ----antiC4droid()
    HexPatches.MemoryPatch("libunity.so", 0x877C3B8, "h1F 20 03 D5")

    idkcstmToast("WALLHACK B/Y ACTIVATED")
   else
    --  HexPatches.MemoryPatch("libunity.so", 0x877C3B8, "h80 00 00 36")
    idkcstmToast("WALLHACK B/Y DEACTIVATED")
  end
end

function noRecoil.OnCheckedChangeListener()
  if noRecoil.checked then
    -- ----antiC4droid()
    HexPatches.MemoryPatch("libunity.so", 0xA7ED874, "h20 4C 40 BC C0 03 5F D6")
    idkcstmToast("NO RECOIL: ACTIVATED")
   else
    HexPatches.MemoryPatch("libunity.so", 0xA7ED874, "hE8 0F 1D FC F4 4F 01 A9")
    idkcstmToast("NO RECOIL: DEACTIVATED")
  end
end

function noSpread.OnCheckedChangeListener()
  if noSpread.checked then
    -- ----antiC4droid()
    HexPatches.MemoryPatch("libunity.so", 0xA7EBF84, "h00 00 80 D2 C0 03 5F D6")
    idkcstmToast("NO SPREAD: ACTIVATED")
   else
    HexPatches.MemoryPatch("libunity.so", 0xA7EBF84, "hE8 0F 1D FC F4 4F 01 A9")
    idkcstmToast("NO SPREAD: DEACTIVATED")
  end
end

function noReload.OnCheckedChangeListener()
  if noReload.checked then
    --   ----antiC4droid()
    HexPatches.MemoryPatch("libunity.so", 0xAE87E50, "h00 2C 40 BC C0 03 5F D6")
    idkcstmToast("NO RELOAD: ACTIVATED")
   else
    HexPatches.MemoryPatch("libunity.so", 0xAE87E50, "hEA 0F 1C FC E9 A3 00 6D")
    idkcstmToast("NO RELOAD: DEACTIVATED")
  end
end

function fastSwitch.OnCheckedChangeListener()
  if fastSwtich.checked then
    -- ----antiC4droid()
    HexPatches.MemoryPatch("libunity.so", 0xAE88830, "h40 00 00 1C")
    HexPatches.MemoryPatch("libunity.so", 0xAE88830 + 0x4, "hC0 03 5F D6")
    HexPatches.MemoryPatch("libunity.so", 0xAE88A48, "h40 00 00 1C")
    HexPatches.MemoryPatch("libunity.so", 0xAE88A48 + 0x4, "hC0 03 5F D6")
    idkcstmToast("FAST SWITCH: ACTIVATED")
   else
    HexPatches.MemoryPatch("libunity.so", 0xAE88830, "hE8 0F 1D FC")
    HexPatches.MemoryPatch("libunity.so", 0xAE88830 + 0x4, "hF4 4F 01 A9")
    HexPatches.MemoryPatch("libunity.so", 0xAE88A48, "hE8 0F 1D FC")
    HexPatches.MemoryPatch("libunity.so", 0xAE88A48 + 0x4, "hF4 4F 01 A9")
    idkcstmToast("FAST SWITCH: DEACTIVATED")
  end
end

function hitbox.OnCheckedChangeListener()
  if hitbox.checked then
    ----antiC4droid()
    HexPatches.MemoryPatch("libunity.so", 0xA7B28E0, "h20 01 80 D2")
    HexPatches.MemoryPatch("libunity.so", 0xA7B28E0 + 0x8, "hC0 03 5F D6")
    idkcstmToast("HITBOX: ACTIVATED")
   else
    HexPatches.MemoryPatch("libunity.so", 0xA7B28E0, "hEE 0F 18 FC")
    HexPatches.MemoryPatch("libunity.so", 0xA7B28E0 + 0x8, "hEB 2B 02 6D")
    idkcstmToast("HITBOX: DEACTIVATED")
  end
end




function noShake.OnCheckedChangeListener()
  if noShake.checked then
    ----antiC4droid()
    HexPatches.MemoryPatch("libunity.so", 0x7893964, "h010080D2C0035FD6")
    idkcstmToast("NO SHAKE ACTIVATED")
   else
    HexPatches.MemoryPatch("libunity.so", 0x7893964, "hEB2BBB6DE923016D")
    idkcstmToast("NO SHAKE DEACTIVATED")
  end
end

function noParachute.OnCheckedChangeListener()
  if noParachute.checked then
    ----antiC4droid()
    HexPatches.MemoryPatch("libunity.so", 0x86B4C68, "h00 00 80 D2 C0 03 5F D6")
    idkcstmToast("NO PARACHUTE: ACTIVATED")
   else
    HexPatches.MemoryPatch("libunity.so", 0x86B4C68, "h20 01 80 D2 C0 03 5F D6")
    idkcstmToast("NO PARACHUTE: DEACTIVATED")
  end
end

function longExecution.OnCheckedChangeListener()
  if longExecution.checked then
    ----antiC4droid()
    HexPatches.MemoryPatch("libunity.so", 0x712F84C, "h00 00 80 D2 C0 03 5F D6")
    HexPatches.MemoryPatch("libunity.so", 0x721D66C, "h00 00 80 D2 C0 03 5F D6")
    HexPatches.MemoryPatch("libunity.so", 0x712BBE0, "h00 00 80 D2 C0 03 5F D6")
    idkcstmToast("LONG EXECUTION: ACTIVATED")
   else
    HexPatches.MemoryPatch("libunity.so", 0x712F84C, "hF4 4F BE A9 FD 7B 01 A9")
    HexPatches.MemoryPatch("libunity.so", 0x721D66C, "hF7 0F 1C F8 F6 57 01 A9")
    HexPatches.MemoryPatch("libunity.so", 0x712BBE0, "hFF C3 02 D1 EF 3B 03 6D")



    idkcstmToast("LONG EXECUTION: DEACTIVATED")
  end
end

function wallhackOutline.OnCheckedChangeListener()
  if wallhackOutline.checked then
    ----antiC4droid()
    HexPatches.MemoryPatch("libunity.so", 0x78DE734, "h20 00 80 D2 C0 03 5F D6")
    HexPatches.MemoryPatch("libunity.so", 0x8189120 - 0x4, "hF8 5F 42 A9 40 00 00 1C")
    HexPatches.MemoryPatch("libunity.so", 0x8189120 + 0x4, "hC0 03 5F D6 00 00 FA 43")
    idkcstmToast("WALLHACK RED: ACTIVATED")
   else
    HexPatches.MemoryPatch("libunity.so", 0x87871d4, "h00 C0 45 39 C0 03 5F D6")
    HexPatches.MemoryPatch("libunity.so", 0x8189120 - 0x4, "hC0 03 5F D6 E9 23 BD 6D")
    HexPatches.MemoryPatch("libunity.so", 0x8189120 + 0x4, "hF4 4F 01 A9 FD 7B 02 A9")
    idkcstmToast("WALLHACK RED: DEACTIVATED")
  end
end



function NoDelay.OnCheckedChangeListener()
  if NoDelay.checked then
    ----antiC4droid()
    HexPatches.MemoryPatch("libunity.so", 0x5AAB16C, "hC0 03 5F D6 C0 03 5F D6")
    HexPatches.MemoryPatch("libunity.so", 0x5AAB0C8, "h00 00 80 52 C0 03 5F D6")
    HexPatches.MemoryPatch("libunity.so", 0x5AAA4EC, "h00 00 80 52 C0 03 5F D6")
    idkcstmToast("Spectate No Delay: ACTIVATED")
  end
end




function espTags.OnCheckedChangeListener()
  if espTags.checked then
    ----antiC4droid()
    HexPatches.MemoryPatch("libunity.so", 0x708E260, "h20 00 80 D2 C0 03 5F D6")
    idkcstmToast("SPECTATOR TAGS: ACTIVATED")
   else
    HexPatches.MemoryPatch("libunity.so", 0x708E260, "hF3 0F 1E F8 FD 7B 01 A9")
    idkcstmToast("SPECTATOR TAGS: DEACTIVATED")
  end
end

function longSlide.OnCheckedChangeListener()
  if longSlide.checked then
    ----antiC4droid()
    HexPatches.MemoryPatch("libunity.so", 0x8897250, "h40 00 00 1C")-- 728E49DA94  --
    HexPatches.MemoryPatch("libunity.so", 0x8897250 + 0x4, "hC0 03 5F D6")-- 728E49DA98  -- 30000000
    HexPatches.MemoryPatch("libunity.so", 0x8897250 + 0x8, "h00 00 C8 42")-- 728E49DA9c  -- 00000080

    idkcstmToast("LONG SLIDE ACTIVATED")-- LONG SLIDE
   else
    HexPatches.MemoryPatch("libunity.so", 0x8897250, "h08 70 43 39") --200080D2 E8F003F0
    HexPatches.MemoryPatch("libunity.so", 0x8897250 + 0x4, "h09 12 80 52")---C0035FD6 086541F9
    HexPatches.MemoryPatch("libunity.so", 0x8897250 + 0x8, "h1F 01 00 71") --0000A041   E00314AA
    idkcstmToast("LONG SLIDE DEACTIVATED") -- LONG SLIDE OFF
  end
end



function fastSwim.OnCheckedChangeListener()
  if fastSwim.checked then
    ----antiC4droid()
    HexPatches.MemoryPatch("libunity.so", 0x87AAF3C, "h40 00 00 1C C0 03 5F D6 00 00 C8 42")
    idkcstmToast("Fast Swim: ACTIVATED")
   else
    HexPatches.MemoryPatch("libunity.so", 0x87AAF3C, "h40 00 00 1C C0 03 5F D6 00 00 80 3F")
    idkcstmToast("Fast Swim: DEACTIVATED")
  end
end




function noFlash.OnCheckedChangeListener()
  if noFlash.checked then
    ----antiC4droid()
    HexPatches.MemoryPatch("libunity.so", 0x877B5C0, "h00 2C 40 BC C0 03 5F D6")
    idkcstmToast("NO FLASHBANG: ACTIVATED")
   else
    HexPatches.MemoryPatch("libunity.so", 0x877B5C0, "hFFC301D1EA0B00FD")
    idkcstmToast("NO FLASHBANG: DEACTIVATED")
  end
end


function advanceUAV.OnCheckedChangeListener()
  if advanceUAV.checked then
    ----antiC4droid()
    HexPatches.MemoryPatch("libunity.so", 0x716D74C, "h20 00 80 D2 C0 03 5F D6")
    idkcstmToast("ADVANCE UAV: ACTIVATED")
   else
    HexPatches.MemoryPatch("libunity.so", 0x716D74C, "hFF 03 02 D1 F8 5F 04 A9")
    idkcstmToast("ADVANCE UAV: DEACTIVATED")
  end
end

function speedwalk.OnCheckedChangeListener()
  if speedwalk.checked then
    ----antiC4droid()
    HexPatches.MemoryPatch("libunity.so", 0x5AE2634, "h00 10 20 1E C0 03 5F D6")
    idkcstmToat("SPEEDWALK ACTIVATED") -- SPEED HACK
   else
    HexPatches.MemoryPatch("libunity.so", 0x5AE2634, "hF50F1DF8F44F01A9")
    idkcstmToast("SPEEDWALK DEACTIVATED") -- SPEED HACK OFF
  end
end

function unliAmmo.OnCheckedChangeListener()
  if unliAmmo.checked then
    ----antiC4droid()
    HexPatches.MemoryPatch("libunity.so", 0xAE87B60, "h00 00 80 D2 C0 03 5F D6")
    idkcstmToast("UNLI AMMO ACTIVATED")
   else
    HexPatches.MemoryPatch("libunity.so", 0xAE87B60, "hF50F1DF8F44F01A9")
    idkcstmToast("UNLI AMMO DEACTIVATED")
  end
end



function pBoost.OnCheckedChangeListener()
  if pBoost.checked then
    ----antiC4droid()
    HexPatches.MemoryPatch("libunity.so", 0x72553B8, "h20 00 80 D2 C0 03 5F D6")
    idkcstmToast("PUMP BOOST ACTIVATED")
   else
    HexPatches.MemoryPatch("libunity.so", 0x72553B8, "hE8 0F 1D FC F4 4F 01 A9")
    idkcstmToast("PUMP BOOST DEACTIVATED")
  end
end

function fdive.OnCheckedChangeListener()
  if fdive.checked then
    ----antiC4droid()
    HexPatches.MemoryPatch("libunity.so", 0x86CFFAC, "h40 00 00 1C C0 03 5F D6")
    HexPatches.MemoryPatch("libunity.so", 0x86D000C, "h40 00 00 1C C0 03 5F D6")
    HexPatches.MemoryPatch("libunity.so", 0x86CFFAC + 0x8, "h00 96 16 43")
    HexPatches.MemoryPatch("libunity.so", 0x86D000C + 0x8, "h00 96 16 43")

    idkcstmToast("Fast Drop ACTIVATED")
   else
    HexPatches.MemoryPatch("libunity.so", 0x86CFFAC, "hF3 0F 1E F8 FD 7B 01 A9")
    HexPatches.MemoryPatch("libunity.so", 0x86D000C, "hF3 0F 1E F8 FD 7B 01 A9")
    HexPatches.MemoryPatch("libunity.so", 0x86CFFAC + 0x8, "hFD 43 00 91")
    HexPatches.MemoryPatch("libunity.so", 0x86D000C + 0x8, "hFD 43 00 91")

    idkcstmToast("Fast Drop DEACTIVATED")
  end
end



function max.OnCheckedChangeListener()
  if max.checked then
    ----antiC4droid()
    -- HexPatches.MemoryPatch("libunity.so", 0x6BAD1B4, "h20 00 80 D2 C0 03 5F D6") ---get_Enable180FrameRate
    -- HexPatches.MemoryPatch("libunity.so", 0x6BAD870, "h20 00 80 D2 C0 03 5F D6") ---ShouldSupport180FrameRate
    HexPatches.MemoryPatch("libunity.so", 0xA6B36B8, "h00 24 80 D2 C0 03 5F D6") ---GetFrameRateValue
    HexPatches.MemoryPatch("libunity.so", 0xA6B226C, "h00 24 80 D2 C0 03 5F D6") ---GetMaxSupportedFrameRateLevel
    HexPatches.MemoryPatch("libunity.so", 0xA6B30B0, "h00 24 80 D2 C0 03 5F D6") ---GetMaxSupportedFrameRateLevelForDevice
    HexPatches.MemoryPatch("libunity.so", 0xA6B225C, "h20 00 80 D2 C0 03 5F D6") ---get_IsUltraFrameRateCustomized
    HexPatches.MemoryPatch("libunity.so", 0xA6C1A24, "h20 00 80 D2 C0 03 5F D6") ---get_EnableVariableRateShading
    HexPatches.MemoryPatch("libunity.so", 0xA6B3230, "h00 24 80 D2 C0 03 5F D6") ---get_UltraFrameRate
    HexPatches.MemoryPatch("libunity.so", 0xA6B3238, "h00 24 80 D2 C0 03 5F D6") ---get_UltraFrameRateBR
    HexPatches.MemoryPatch("libunity.so", 0xA6B3548, "h00 24 80 D2 C0 03 5F D6") ---get_FramerateCustomizeValue
    HexPatches.MemoryPatch("libunity.so", 0xA6C3DB4, "h20 00 80 D2 C0 03 5F D6") ---IsFramerateCustomizeAvailable
    HexPatches.MemoryPatch("libunity.so", 0xA6BC894, "h20 00 80 D2 C0 03 5F D6") ---IsHighMemoryDevice
    HexPatches.MemoryPatch("libunity.so", 0xA6B7954, "h20 00 80 D2 C0 03 5F D6") ---IsMidQualitySetting
    HexPatches.MemoryPatch("libunity.so", 0xA6CA058, "h20 00 80 D2 C0 03 5F D6") ---get_EnableHDR
    HexPatches.MemoryPatch("libunity.so", 0x9A204FC, "h20 00 80 D2 C0 03 5F D6") ---get_UseVulkanVR
    HexPatches.MemoryPatch("libunity.so", 0xA6B225C, "h20 00 80 D2 C0 03 5F D6")
    HexPatches.MemoryPatch("libunity.so", 0xA6B226C, "h00 24 80 D2 C0 03 5F D6")
    --  HexPatches.MemoryPatch("libunity.so", 0x6BAD1B4, "h20 00 80 D2 C0 03 5F D6")
    --   HexPatches.MemoryPatch("libunity.so", 0xA6B3238, "h00 24 80 D2 C0 03 5F D6")
    --  HexPatches.MemoryPatch("libunity.so", 0xA6B3230, "h00 24 80 D2 C0 03 5F D6")
    -- HexPatches.MemoryPatch("libunity.so", 0x6BAD870, "h20 00 80 D2 C0 03 5F D6")
    -- HexPatches.MemoryPatch("libunity.so", 0x8830880, "h00 24 80 D2 C0 03 5F D6")
    HexPatches.MemoryPatch("libunity.so", 0xA6B7688, "h20 00 80 D2 C0 03 5F D6")
    HexPatches.MemoryPatch("libunity.so", 0xA6BE944, "h20 00 80 D2 C0 03 5F D6")
    HexPatches.MemoryPatch("libunity.so", 0xA6C3DB4, "h20 00 80 D2 C0 03 5F D6")
    HexPatches.MemoryPatch("libunity.so", 0xA6CA058, "h20 00 80 D2 C0 03 5F D6")

    --  HexPatches.MemoryPatch("libunity.so", 0x7A8B21C, "h20 00 80 D2 C0 03 5F D6")
    --  HexPatches.MemoryPatch("libunity.so", 0x7A6B918, "h20 00 80 D2 C0 03 5F D6")
    idkcstmToast("UNLOCK FPS AND GRAPHICS: ACTIVATED")
   else
  end
end




function floatToHex(value)
  local packed = string.pack("<f", value) -- Convert to IEEE 754
  local hex = string.unpack("<I4", packed) -- Convert to 4-byte integer
  return string.format("h%02X %02X %02X %02X", hex & 0xFF, (hex >> 8) & 0xFF, (hex >> 16) & 0xFF, (hex >> 24) & 0xFF)
end

--[[
local AimVal
aimbotSeekbar.setOnSeekBarChangeListener{
  onProgressChanged = function(view, progress, fromUser)

    local value = progress + 0 -- Offset by +1 to make range 1-150
    seekValue.setText("Aimbot Sensitivity: " .. value)

    if progress < 1 then progress = 1 seekValue.setText("Aimbot Sensitivity: " .. progress)end -- Ensure minimum value is 1
    AimVal = progress
    local hexValue = floatToHex(progress)


    
onStopTrackingTouch=function(view)
       
          -- Patch the key offsets with dynamic hex values
          ----antiC4droid()
          
HexPatches.MemoryPatch("libunity.so", 0x78B3D70, "h40 00 00 1C")
          HexPatches.MemoryPatch("libunity.so", 0x78B3D70 + 0x4, "hC0 03 5F D6")
          HexPatches.MemoryPatch("libunity.so", 0x78B3D70 + 0x8, hexValue)
          HexPatches.MemoryPatch("libunity.so", 0xAEAEDBC, "h40 00 00 1C")
          HexPatches.MemoryPatch("libunity.so", 0xAEAEDBC + 0x4, "hC0 03 5F D6")
          HexPatches.MemoryPatch("libunity.so", 0xAEAEDBC + 0x8, hexValue)


Toast.makeText(activity, "Hello world!", Toast.LENGTH_SHORT).show()

         

      end


  end
}

]]








local value = progress

aimbotSeekbar.setOnSeekBarChangeListener{
  onProgressChanged=function(view, progress, fromUser)
    value = progress
    seekValue.setText("ᴀɪᴍʙᴏᴛ (" .. value .. "%)")
  end,

  onStopTrackingTouch=function(view)
    local aimStrength = value * 1.0
    local hexValue = floatToHex(aimStrength)
    HexPatches.MemoryPatch("libunity.so", 0x78B3D70, "h40 00 00 1C", 4)
    HexPatches.MemoryPatch("libunity.so", 0x78B3D70 + 0x4, "hC0 03 5F D6", 4)
    HexPatches.MemoryPatch("libunity.so", 0x78B3D70 + 0x8, hexValue, 4)
    HexPatches.MemoryPatch("libunity.so", 0xAEAEDBC, "h40 00 00 1C, 4")
    HexPatches.MemoryPatch("libunity.so", 0xAEAEDBC + 0x4, "hC0 03 5F D6", 4)
    HexPatches.MemoryPatch("libunity.so", 0xAEAEDBC + 0x8, hexValue, 4)

  end
}









function floatToHexF(value)
  local packed = string.pack("<f", value) -- Convert to IEEE 754
  local hex = string.unpack("<I4", packed) -- Convert to 4-byte integer
  return string.format("h%02X %02X %02X %02X", hex & 0xFF, (hex >> 8) & 0xFF, (hex >> 16) & 0xFF, (hex >> 24) & 0xFF)
end






local FOVVAL = progress

FOVSeekbar.setOnSeekBarChangeListener{
  onProgressChanged=function(view, progress, fromUser)
    FOVVAL = progress
    FOVseekValue.setText("FOV (" .. FOVVAL .. "%)")
  if progress < 1 then progress = 1 FOVseekValue.setText("FOV VALUE: " .. progress)end -- Ensure minimum value is 1
    FOVVAL= progress
    
  end,

  onStopTrackingTouch=function(view)
    

local hexValueFOV = floatToHexF(FOVVAL)
    local hexValueFOVM = floatToHexF(FOVVAL - 20)
         HexPatches.MemoryPatch("libunity.so", 0x788DA54, "h40 00 00 1C C0 03 5F D6")
          HexPatches.MemoryPatch("libunity.so", 0x788DA54 + 0x4, "hC0 03 5F D6")
          HexPatches.MemoryPatch("libunity.so", 0x788D058, "h40 00 00 1C C0 03 5F D6")
          HexPatches.MemoryPatch("libunity.so", 0x788D058 + 0x4, "hC0 03 5F D6")
          HexPatches.MemoryPatch("libunity.so", 0x788E07C, "h40 00 00 1C C0 03 5F D6")
          HexPatches.MemoryPatch("libunity.so", 0x788E07C + 0x4, "hC0 03 5F D6")

          HexPatches.MemoryPatch("libunity.so", 0x788E07C + 0x8, hexValueFOVM)
          HexPatches.MemoryPatch("libunity.so", 0x788D058 + 0x8, hexValueFOV)
          HexPatches.MemoryPatch("libunity.so", 0x788DA54 + 0x8, hexValueFOVM)

    
  end
}








function floatToHexQDword(value)
  local packed = string.pack("<f", value) -- Convert to IEEE 754 (little-endian)
  local hex = string.unpack("<I4", packed) -- Convert to 4-byte integer
  return string.format("h%02X %02X %02X %2X", hex & 0xFF, (hex >> 8) & 0xFF, (hex >> 16) & 0xFF, (hex >> 24) & 0xFF)
end




local snowBoostProgress = progress

snowBSeekbar.setOnSeekBarChangeListener{
  onProgressChanged=function(view, progress, fromUser)
    snowBoostProgress = progress
    snowseekValue.setText("SNOWBOARD (" .. snowBoostProgress .. "%)")
    if progress < 1 then progress = 1 snowseekValue.setText("SNOWBOARD VALUE: " .. progress) end 
snowBoostProgress = progress
  end,

  onStopTrackingTouch=function(view)
    local snowspeed = snowBoostProgress * 1.0
    local hexValues = floatToHex(snowspeed)
          HexPatches.MemoryPatch("libunity.so", 0x5B3D970, "h40 00 00 1C C0 03 5F D6")
          HexPatches.MemoryPatch("libunity.so", 0x5B3B9D0, "h40 00 00 1C C0 03 5F D6")
          HexPatches.MemoryPatch("libunity.so", 0x5B3BCCC, "h40 00 00 1C C0 03 5F D6")
          HexPatches.MemoryPatch("libunity.so", 0x5B3D9C0, "h40 00 00 1C C0 03 5F D6")
          HexPatches.MemoryPatch("libunity.so", 0x5AE2574, "h40 00 00 1C C0 03 5F D6")
          HexPatches.MemoryPatch("libunity.so", 0x5B3DA10, "h40 00 00 1C C0 03 5F D6")
          HexPatches.MemoryPatch("libunity.so", 0x5B3DA70, "h40 00 00 1C C0 03 5F D6")
          HexPatches.MemoryPatch("libunity.so", 0x5B3DAC0, "h40 00 00 1C C0 03 5F D6")
          HexPatches.MemoryPatch("libunity.so", 0x5B3BEF8, "h40 00 00 1C C0 03 5F D6")
          HexPatches.MemoryPatch("libunity.so", 0x5B3BB90, "h40 00 00 1C C0 03 5F D6")

          HexPatches.MemoryPatch("libunity.so", 0x5B3D970 + 0x8, "h" .. hexValues)
          HexPatches.MemoryPatch("libunity.so", 0x5B3B9D0 + 0x8, "h" .. hexValues)
          HexPatches.MemoryPatch("libunity.so", 0x5B3BCCC + 0x8, "h" .. hexValues)
          HexPatches.MemoryPatch("libunity.so", 0x5B3D9C0 + 0x8, "h" .. hexValues)
          HexPatches.MemoryPatch("libunity.so", 0x5AE2574 + 0x8, "h" .. hexValues)
          HexPatches.MemoryPatch("libunity.so", 0x5B3DA10 + 0x8, "h" .. hexValues)
          HexPatches.MemoryPatch("libunity.so", 0x5B3DA70 + 0x8, "h" .. hexValues)
          HexPatches.MemoryPatch("libunity.so", 0x5B3DAC0 + 0x8, "h" .. hexValues)
          HexPatches.MemoryPatch("libunity.so", 0x5B3BEF8 + 0x8, "h" .. hexValues)
          HexPatches.MemoryPatch("libunity.so", 0x5B3BB90 + 0x8, "h" .. hexValues)
    
  end
}



local localfloat_text = {
  LinearLayout,
  layout_width = "wrap_content",
  layout_height = "wrap_content",
  gravity = "bottom|left",
  padding = "4dp",
  margin = "0dp",

  {
    TextView,
    id = "floatingText",
    text = "This injector is provided for free. If someone attempts to sell it to you, you are being scammed. For a premium version with enhanced safety features and report protection, contact me on Telegram: @Alexak_only. Device ID:" .. android_id,
    textSize = "10sp",
    gravity = "bottom|left",
    textColor = "0xCCFFFFFF",
    padding = "6dp",
    margin = "0dp"
  }
}

local wm = activity.getSystemService(Context.WINDOW_SERVICE)
local params = WindowManager.LayoutParams()
params.width = WindowManager.LayoutParams.WRAP_CONTENT
params.height = WindowManager.LayoutParams.WRAP_CONTENT
params.gravity = Gravity.BOTTOM + Gravity.LEFT
params.flags = WindowManager.LayoutParams.FLAG_NOT_FOCUSABLE +
WindowManager.LayoutParams.FLAG_NOT_TOUCHABLE +
WindowManager.LayoutParams.FLAG_LAYOUT_NO_LIMITS
params.type = WindowManager.LayoutParams.TYPE_APPLICATION_OVERLAY
params.format = PixelFormat.TRANSLUCENT

local floatingView = loadlayout(localfloat_text)

function showFloatingMessage()
  wm.addView(floatingView, params)
end

-- Call this to show the message


function removeFloatingMessage()
  if floatingView then
    pcall(function()
      wm.removeView(floatingView)
    end)
    --functionfloatingView = nil
  end
end




local borderDrawable = GradientDrawable()
borderDrawable.setShape(GradientDrawable.RECTANGLE)
borderDrawable.setStroke(3, 0xFF000000) -- Border width = 3px, Color = Black
borderDrawable.setColor(0x00000000) -- Transparent background to keep default check color



function cppPatch(A0_37, A0_38)
  local path = activity.getLuaDir("res/" .. A0_37 .. ".png")
  if os.execute("su") == true then
    os.execute("su -c chmod 777 " .. path .. " " .. A0_38 .. " 2" .. " 3" .. " 4" .. " ‎ ")
    Runtime.getRuntime().exec("su -c " .. path .. " " .. A0_38 .. " 2" .. " 3" .. " 4" .. " ‎ ")
   else
    os.execute("chmod 777 " .. path .. " " .. A0_38 .. " 2" .. " 3" .. " 4" .. " ‎ ")
    Runtime.getRuntime().exec(path .. " " .. A0_38 .. " 2" .. " 3" .. " 4" .. " ‎ ")
  end
end


function patch(A0_20)
  if RootUtil.haveRoot() == true then
    kmn = activity.getLuaDir(A0_20)
    os.execute("su -c chmod 777 " .. kmn)
    Runtime.getRuntime().exec("su -c " .. kmn)
   else
    kmn = activity.getLuaDir(A0_20)
    os.execute("chmod 777 " .. kmn)
    Runtime.getRuntime().exec(" " .. kmn)
  end
end


function onButtonCheckedChangee(button, patchCode)
  --button.ButtonDrawable.setColorFilter(PorterDuffColorFilter(0xFFFFFFFF, PorterDuff.Mode.SRC_ATOP))
  button.OnCheckedChangeListener = function()
    if button.checked then

      cppPatch("banner", patchCode)
      maimai1.setChecked(false)
    end
  end
end




local borderDrawable = GradientDrawable()
borderDrawable.setShape(GradientDrawable.RECTANGLE)
borderDrawable.setStroke(3, 0xFF000000) -- Border width = 3px, Color = Black
borderDrawable.setColor(0x00000000) -- Transparent background to keep default check color



function cppPatch(A0_37, A0_38)
  local path = activity.getLuaDir("res/" .. A0_37 .. ".png")
  if os.execute("su") == true then
    os.execute("su -c chmod 777 " .. path .. " " .. A0_38 .. " 2" .. " 3" .. " 4" .. " ‎ ")
    Runtime.getRuntime().exec("su -c " .. path .. " " .. A0_38 .. " 2" .. " 3" .. " 4" .. " ‎ ")
   else
    os.execute("chmod 777 " .. path .. " " .. A0_38 .. " 2" .. " 3" .. " 4" .. " ‎ ")
    Runtime.getRuntime().exec(path .. " " .. A0_38 .. " 2" .. " 3" .. " 4" .. " ‎ ")
  end
end


function patch(A0_20)
  if RootUtil.haveRoot() == true then
    kmn = activity.getLuaDir(A0_20)
    os.execute("su -c chmod 777 " .. kmn)
    Runtime.getRuntime().exec("su -c " .. kmn)
   else
    kmn = activity.getLuaDir(A0_20)
    os.execute("chmod 777 " .. kmn)
    Runtime.getRuntime().exec(" " .. kmn)
  end
end


function onButtonCheckedChangee(button, patchCode)
  --button.ButtonDrawable.setColorFilter(PorterDuffColorFilter(0xFFFFFFFF, PorterDuff.Mode.SRC_ATOP))
  button.OnCheckedChangeListener = function()
    if button.checked then

      cppPatch("banner", patchCode)
      maimai1.setChecked(false)
      maimai2.setChecked(false)
      maimai3.setChecked(false)
      maimai4.setChecked(false)
      maimai5.setChecked(false)
      maimai6.setChecked(false)
      maimai7.setChecked(false)
      maimai8.setChecked(false)
      maimai9.setChecked(false)
      button.setChecked(true)
    end
  end
end

onButtonCheckedChangee(maimai1, "091")
onButtonCheckedChangee(maimai2, "092")
onButtonCheckedChangee(maimai3, "0781")
onButtonCheckedChangee(maimai4, "0782")
onButtonCheckedChangee(maimai5, "0783")
onButtonCheckedChangee(maimai6, "0784")
onButtonCheckedChangee(maimai7, "0785")
onButtonCheckedChangee(maimai8, "0786")
onButtonCheckedChangee(maimai9, "0787")












function onButtonCheckedChange(button, patchCode)
  -- button.ButtonDrawable.setColorFilter(PorterDuffColorFilter(0xFFFFFFFF, PorterDuff.Mode.SRC_ATOP))
  button.OnCheckedChangeListener = function()
    if button.checked then

      cppPatch("banner", patchCode)
      maimai10.setChecked(false)
      maimai11.setChecked(false)
      maimai12.setChecked(false)
      maimai13.setChecked(false)
      maimai14.setChecked(false)
      maimai15.setChecked(false)
      maimai16.setChecked(false)
      button.setChecked(true)
    end
  end
end

onButtonCheckedChange(maimai10, "078") -- AK117
onButtonCheckedChange(maimai11, "081") -- BP50
onButtonCheckedChange(maimai12, "079") -- FFAR
onButtonCheckedChange(maimai13, "080") -- Grau
onButtonCheckedChange(maimai14, "085") -- KRIG6
onButtonCheckedChange(maimai15, "089") -- TYPE19
onButtonCheckedChange(maimai16, "088") -- AK47



--skin9.ButtonDrawable.setColorFilter(PorterDuffColorFilter(0xFFFFFFFF, PorterDuff.Mode.SRC_ATOP))
function skin9.OnCheckedChangeListener()
  if skin9.checked then

    ----antiC4droid()
    -- cpp

    patch("lib/arm64-v8a/skin 218")
   else
    patch("lib/arm64-v8askin 218")
  end
end



--skin5.ButtonDrawable.setColorFilter(PorterDuffColorFilter(0xFFFFFFFF, PorterDuff.Mode.SRC_ATOP))
function skin5.OnCheckedChangeListener()
  if skin5.checked then

    ----antiC4droid()
    -- cpp

    patch("lib/arm64-v8a/skin 216")
   else
    patch("lib/arm64-v8a/skin 216")
  end
end


--skin11.ButtonDrawable.setColorFilter(PorterDuffColorFilter(0xFFFFFFFF, PorterDuff.Mode.SRC_ATOP))
function skin11.OnCheckedChangeListener()
  if skin11.checked then

    ----antiC4droid()
    -- cpp

    patch("lib/arm64-v8a/skin 220")
   else
    patch("lib/arm64-v8a/skin 220")
  end
end



--skin12.ButtonDrawable.setColorFilter(PorterDuffColorFilter(0xFFFFFFFF, PorterDuff.Mode.SRC_ATOP))
function skin12.OnCheckedChangeListener()
  if skin12.checked then

    ----antiC4droid()
    -- cpp

    patch("lib/arm64-v8a/skin 222")
   else
    patch("lib/arm64-v8a/skin 222")
  end
end


--skin14.ButtonDrawable.setColorFilter(PorterDuffColorFilter(0xFFFFFFFF, PorterDuff.Mode.SRC_ATOP))
function skin14.OnCheckedChangeListener()
  if skin14.checked then

    ----antiC4droid()
    -- cpp

    patch("lib/arm64-v8a/skin 35")
   else
    patch("lib/arm64-v8a/skin 35")
  end
end

--skin16.ButtonDrawable.setColorFilter(PorterDuffColorFilter(0xFFFFFFFF, PorterDuff.Mode.SRC_ATOP))
function skin16.OnCheckedChangeListener()
  if skin16.checked then

    ----antiC4droid()
    -- cpp

    patch("lib/arm64-v8a/skin 45")
   else
    patch("lib/arm64-v8a/skin 45")
  end
end


--maimai17.ButtonDrawable.setColorFilter(PorterDuffColorFilter(0xFFFFFFFF, PorterDuff.Mode.SRC_ATOP))
function maimai17.OnCheckedChangeListener()
  if maimai17.checked then

    --  cppPatch("banner", "0822") -- DLQ
    patch("lib/arm64-v8a/skin 200")
  end
end

--maimai18.ButtonDrawable.setColorFilter(PorterDuffColorFilter(0xFFFFFFFF, PorterDuff.Mode.SRC_ATOP))
function maimai18.OnCheckedChangeListener()
  if maimai18.checked then

    cppPatch("banner", "094") -- JAK12
  end
end

--maimai19.ButtonDrawable.setColorFilter(PorterDuffColorFilter(0xFFFFFFFF, PorterDuff.Mode.SRC_ATOP))
function maimai19.OnCheckedChangeListener()
  if maimai19.checked then

    cppPatch("banner", "084") -- YA PERAM CHIKUDES / SWITCHBLADE
  end
end

--maimai20.ButtonDrawable.setColorFilter(PorterDuffColorFilter(0xFFFFFFFF, PorterDuff.Mode.SRC_ATOP))
function maimai20.OnCheckedChangeListener()
  if maimai20.checked then

    cppPatch("banner", "087") -- QQ9 MYTHIC
  end
end


--maimai21.ButtonDrawable.setColorFilter(PorterDuffColorFilter(0xFFFFFFFF, PorterDuff.Mode.SRC_ATOP))
function maimai21.OnCheckedChangeListener()
  if maimai21.checked then

    cppPatch("banner", "086") -- FENNEC MYTHIC
  end
end





--maimai22.ButtonDrawable.setColorFilter(PorterDuffColorFilter(0xFFFFFFFF, PorterDuff.Mode.SRC_ATOP))
function maimai22.OnCheckedChangeListener()
  if maimai22.checked then

    cppPatch("banner", "093") --ARGUS LEGENDARY
  end
end

--maimai23.ButtonDrawable.setColorFilter(PorterDuffColorFilter(0xFFFFFFFF, PorterDuff.Mode.SRC_ATOP))
function maimai23.OnCheckedChangeListener()
  if maimai23.checked then

    cppPatch("banner", "095") -- R90 LEGENDARY
  end
end

--maimai24.ButtonDrawable.setColorFilter(PorterDuffColorFilter(0xFFFFFFFF, PorterDuff.Mode.SRC_ATOP))
function maimai24.OnCheckedChangeListener()
  if maimai24.checked then

    cppPatch("banner", "096") -- BY50 LEGENDARY
  end
end

--maimai25.ButtonDrawable.setColorFilter(PorterDuffColorFilter(0xFFFFFFFF, PorterDuff.Mode.SRC_ATOP))
function maimai25.OnCheckedChangeListener()
  if maimai25.checked then

    cppPatch("banner", "098") -- KRM LEGENDARY
  end
end

--maimai26.ButtonDrawable.setColorFilter(PorterDuffColorFilter(0xFFFFFFFF, PorterDuff.Mode.SRC_ATOP))
function maimai26.OnCheckedChangeListener()
  if maimai26.checked then

    cppPatch("banner", "097") -- LOCUS LEGENDARY
  end
end

--maimai27.ButtonDrawable.setColorFilter(PorterDuffColorFilter(0xFFFFFFFF, PorterDuff.Mode.SRC_ATOP))
function maimai27.OnCheckedChangeListener()
  if maimai27.checked then

    cppPatch("banner", "0690") -- KNIFE BUTTERFLY LEGENDARY
  end
end

function maimai29.OnCheckedChangeListener()
  if maimai29.checked then

    cppPatch("mai", "10002") -- GRAVITY FALL
  end
end





function onButtonCheckedChangee(button, patchCode)
  --button.ButtonDrawable.setColorFilter(PorterDuffColorFilter(0xFFFFFFFF, PorterDuff.Mode.SRC_ATOP))
  button.OnCheckedChangeListener = function()
    if button.checked then
      -- if not bypassLogoEnabled or AutoBy == false then
      -- idkcstmToast("Please enable BYPASS LOGO first!")
      --  button.setChecked(false)
      --  return
      -- end
      cppPatch("banner", patchCode)
      anntena1.setChecked(false)
      anntena2.setChecked(false)
      anntena3.setChecked(false)
      anntena4.setChecked(false)
      anntena5.setChecked(false)
      anntena6.setChecked(false)
      anntena7.setChecked(false)
      anntena8.setChecked(false)
      anntena9.setChecked(false)
      button.setChecked(true)
    end
  end
end

onButtonCheckedChangee(anntena1, "0900")
onButtonCheckedChangee(anntena2, "0901")
onButtonCheckedChangee(anntena3, "0902")
onButtonCheckedChangee(anntena4, "0903")
onButtonCheckedChangee(anntena5, "0904")
onButtonCheckedChangee(anntena6, "0905")
onButtonCheckedChangee(anntena7, "0906")
onButtonCheckedChangee(anntena8, "0907")
onButtonCheckedChangee(anntena9, "0908")



function updateBatteryTemperature()
  if not running then return end -- Stop updates if unchecked

  local intentFilter = IntentFilter(Intent.ACTION_BATTERY_CHANGED)
  local batteryIntent = activity.registerReceiver(nil, intentFilter)

  if batteryIntent then
    local temp = batteryIntent.getIntExtra("temperature", 0) / 10 -- Convert to Celsius
    win_temp.setText("| ᴛᴇᴍᴘᴇʀᴀᴛᴜʀᴇ: " .. temp .. "°ᴄ") -- Update UI
  end





  -- Schedule the next update only if running
  handler.postDelayed(updateBatteryTemperature, 2000) -- Update every 2 seconds
end

-- Set OnCheckedChangeListener for Checkbox (tempe)
tempe.setOnCheckedChangeListener{
  onCheckedChanged = function(view, isChecked)
    if isChecked then
      -- if not bypassLogoEnabled or AutoBy == false then
      --   idkcstmToast("Please enable BYPASS LOGO first!")
      --    tempe.setChecked(false)
      --    return
      -- end
      ----antiC4droid()
      running = true -- Allow updates
      updateBatteryTemperature() -- Start updating
     else
      running = false -- Stop updates
      handler.removeCallbacks(updateBatteryTemperature) -- Ensure updates stop
      win_temp.setText("") -- Clear display
    end
  end
}



--Function to check key status


function cppPatch2(A0_37, A0_38)
  local paths = activity.getLuaDir("Res/" .. A0_37)
  os.execute("chmod 777 " .. paths .. " " .. A0_38 .. " 2" .. " 3" .. " 4" .. " ‎ ")
  Runtime.getRuntime().exec(paths .. " " .. A0_38 .. " 2" .. " 3" .. " 4" .. " ‎ ")
end





function antenna.OnCheckedChangeListener()
  if antenna.checked then
    cppPatch2("thumbnail", "0900") -- red Antenna
    antenna1.setChecked(false)
    antenna2.setChecked(false)

  end
end


function antenna1.OnCheckedChangeListener()
  if antenna1.checked then
    cppPatch2("thumbnail", "0903") -- ᴄʏᴀɴ Antenna
    antenna.setChecked(false)
    antenna2.setChecked(false)
  end
end


function antenna2.OnCheckedChangeListener()
  if antenna2.checked then
    cppPatch2("thumbnail", "0904") -- black Antenna
    antenna.setChecked(false)
    antenna1.setChecked(false)
  end
end



function antenna3.OnCheckedChangeListener()
  if antenna3.checked then
    cppPatch2("espan", "108") -- white Antenna
    antenna.setChecked(false)
    antenna1.setChecked(false)
    antenna2.setChecked(false)
  end
end



function antenna4.OnCheckedChangeListener()
  if antenna4.checked then
    cppPatch2("espan", "112") -- purple Antenna
    antenna.setChecked(false)
    antenna1.setChecked(false)
    antenna2.setChecked(false)
    antenna3.setChecked(false)
  end
end




function antenna5.OnCheckedChangeListener()
  if antenna5.checked then
    cppPatch2("espan", "110") -- yellow Antenna
    antenna.setChecked(false)
    antenna1.setChecked(false)
    antenna2.setChecked(false)
    antenna3.setChecked(false)
    antenna4.setChecked(false)
  end
end



function antenna6.OnCheckedChangeListener()
  if antenna6.checked then
    cppPatch2("espan", "114") -- orange Antenna
    antenna.setChecked(false)
    antenna1.setChecked(false)
    antenna2.setChecked(false)
    antenna3.setChecked(false)
    antenna4.setChecked(false)
    antenna5.setChecked(false)
  end
end






--locus.ButtonDrawable.setColorFilter(PorterDuffColorFilter(0x9AFFFFFF, PorterDuff.Mode.SRC_ATOP))
function locus.OnCheckedChangeListener()
  if locus.checked then
    cppPatch2("thumbnail", "097") -- locus
  end
end

--ak47.ButtonDrawable.setColorFilter(PorterDuffColorFilter(0x9AFFFFFF, PorterDuff.Mode.SRC_ATOP))
function ak47.OnCheckedChangeListener()
  if ak47.checked then
    cppPatch2("gay", "997") -- ak47
  end
end



--ashura.ButtonDrawable.setColorFilter(PorterDuffColorFilter(0x9AFFFFFF, PorterDuff.Mode.SRC_ATOP))
function ashura.OnCheckedChangeListener()
  if ashura.checked then
    cppPatch2("thumbnail", "091")
    nikto.setChecked(false)
    pader.setChecked(false)
    vivian.setChecked(false)
  end
end

--nikto.ButtonDrawable.setColorFilter(PorterDuffColorFilter(0x9AFFFFFF, PorterDuff.Mode.SRC_ATOP))
function nikto.OnCheckedChangeListener()
  if nikto.checked then
    cppPatch2("thumbnail", "092")
    ashura.setChecked(false)
    pader.setChecked(false)
    vivian.setChecked(false)
  end
end

--pader.ButtonDrawable.setColorFilter(PorterDuffColorFilter(0x9AFFFFFF, PorterDuff.Mode.SRC_ATOP))
function pader.OnCheckedChangeListener()
  if pader.checked then
    cppPatch2("haha", "01")
    ashura.setChecked(false)
    nikto.setChecked(false)
    vivian.setChecked(false)
  end
end

--vivian.ButtonDrawable.setColorFilter(PorterDuffColorFilter(0x9AFFFFFF, PorterDuff.Mode.SRC_ATOP))
function vivian.OnCheckedChangeListener()
  if vivian.checked then
    cppPatch2("haha", "02")
    ashura.setChecked(false)
    nikto.setChecked(false)
    pader.setChecked(false)
  end
end

function onButtonCheckedChange(button, patchCode)
  --button.ButtonDrawable.setColorFilter(PorterDuffColorFilter(0x9AFFFFFF, PorterDuff.Mode.SRC_ATOP))
  button.OnCheckedChangeListener = function()
    if button.checked then
      cppPatch2("thumbnail", patchCode)
      ak117.setChecked(false)
      bp50.setChecked(false)
      ffar.setChecked(false)
      grau.setChecked(false)
      krig6.setChecked(false)
      type19.setChecked(false)
      button.setChecked(true)
    end
  end
end

onButtonCheckedChange(ak117, "078") -- AK117
onButtonCheckedChange(bp50, "081") -- BP50
onButtonCheckedChange(ffar, "079") -- FFAR
onButtonCheckedChange(grau, "080") -- Grau
onButtonCheckedChange(krig6, "085") -- KRIG6
onButtonCheckedChange(type19, "089") -- TYPE19

--dlq.ButtonDrawable.setColorFilter(PorterDuffColorFilter(0x9AFFFFFF, PorterDuff.Mode.SRC_ATOP))
function dlq.OnCheckedChangeListener()
  if dlq.checked then
    cppPatch2("thumbnail", "082") -- DLQ
    idkcstmToast("DLQ LOTUS : SUCCESS")
  end
end

--jak.ButtonDrawable.setColorFilter(PorterDuffColorFilter(0x9AFFFFFF, PorterDuff.Mode.SRC_ATOP))
function jak.OnCheckedChangeListener()
  if jak.checked then
    cppPatch2("thumbnail", "094") -- JAK12
    idkcstmToast("JAK 12 : SUCCESS")
  end
end



--tang.ButtonDrawable.setColorFilter(PorterDuffColorFilter(0x9AFFFFFF, PorterDuff.Mode.SRC_ATOP))
function tang.OnCheckedChangeListener()
  if tang.checked then
    idkcstmToast("TANG KNIFE: SUCCESS")
    cppPatch("ilove", "1000") -- TANGKNIFE

  end
end


--dark.ButtonDrawable.setColorFilter(PorterDuffColorFilter(0x9AFFFFFF, PorterDuff.Mode.SRC_ATOP))
function dark.OnCheckedChangeListener()
  if tang.checked then
    cppPatch("fuckmellee", "999") -- DARK SWORD
    idkcstmToast("DARK SWORD: SUCCESS")
  end
end



--mg40.ButtonDrawable.setColorFilter(PorterDuffColorFilter(0x9AFFFFFF, PorterDuff.Mode.SRC_ATOP))
function mg40.OnCheckedChangeListener()
  if mg40.checked then
    cppPatch("sken", "218") -- MG40 MYTHIC
    idkcstmToast("MG40 MYTHIC: SUCCESS")
  end
end


--x9.ButtonDrawable.setColorFilter(PorterDuffColorFilter(0x9AFFFFFF, PorterDuff.Mode.SRC_ATOP))
function x9.OnCheckedChangeListener()
  if x9.checked then
    cppPatch2("sken", "216") -- SWITCHBLADE MYTHIC
    idkcstmToast("SWITCHBLADE X9 MYTHIC: SUCCESS")
  end
end


--fennec.ButtonDrawable.setColorFilter(PorterDuffColorFilter(0x9AFFFFFF, PorterDuff.Mode.SRC_ATOP))
function fennec.OnCheckedChangeListener()
  if fennec.checked then
    cppPatch2("sken", "210") -- FENNEC MYTHIC
    idkcstmToast("FENNEC MYTHIC: SUCCESS")
  end
end



--qq9.ButtonDrawable.setColorFilter(PorterDuffColorFilter(0x9AFFFFFF, PorterDuff.Mode.SRC_ATOP))
function qq9.OnCheckedChangeListener()
  if qq9.checked then
    cppPatch2("sken", "220") -- QQ9 MYTHIC
    idkcstmToast("QQ9 MYTHIC: SUCCESS")
  end
end



--m13.ButtonDrawable.setColorFilter(PorterDuffColorFilter(0x9AFFFFFF, PorterDuff.Mode.SRC_ATOP))
function m13.OnCheckedChangeListener()
  if m13.checked then
    cppPatch2("sken", "222") -- M13 MYTHIC
    idkcstmToast("M13 MYTHIC: SUCCESS")
  end
end



--krmleg.ButtonDrawable.setColorFilter(PorterDuffColorFilter(0x9AFFFFFF, PorterDuff.Mode.SRC_ATOP))
function krmleg.OnCheckedChangeListener()
  if krmleg.checked then
    cppPatch("effect", "999") -- KRM GLORIOUS BLAZE
    idkcstmToast("KRM GLORIOUS BLAZE: SUCCESS")
  end
end



--by15boba.ButtonDrawable.setColorFilter(PorterDuffColorFilter(0x9AFFFFFF, PorterDuff.Mode.SRC_ATOP))
function by15boba.OnCheckedChangeListener()
  if by15boba.checked then
    cppPatch("effect", "998") -- BY15 BOBA
    idkcstmToast("BY15 BOBA: SUCCESS")
  end
end



--hssong.ButtonDrawable.setColorFilter(PorterDuffColorFilter(0x9AFFFFFF, PorterDuff.Mode.SRC_ATOP))
function hssong.OnCheckedChangeListener()
  if hssong.checked then
    idkcstmToast("HS SONGTRESS: SUCCESS")
    cppPatch("HANDOG", "985") -- HS SONGTRESS

  end
end


--[[

function BlackGold.OnCheckedChangeListener()
  if BlackGold.checked then



  end
end]]

--[[
skinn11.ButtonDrawable.setColorFilter(PorterDuffColorFilter(0x9AFFFFFF, PorterDuff.Mode.SRC_ATOP))
function skinn11.OnCheckedChangeListener()
  if skinn11.checked then
    cppPatch("thumbnail", "085") -- YA PERAM CHIKUDES / SWITCHBLADE
  end
end
]]



-- Keywords to detect CPU and GPU zones




-- Function with 1 parameter


--[[

function HOLGER.OnCheckedChangeListener()
  if HOLGER.checked then
    -- Example: pass “1” as the mode
    idkcstmToast("TEST 1 ")
    cppPatch("Min", "1")
  end
end

function TYPE.OnCheckedChangeListener()
  if TYPE.checked then
    -- Example: pass “1” as the mode
    idkcstmToast("TEST 2 ")
    cppPatch("Min", "10003")
  end
end
]]



-- ===== IMAGE LOADER =====

     
