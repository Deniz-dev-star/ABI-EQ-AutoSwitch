#NoEnv
#Persistent
#SingleInstance Force
SetTitleMatchMode, 2
SetTimer, CheckABI, 500

; ==================================================
; USER CONFIGURATION
; ==================================================

; Window title of the game (partial match allowed)
abiWindow := "Arena Breakout Infinite"

; EqualizerAPO paths
activeFile := "C:\Program Files\EqualizerAPO\config\ACTIVE.txt"

; Profile includes
abiProfile        := "Include: ABI.txt"
headphonesProfile := "Include: HEADPHONES_EQ.txt"

; Timing
debounceMs := 750

; Optional logging (safe to delete later)
logFile := "C:\Program Files\EqualizerAPO\config\AHK_LOG.txt"

; ==================================================
; LOGGING FUNCTION
; ==================================================
Log(msg) {
    global logFile
    FormatTime, t,, yyyy-MM-dd HH:mm:ss
    FileAppend, %t% - %msg%`n, %logFile%
}

; ==================================================
; FAILSAFE RESET ON SCRIPT START
; Ensures desktop audio is NEVER limited on boot
; ==================================================
FileRead, currentState, %activeFile%
if (currentState != headphonesProfile) {
    FileDelete, %activeFile%
    FileAppend, %headphonesProfile%, %activeFile%
    Log("Startup reset -> HEADPHONES_EQ.txt enforced")
}

return

; ==================================================
; MAIN LOOP — GAME DETECTION & PROFILE SWITCHING
; ==================================================
CheckABI:
    ; Detect game by window title (anti-cheat safe)
    gameRunning := WinExist(abiWindow)

    ; Read current APO state
    FileRead, currentState, %activeFile%

    ; ----------------------------------------------
    ; GAME RUNNING → ABI PROFILE
    ; ----------------------------------------------
    if (gameRunning) {
        if (currentState != abiProfile) {
            Sleep, debounceMs
            if WinExist(abiWindow) {
                FileDelete, %activeFile%
                FileAppend, %abiProfile%, %activeFile%
                Log("Game detected -> ABI.txt active")
            }
        }
    }
    ; ----------------------------------------------
    ; GAME CLOSED → HEADPHONES_EQ PROFILE
    ; ----------------------------------------------
    else {
        if (currentState != headphonesProfile) {
            Sleep, debounceMs
            if !WinExist(abiWindow) {
                FileDelete, %activeFile%
                FileAppend, %headphonesProfile%, %activeFile%
                Log("Game closed -> HEADPHONES_EQ.txt active")
            }
        }
    }
return
