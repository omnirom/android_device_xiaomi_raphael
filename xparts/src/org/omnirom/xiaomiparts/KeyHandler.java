/*
* Copyright (C) 2020 The OmniROM Project
*
* This program is free software: you can redistribute it and/or modify
* it under the terms of the GNU General Public License as published by
* the Free Software Foundation, either version 2 of the License, or
* (at your option) any later version.
*
* This program is distributed in the hope that it will be useful,
* but WITHOUT ANY WARRANTY; without even the implied warranty of
* MERCHANTABILITY or FITNESS FOR A PARTICULAR PURPOSE. See the
* GNU General Public License for more details.
*
* You should have received a copy of the GNU General Public License
* along with this program. If not, see <http://www.gnu.org/licenses/>.
*
*/
package org.omnirom.xiaomiparts;

import android.os.FileObserver;
import android.util.Log;
import android.view.KeyEvent;

import com.android.internal.os.DeviceKeyHandler;

public class KeyHandler implements DeviceKeyHandler {

    private static final String TAG = "KeyHandler";
    private static final boolean DEBUG = true;

    public KeyHandler(Context context) {
      if (DEBUG) Log.e(TAG, "KeyHandler called");
    }

    @Override
     public boolean handleKeyEvent(KeyEvent event) {
         if (DEBUG) Log.e(TAG, "handleKeyEvent called - scancode=" + event.getScanCode() + " - keyevent=" + event.getAction());
         return false;
     }

     @Override
     public boolean canHandleKeyEvent(KeyEvent event) {
         Log.e(TAG, "canHandleKeyEvent called - scancode=" + event.getScanCode() + " - keyevent=" + event.getAction());
         return false;
     }

     @Override
     public boolean isDisabledKeyEvent(KeyEvent event) {
         if (DEBUG) Log.e(TAG, "isDisabledKeyEvent called - scancode=" + event.getScanCode() + " - keyevent=" + event.getAction());
         return false;
     }

     @Override
     public boolean isCameraLaunchEvent(KeyEvent event) {
         return false;
     }

     @Override
     public boolean isWakeEvent(KeyEvent event){
         if (DEBUG) Log.e(TAG, "isWakeEvent called - scancode=" + event.getScanCode() + " - keyevent=" + event.getAction());
         return false;
     }

     @Override
     public Intent isActivityLaunchEvent(KeyEvent event) {
       if (event.getAction() != KeyEvent.ACTION_UP) {
           return null;
       }
       return null;
     }
}
