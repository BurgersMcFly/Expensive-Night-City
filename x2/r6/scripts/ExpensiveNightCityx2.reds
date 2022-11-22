// ExpensiveNightCity, Cyberpunk 2077 mod that increases buy prices of almost everything
// Copyright (C) 2022 BurgersMcFly

// This program is free software: you can redistribute it and/or modify
// it under the terms of the GNU General Public License as published by
// the Free Software Foundation, either version 3 of the License, or
// (at your option) any later version.

// This program is distributed in the hope that it will be useful,
// but WITHOUT ANY WARRANTY; without even the implied warranty of
// MERCHANTABILITY or FITNESS FOR A PARTICULAR PURPOSE.  See the
// GNU General Public License for more details.

// You should have received a copy of the GNU General Public License
// along with this program.  If not, see <https://www.gnu.org/licenses/>.

 @replaceMethod(MarketSystem)

   public final static func GetBuyPrice(vendorObject: wref<GameObject>, itemID: ItemID) -> Int32 {
    let marketSystem: ref<MarketSystem> = MarketSystem.GetInstance(vendorObject.GetGame());
     let vendor: ref<Vendor> = marketSystem.GetVendor(vendorObject);
    return (RPGManager.CalculateBuyPrice(vendorObject.GetGame(), vendorObject, itemID, vendor.GetPriceMultiplier()))*2;
  }