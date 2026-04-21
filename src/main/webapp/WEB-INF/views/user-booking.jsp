<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>

<html class="light" lang="en"><head>
<meta charset="utf-8"/>
<meta content="width=device-width, initial-scale=1.0" name="viewport"/>
<title>Confirm Booking | Digital Labour Hub</title>
<link href="https://fonts.googleapis.com/css2?family=Manrope:wght@400;500;600;700;800&amp;family=Inter:wght@400;500;600&amp;display=swap" rel="stylesheet"/>
<link href="https://fonts.googleapis.com/css2?family=Material+Symbols+Outlined:wght,FILL@100..700,0..1&amp;display=swap" rel="stylesheet"/>
<link href="https://fonts.googleapis.com/css2?family=Material+Symbols+Outlined:wght,FILL@100..700,0..1&amp;display=swap" rel="stylesheet"/>
<script src="https://cdn.tailwindcss.com?plugins=forms,container-queries"></script>
<script id="tailwind-config">
        tailwind.config = {
            darkMode: "class",
            theme: {
                extend: {
                    "colors": {
                        "tertiary-fixed-dim": "#ffb694",
                        "inverse-on-surface": "#f0f1f2",
                        "on-primary-container": "#bbd0ff",
                        "on-surface": "#191c1d",
                        "on-error-container": "#93000a",
                        "on-tertiary-fixed-variant": "#7b2f00",
                        "tertiary-container": "#983c00",
                        "on-surface-variant": "#424752",
                        "surface-container-highest": "#e1e3e4",
                        "on-error": "#ffffff",
                        "background": "#f8f9fa",
                        "surface-container-high": "#e7e8e9",
                        "surface": "#f8f9fa",
                        "primary-fixed-dim": "#acc7ff",
                        "surface-bright": "#f8f9fa",
                        "secondary-fixed": "#d7e2ff",
                        "error": "#ba1a1a",
                        "on-primary-fixed": "#001a40",
                        "secondary-container": "#bfd2fd",
                        "error-container": "#ffdad6",
                        "surface-container-lowest": "#ffffff",
                        "surface-container": "#edeeef",
                        "on-secondary-fixed": "#041b3c",
                        "on-tertiary-container": "#ffc2a7",
                        "on-tertiary-fixed": "#351000",
                        "tertiary": "#722b00",
                        "outline": "#727784",
                        "on-tertiary": "#ffffff",
                        "on-secondary-container": "#475a7f",
                        "primary-container": "#0056b3",
                        "secondary-fixed-dim": "#b3c7f1",
                        "secondary": "#4c5e84",
                        "surface-tint": "#115cb9",
                        "inverse-surface": "#2e3132",
                        "surface-variant": "#e1e3e4",
                        "on-primary": "#ffffff",
                        "surface-dim": "#d9dadb",
                        "outline-variant": "#c2c6d4",
                        "on-secondary": "#ffffff",
                        "inverse-primary": "#acc7ff",
                        "surface-container-low": "#f3f4f5",
                        "tertiary-fixed": "#ffdbcc",
                        "on-primary-fixed-variant": "#004491",
                        "on-background": "#191c1d",
                        "primary-fixed": "#d7e2ff",
                        "primary": "#003f87",
                        "on-secondary-fixed-variant": "#34476a"
                    },
                    "borderRadius": {
                        "DEFAULT": "0.5rem",
                        "lg": "0.75rem",
                        "xl": "1rem",
                        "full": "9999px"
                    },
                    "fontFamily": {
                        "headline": ["Manrope", "sans-serif"],
                        "body": ["Inter", "sans-serif"],
                        "label": ["Inter", "sans-serif"]
                    }
                }
            }
        }
    </script>
<style>
        .material-symbols-outlined {
            font-variation-settings: 'FILL' 0, 'wght' 400, 'GRAD' 0, 'opsz' 24;
        }
        .bg-glass {
            background-color: rgba(255, 255, 255, 0.8);
            backdrop-filter: blur(20px);
        }
    </style>
