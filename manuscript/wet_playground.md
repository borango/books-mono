# Wet Playground

<svg width="400" height="400" viewBox="0 0 400 400" xmlns="http://www.w3.org/2000/svg">
 <defs>
 <linearGradient id="gradient" x1="0%" y1="0%" x2="100%" y2="100%">
 <stop offset="0%" style="stop-color:#4CAF50;stop-opacity:0.2" />
 <stop offset="100%" style="stop-color:#808080;stop-opacity:0.2" />
 </linearGradient>
 </defs>
 <!-- Background square -->
 <polygon points="50,50 350,50 350,350 50,350" fill="url(#gradient)" stroke="#333" stroke-width="2"/>
 <!-- Labels for corners -->
 <text x="39" y="40" text-anchor="middle">Marina</text>
 <text x="360" y="40" text-anchor="middle">Engine</text>
 <text x="360" y="370" text-anchor="middle">Sails</text>
 <text x="40" y="370" text-anchor="middle">Anchoring</text>
 <!-- Mainstream Yachting area: between Marina and Engine, 50% to Sails, 90% to Anchoring -->
 <polygon points="50,50 350,50 350,200 50,80" fill="#808080" fill-opacity="0.5" stroke="#333" stroke-width="1"/>
 <text x="200" y="80" text-anchor="middle" fill="#333">Mainstream Yachting</text>
 <!-- Eco Sailing area: 10% Marina (90% Anchoring), 10% Engine (90% Sails) -->
 <polygon points="50,320 50,350 350,350 350,290" fill="#4CAF50" fill-opacity="0.5" stroke="#333" stroke-width="1"/>
 <text x="200" y="330" text-anchor="middle" fill="#333">Eco Sailing</text>
</svg>
