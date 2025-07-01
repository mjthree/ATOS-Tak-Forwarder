Coming soon 

## ATOS Tracker Display Dashboard

A large-screen dashboard for monitoring up to 100 ATOS trackers in real time.

- **Access:** Go to `http://localhost:5000/display` while the Flask app is running.
- **Layout:** 10x10 grid, each box shows the tracker number only.
- **Color logic:**
  - **Green:** Tag is not stale and battery voltage is 3.50V or higher
  - **Yellow:** Tag is not stale and battery voltage is below 3.50V (or missing)
  - **Red:** Tag is stale (regardless of voltage)
- **Updates:** Dashboard refreshes every 2 seconds with live data from `/api/tags`.
- **No title:** The dashboard is designed for clean, full-screen display with no header.

This dashboard is ideal for wall displays or quick status checks during operations. 