</head>
<body class="bg-surface font-body text-on-surface selection:bg-primary-container selection:text-white">
<!-- TopNavBar (Shared Component) -->
<nav class="fixed top-0 w-full z-50 bg-neutral-50/80 dark:bg-slate-900/80 backdrop-blur-md shadow-sm dark:shadow-none font-manrope antialiased">
<div class="flex justify-between items-center px-6 h-16 max-w-7xl mx-auto">
<div class="text-2xl font-bold tracking-tight text-blue-900 dark:text-blue-200">Digital Labour Hub</div>
<!-- Web Links -->
<div class="hidden md:flex items-center space-x-8">
<a class="text-neutral-600 dark:text-neutral-400 hover:text-blue-800 transition-colors" href="#">Find Workers</a>
<a class="text-blue-900 dark:text-blue-300 font-semibold border-b-2 border-blue-900 dark:border-blue-300 pb-1" href="#">My Bookings</a>
<a class="text-neutral-600 dark:text-neutral-400 hover:text-blue-800 transition-colors" href="#">Support</a>
</div>
<!-- Actions -->
<div class="flex items-center space-x-4">
<button class="p-2 hover:bg-neutral-200/50 dark:hover:bg-slate-800/50 rounded-lg transition-all duration-300">
<span class="material-symbols-outlined text-blue-900 dark:text-blue-400">notifications</span>
</button>
<button class="p-2 hover:bg-neutral-200/50 dark:hover:bg-slate-800/50 rounded-lg transition-all duration-300">
<span class="material-symbols-outlined text-blue-900 dark:text-blue-400">account_circle</span>
</button>
</div>
</div>
</nav>
<!-- Main Content Canvas -->
<main class="pt-24 pb-32 px-4 max-w-6xl mx-auto">
<!-- Header Section -->
<header class="mb-12">
<a class="flex items-center text-primary font-medium mb-4 hover:opacity-80 transition-opacity" href="#">
<span class="material-symbols-outlined mr-1">arrow_back</span>
                Back to search
            </a>
<h1 class="text-4xl font-extrabold font-headline text-on-surface tracking-tight mb-2">Confirm Your Booking</h1>
<p class="text-on-surface-variant font-body">Review the details and finalize your session with our verified artisan.</p>
</header>
<div class="grid grid-cols-1 lg:grid-cols-12 gap-8 items-start">
<!-- Left Column: Selection & Forms -->
<div class="lg:col-span-7 space-y-8">
<!-- Artisan Summary Card -->
<section class="bg-surface-container-lowest p-6 rounded-xl shadow-[0_32px_48px_-4px_rgba(25,28,29,0.04)] overflow-hidden relative">
<div class="flex flex-col md:flex-row gap-6 items-center md:items-start">
<div class="relative">
<img alt="${worker.name}" class="w-32 h-32 md:w-40 md:h-40 object-cover rounded-xl shadow-sm rotate-1 transform" data-alt="portrait of a confident professional plumber in a workshop setting with soft natural morning light" src="https://lh3.googleusercontent.com/aida-public/AB6AXuCWBXlEz64nrQrHifEwJfpfJwTybvQziiiNGUplMn7A4PGeTKIk5IVYGSQAeluf9ALpcd8ugslDhnleoOeUME4axaRXaYtB5hb3CHwB603RIRKpFPG5RZq0rqhRJNcEmZArQ4mb33OrDxG6eX5NPjGeov5wpuQ6hmvp_-vXCMqSYzQswEmf2YfIUFsvBdGXysP8c54iO4JgDWKS_XcaCXl8DX9r70zEQCzWOfavNwQiUXfTx_bdBZLlJX6u9OeNySBdW_2gX4WIXYo"/>
<div class="absolute -bottom-2 -right-2 bg-primary-fixed text-on-primary-fixed px-3 py-1 rounded-full text-xs font-bold shadow-sm flex items-center">
<span class="material-symbols-outlined text-[14px] mr-1" style="font-variation-settings: 'FILL' 1;">verified</span>
                                Verified
                            </div>
</div>
<div class="flex-1 text-center md:text-left pt-2">
<h2 class="text-2xl font-bold font-headline text-on-surface mb-1">${worker.name}</h2>
<p class="text-primary font-semibold mb-3 tracking-wide uppercase text-xs">Expert Plumber &amp; Pipefitter</p>
<div class="flex items-center justify-center md:justify-start gap-4 mb-4">
<div class="flex items-center gap-1">
<span class="material-symbols-outlined text-tertiary text-lg" style="font-variation-settings: 'FILL' 1;">star</span>
<span class="font-bold text-on-surface">4.9</span>
<span class="text-on-surface-variant text-sm">(124 reviews)</span>
</div>
<div class="h-4 w-[1px] bg-outline-variant/30"></div>
<div class="text-on-surface-variant text-sm flex items-center">
<span class="material-symbols-outlined text-sm mr-1">history</span>
                                    8 years exp.
                                </div>
