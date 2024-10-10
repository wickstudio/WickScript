# Wick Script v1.0

### Author : [WickStudio](https://github.com/wickstudio)

## Introduction

**Wick Script** is a custom batch script designed to **bypass country or IP-based blocks** that prevent access to Discord. By using this script, users can route their Discord traffic through custom gateways, making it possible to unblock Discord from restricted regions or networks where access is blocked.

This script is especially useful for users in countries where Discord is restricted, allowing them to circumvent firewalls and regain access to the platform while maintaining a stable connection by routing traffic through specific servers.

---

## Key Features

- **Bypass IP/Country Restrictions**: Routes Discord traffic through gateways to remove blocks imposed by your ISP, network, or government.
- **Automated Gateway Testing**: Tests multiple gateways and selects the fastest and most reliable one.
- **Discord-Specific Routing**: Only routes Discord traffic through the VPN, leaving the rest of your internet traffic unaffected.
- **Customizable**: Easily update the script with your own gateway IPs.
- **DNS Flushing**: Clears DNS cache automatically after adding routes to ensure updated network settings.
- **Menu Options**: A simple interactive menu for setting, resetting routes, or exiting the script.

---

## How It Works

Many users experience problems accessing Discord due to restrictions imposed by ISPs, workplaces, or government blocks. **Wick Script** works by allowing you to:

1. **Select Gateway IPs**: This script supports testing and selecting the best available gateway from up to three provided options.
2. **Set Network Routes**: Once a gateway is reachable, it automatically sets up routes for Discord’s IP addresses so that all Discord traffic is routed through the while the rest of your network operates as usual.
3. **Remove Restrictions**: By routing only Discord traffic through the VPN, you can remove restrictions from specific networks or countries, ensuring seamless access to Discord's services even when they are blocked.

---

## Features

1. **Bypass Country-Specific Blocks**:
   - Useful in countries where Discord is blocked by ISPs or government firewalls. Wick Script ensures your Discord connection bypasses such blocks while the rest of your internet traffic remains unaffected.
  
2. **IP-Based Block Removal**:
   - If your Discord traffic is restricted based on your IP address (e.g., on a university or work network), Wick Script can redirect that traffic through a VPN, ensuring smooth access to Discord services.

3. **Automated Gateway Selection**:
   - The script automatically tests up to three gateway IPs and selects the first working or fastest one for your Discord traffic routing.

4. **Reset Functionality**:
   - Reset routes easily if you need to undo any changes made to your network configuration.

---

## Usage

1. **Clone or Download the Repository**:
   ```bash
   git clone https://github.com/wickstudio/WickScript.git
   ```

2. **Add Your Gateway IPs**:
   - Replace the placeholder gateway IPs (`PUT_FIRST_GATEWAY_IP_HERE`, `PUT_SECOND_GATEWAY_IP_HERE`, etc.) in the script with actual IP addresses. **Contact me** (see Contact section below) to obtain gateway IPs that work for your region and use case.

3. **Run the Script**:
   - Right-click on `Wick_Script.bat` and select **Run as Administrator**.

4. **Select an Option from the Menu**:
   - **Option 1**: Activate and set routes for Discord.
   - **Option 2**: Reset routes (remove previously set routes).
   - **Option 3**: Exit the script.

---

## Contact

To receive valid gateway IPs, or if you need help setting up the script, please contact me directly:

- **Instagram**: [mik__subhi](https://www.instagram.com/mik__subhi/)
- **Discord**: [discord.gg/wicks](https://discord.gg/wicks)
- **Email**: [wick@wick-studio.com](mailto:wick@wick-studio.com)

Feel free to reach out if you encounter any issues or need custom configurations for your network setup.

---

## License

This project is licensed under the MIT License. See the [LICENSE](LICENSE) file for details.

---

## Contributions

Contributions are welcome! Feel free to open issues or submit pull requests if you have any suggestions or improvements to the script.

---

### Disclaimer

This script is provided "as is" without any warranty. By using this script, you assume all responsibility for its usage. Ensure you comply with your provider's terms and conditions.