</div>
<div class="bg-surface-container-low p-3 rounded-lg inline-flex items-center gap-2">
<span class="material-symbols-outlined text-on-surface-variant">payments</span>
<span class="text-sm font-medium">Starts at <span class="text-on-surface font-bold">LKR ${worker.hourlyRate}</span>/hr</span>
</div>
</div>
</div>
</section>
<!-- Booking Details Form -->
<section class="bg-surface-container-low p-8 rounded-xl space-y-8">
<div>
<h3 class="text-xl font-bold font-headline mb-6 flex items-center">
<span class="w-8 h-8 rounded-full bg-primary text-on-primary flex items-center justify-center text-sm mr-3">1</span>
                            Schedule Your Visit
                        </h3>
<div class="grid grid-cols-1 md:grid-cols-2 gap-6">
<div class="space-y-2">
<label class="text-sm font-bold text-outline uppercase tracking-wider block ml-1">Service Date</label>
<div class="relative">
<input class="w-full bg-surface-container-lowest border-none rounded-lg p-4 focus:ring-2 focus:ring-primary/20 transition-all shadow-sm" type="date"/>
<span class="material-symbols-outlined absolute right-4 top-4 text-outline-variant pointer-events-none">calendar_today</span>
</div>
</div>
<div class="space-y-2">
<label class="text-sm font-bold text-outline uppercase tracking-wider block ml-1">Arrival Window</label>
<div class="relative">
<select class="w-full bg-surface-container-lowest border-none rounded-lg p-4 focus:ring-2 focus:ring-primary/20 appearance-none transition-all shadow-sm">
<option>Morning (08:00 - 12:00)</option>
<option>Afternoon (12:00 - 16:00)</option>
<option>Evening (16:00 - 20:00)</option>
</select>
<span class="material-symbols-outlined absolute right-4 top-4 text-outline-variant pointer-events-none">schedule</span>
</div>
</div>
</div>
</div>
<div>
<h3 class="text-xl font-bold font-headline mb-6 flex items-center">
<span class="w-8 h-8 rounded-full bg-primary text-on-primary flex items-center justify-center text-sm mr-3">2</span>
                            Service Location
                        </h3>
<div class="space-y-4">
<div class="space-y-2">
<label class="text-sm font-bold text-outline uppercase tracking-wider block ml-1">Street Address</label>
<div class="relative">
<input class="w-full bg-surface-container-lowest border-none rounded-lg p-4 focus:ring-2 focus:ring-primary/20 transition-all shadow-sm" placeholder="Enter your full home address" type="text"/>
<span class="material-symbols-outlined absolute right-4 top-4 text-outline-variant pointer-events-none">location_on</span>
</div>
</div>
<div class="grid grid-cols-2 gap-4">
<input class="w-full bg-surface-container-lowest border-none rounded-lg p-4 focus:ring-2 focus:ring-primary/20 transition-all shadow-sm" placeholder="City" type="text"/>
<input class="w-full bg-surface-container-lowest border-none rounded-lg p-4 focus:ring-2 focus:ring-primary/20 transition-all shadow-sm" placeholder="Landmark (Optional)" type="text"/>
</div>
</div>
</div>
</section>
</div>
<!-- Right Column: Summary & Payment -->
<div class="lg:col-span-5 sticky top-24">
<div class="bg-surface-container-lowest rounded-xl shadow-[0_48px_64px_-8px_rgba(0,63,135,0.08)] overflow-hidden">
<div class="p-8 bg-gradient-to-br from-primary to-primary-container text-on-primary">
<h3 class="text-2xl font-bold font-headline mb-1">Price Summary</h3>
<p class="text-on-primary/70 text-sm">Review the estimated costs for this service</p>
</div>
<div class="p-8 space-y-6">
<div class="space-y-4">
<div class="flex justify-between items-center">
<span class="text-on-surface-variant">Hourly Base Rate</span>
<span class="font-semibold text-on-surface">LKR ${worker.hourlyRate}</span>
</div>
<div class="flex justify-between items-start">
<div>
<span class="text-on-surface-variant flex items-center">
                                        Inspection Fee
                                        <span class="material-symbols-outlined text-sm ml-1 text-primary cursor-help">info</span>
</span>
<p class="text-[10px] text-tertiary font-bold uppercase tracking-tighter mt-0.5">Free if job is accepted</p>
</div>
<span class="font-semibold text-on-surface">LKR 500.00</span>
</div>
</div>
<div class="pt-6 border-t border-dashed border-outline-variant">
<div class="flex justify-between items-center mb-2">
<span class="text-lg font-bold font-headline">Total Payable</span>
<span class="text-2xl font-black font-headline text-primary">LKR ${worker.hourlyRate + 500}</span>
</div>
<p class="text-[11px] text-on-surface-variant leading-tight">
                                * Final total may vary based on exact work hours and materials required. Inspection fee is waived from the final bill if you proceed with the service.
                            </p>
</div>
<div class="space-y-3 pt-4">
<button class="w-full py-4 bg-gradient-to-r from-primary to-primary-container text-on-primary font-bold rounded-lg shadow-lg hover:shadow-xl hover:translate-y-[-2px] transition-all flex items-center justify-center gap-2">
                                Confirm Booking
                                <span class="material-symbols-outlined text-xl">verified_user</span>
</button>
<button class="w-full py-4 text-error font-semibold rounded-lg hover:bg-error-container/20 transition-colors">
                                Cancel Selection
                            </button>
</div>
</div>
<div class="bg-surface-container-low p-6 flex items-center gap-4">
<div class="w-10 h-10 rounded-full bg-white flex items-center justify-center text-primary shadow-sm">
<span class="material-symbols-outlined">security</span>
</div>
<div>
<p class="text-xs font-bold text-on-surface">Labour Hub Protection</p>
<p class="text-[10px] text-on-surface-variant">Secure payments and service satisfaction guarantee included.</p>
</div>
</div>
</div>
<!-- Helper Widget -->
<div class="mt-6 bg-surface-container-low rounded-xl p-6 flex items-start gap-4">
<span class="material-symbols-outlined text-primary text-3xl">lightbulb</span>
<div>
<p class="text-sm font-bold mb-1">Expert Tip</p>
<p class="text-xs text-on-surface-variant leading-relaxed">Artisans like ${worker.name} usually appreciate clear photos of the issue. You can send these via Messages after confirming the booking.</p>
</div>
</div>
</div>
</div>
</main>
<!-- BottomNavBar (Shared Component - Mobile Only) -->
<nav class="md:hidden fixed bottom-0 left-0 w-full flex justify-around items-center px-4 py-3 pb-safe bg-white/90 dark:bg-slate-900/90 backdrop-blur-xl rounded-t-3xl shadow-[0_-4px_24px_rgba(0,0,0,0.04)] z-50">
<button class="flex flex-col items-center justify-center text-neutral-400 dark:text-neutral-500 px-5 py-2 active:scale-95 transition-transform">
<span class="material-symbols-outlined">home</span>
<span class="text-[11px] font-manrope font-medium uppercase tracking-wider mt-1">Home</span>
</button>
<button class="flex flex-col items-center justify-center bg-blue-100 dark:bg-blue-900/40 text-blue-900 dark:text-blue-200 rounded-2xl px-5 py-2 active:scale-95 transition-transform">
<span class="material-symbols-outlined">receipt_long</span>
<span class="text-[11px] font-manrope font-medium uppercase tracking-wider mt-1">Bookings</span>
</button>
<button class="flex flex-col items-center justify-center text-neutral-400 dark:text-neutral-500 px-5 py-2 active:scale-95 transition-transform">
<span class="material-symbols-outlined">mail</span>
<span class="text-[11px] font-manrope font-medium uppercase tracking-wider mt-1">Inbox</span>
</button>
<button class="flex flex-col items-center justify-center text-neutral-400 dark:text-neutral-500 px-5 py-2 active:scale-95 transition-transform">
<span class="material-symbols-outlined">person</span>
<span class="text-[11px] font-manrope font-medium uppercase tracking-wider mt-1">Profile</span>
</button>
</nav>
</body></html>ad>
<meta charset="UTF-8">
<title>Insert title here</title>
</head>
<body>

</body>
</html>