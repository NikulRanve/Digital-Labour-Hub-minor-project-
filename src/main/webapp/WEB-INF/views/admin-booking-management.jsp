<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>

<html class="light" lang="en"><head>
<meta charset="utf-8"/>
<meta content="width=device-width, initial-scale=1.0" name="viewport"/>
<title>Recent Bookings - Digital Labour Hub</title>
<!-- Fonts -->
<link href="https://fonts.googleapis.com" rel="preconnect"/>
<link crossorigin="" href="https://fonts.gstatic.com" rel="preconnect"/>
<link href="https://fonts.googleapis.com/css2?family=Inter:wght@400;500;600;700&amp;family=Manrope:wght@600;700;800&amp;display=swap" rel="stylesheet"/>
<!-- Material Symbols -->
<link href="https://fonts.googleapis.com/css2?family=Material+Symbols+Outlined:wght,FILL@100..700,0..1&amp;display=swap" rel="stylesheet"/>
<link href="https://fonts.googleapis.com/css2?family=Material+Symbols+Outlined:wght,FILL@100..700,0..1&amp;display=swap" rel="stylesheet"/>
<!-- Tailwind CSS -->
<script src="https://cdn.tailwindcss.com?plugins=forms,container-queries"></script>
<script id="tailwind-config">
      tailwind.config = {
        darkMode: "class",
        theme: {
          extend: {
            "colors": {
                    "outline-variant": "#c2c6d4",
                    "on-primary-fixed": "#001a40",
                    "on-surface": "#191c1d",
                    "tertiary-fixed": "#ffdbcc",
                    "tertiary": "#722b00",
                    "on-surface-variant": "#424752",
                    "surface-container-highest": "#e1e3e4",
                    "on-secondary-fixed-variant": "#34476a",
                    "surface-dim": "#d9dadb",
                    "surface": "#f8f9fa",
                    "surface-container-low": "#f3f4f5",
                    "on-tertiary-fixed": "#351000",
                    "on-primary-fixed-variant": "#004491",
                    "on-tertiary": "#ffffff",
                    "inverse-surface": "#2e3132",
                    "outline": "#727784",
                    "surface-tint": "#115cb9",
                    "tertiary-fixed-dim": "#ffb694",
                    "on-secondary": "#ffffff",
                    "inverse-on-surface": "#f0f1f2",
                    "on-error": "#ffffff",
                    "primary-fixed": "#d7e2ff",
                    "on-primary": "#ffffff",
                    "primary-fixed-dim": "#acc7ff",
                    "secondary-fixed": "#d7e2ff",
                    "error-container": "#ffdad6",
                    "primary-container": "#0056b3",
                    "on-background": "#191c1d",
                    "on-secondary-container": "#475a7f",
                    "secondary-container": "#bfd2fd",
                    "primary": "#003f87",
                    "tertiary-container": "#983c00",
                    "on-secondary-fixed": "#041b3c",
                    "inverse-primary": "#acc7ff",
                    "surface-container-high": "#e7e8e9",
                    "secondary-fixed-dim": "#b3c7f1",
                    "secondary": "#4c5e84",
                    "on-tertiary-fixed-variant": "#7b2f00",
                    "on-primary-container": "#bbd0ff",
                    "on-error-container": "#93000a",
                    "surface-variant": "#e1e3e4",
                    "surface-bright": "#f8f9fa",
                    "surface-container-lowest": "#ffffff",
                    "background": "#f8f9fa",
                    "on-tertiary-container": "#ffc2a7",
                    "error": "#ba1a1a",
                    "surface-container": "#edeeef"
            },
            "borderRadius": {
                    "DEFAULT": "0.5rem",
                    "lg": "0.5rem",
                    "xl": "0.75rem",
                    "full": "9999px"
            },
            "fontFamily": {
                    "headline": ["Manrope"],
                    "body": ["Inter"],
                    "label": ["Inter"]
            }
          },
        },
      }
    </script>
<style>
        .material-symbols-outlined {
            font-variation-settings: 'FILL' 0, 'wght' 400, 'GRAD' 0, 'opsz' 24;
            display: inline-block;
            vertical-align: middle;
        }
        body {
            font-family: 'Inter', sans-serif;
            background-color: #f8f9fa;
            color: #191c1d;
        }
        h1, h2, h3, .headline {
            font-family: 'Manrope', sans-serif;
        }
        /* Custom scrollbar for side nav */
        .no-scrollbar::-webkit-scrollbar {
            display: none;
        }
        .no-scrollbar {
            -ms-overflow-style: none;
            scrollbar-width: none;
        }
    </style>
</head>
<body class="bg-surface text-on-surface">
<!-- SideNavBar Shell -->
<aside class="h-screen w-64 fixed left-0 top-0 overflow-y-auto bg-slate-50 dark:bg-slate-950 flex flex-col p-6 gap-2 shadow-[20px_0_40px_-15px_rgba(0,0,0,0.05)] z-50 font-['Manrope'] tracking-tight">
<div class="mb-8 px-2">
<h1 class="font-['Manrope'] font-extrabold text-blue-900 dark:text-blue-100 tracking-tighter text-xl mb-1">Digital Labour Hub</h1>
<p class="text-xs text-slate-500 font-medium">Admin Portal</p>
</div>
<nav class="flex flex-col gap-1">
<!-- Active: Overview -->
<a class="flex items-center gap-3 px-4 py-3 text-blue-700 font-bold bg-white/80 rounded-lg transition-all duration-200 ease-in-out scale-[0.98]" href="admin-dashboard">
<span class="material-symbols-outlined" data-icon="dashboard">dashboard</span>
<span>Overview</span>
</a>
<a class="flex items-center gap-3 px-4 py-3 text-slate-500 font-medium hover:text-blue-600 transition-all duration-200 ease-in-out hover:bg-slate-200/50" href="admin-user-management">
<span class="material-symbols-outlined" data-icon="group">group</span>
<span>Users</span>
</a>
<a class="flex items-center gap-3 px-4 py-3 text-slate-500 font-medium hover:text-blue-600 transition-all duration-200 ease-in-out hover:bg-slate-200/50" href="admin-worker-management">
<span class="material-symbols-outlined" data-icon="engineering">engineering</span>
<span>Workers</span>
</a>
<a class="flex items-center gap-3 px-4 py-3 text-slate-500 font-medium hover:text-blue-600 transition-all duration-200 ease-in-out hover:bg-slate-200/50" href="admin-booking-management">
<span class="material-symbols-outlined" data-icon="calendar_today">calendar_today</span>
<span>Bookings</span>
</a>
<a class="flex items-center gap-3 px-4 py-3 text-slate-500 font-medium hover:text-blue-600 transition-all duration-200 ease-in-out hover:bg-slate-200/50" href="admin-verification-management">
<span class="material-symbols-outlined" data-icon="verified_user">verified_user</span>
<span>Verification</span>
</a>
<a class="flex items-center gap-3 px-4 py-3 mt-4 text-slate-500 dark:text-slate-400 font-medium hover:text-error dark:hover:text-red-400 transition-all duration-200 ease-in-out hover:bg-red-50 dark:hover:bg-red-950/20 rounded-lg" href="index">
<span class="material-symbols-outlined">logout</span>
<span>Logout</span>
</a>
</nav>
<div class="mt-auto pt-6 border-t border-slate-200/50">
<div class="flex items-center gap-3 px-2">
<img alt="Admin User Profile" class="w-10 h-10 rounded-full object-cover" data-alt="Professional headshot of a middle-aged male administrator in a clean white studio setting, smiling confidently." src="https://lh3.googleusercontent.com/aida-public/AB6AXuAVOtrxL93RGor8U0XmVOA_2PF1lTDk7pUVUNPobfwlGw8mVipC1u1veomTz74y7gcZxBUWmFAhWJ5Oe6dDfavo7lWJxriWW8eUgS56Bs4aR3qYq6Ze92FAHgnkoaNioLozU_MB5TmRSf30tmipL96jESKhZ0LW3KaYvQEdAXonabnab4ENR6nD0A46Qe3BdVAzIuge5JByRz0E4WUHJwFVwlfnyMjg-T3FUQ-Mm0PcRCFOObY4QMuYISfdOdTmomoc0LoepIBvUBo"/>
<div>
<p class="text-sm font-bold text-on-surface">Alex Rivera</p>
<p class="text-[10px] uppercase tracking-widest text-outline">Super Admin</p>
</div>
</div>
</div>
</aside>


<!-- TopAppBar -->
<header class="fixed top-0 right-0 h-16 z-40 bg-white/80 backdrop-blur-md flex items-center justify-between pl-72 pr-8 w-full font-['Inter'] text-sm">

<div class="flex items-center gap-4 flex-1 max-w-xl">
<div class="relative w-full">
<span class="material-symbols-outlined absolute left-3 top-1/2 -translate-y-1/2 text-outline">search</span>
<input class="w-full pl-10 pr-4 py-2 rounded-lg bg-surface-container-low border-none focus:ring-2 focus:ring-primary-fixed transition-all placeholder:text-outline text-on-surface" placeholder="Search booking ID or name..." type="text"/>
</div>
</div>
<div class="flex items-center gap-6">
<button class="relative text-slate-600 hover:text-blue-500 transition-colors">
<span class="material-symbols-outlined" data-icon="notifications">notifications</span>
<span class="absolute -top-1 -right-1 w-2 h-2 bg-error rounded-full"></span>
</button>
<button class="text-slate-600 hover:text-blue-500 transition-colors">
<span class="material-symbols-outlined" data-icon="settings">settings</span>
</button>
</div>
</header>
<!-- Main Content Canvas -->
<main class="ml-64 pt-24 px-8 pb-12">
<!-- Header Actions & Filters -->
<div class="flex flex-col md:flex-row md:items-end justify-between gap-6 mb-10">
<div>
<p class="text-outline font-medium mb-1 label-md">Overview</p>
<h1 class="text-3xl font-extrabold tracking-tight text-on-surface headline-lg">Recent Bookings</h1>
</div>
<div class="flex items-center gap-3">
<div class="flex bg-surface-container-low p-1 rounded-lg">
<button class="px-4 py-1.5 text-xs font-semibold rounded-md bg-white shadow-sm text-primary transition-all">All</button>
<button class="px-4 py-1.5 text-xs font-medium text-on-surface-variant hover:text-on-surface transition-all">Today</button>
<button class="px-4 py-1.5 text-xs font-medium text-on-surface-variant hover:text-on-surface transition-all">This Week</button>
</div>
<button class="flex items-center gap-2 bg-primary text-on-primary px-5 py-2.5 rounded-lg text-sm font-semibold shadow-lg shadow-primary/20 hover:opacity-90 transition-all">
<span class="material-symbols-outlined text-[20px]" data-icon="download">download</span>
                    Export Report
                </button>
</div>
</div>
<!-- Filter Bar -->
<div class="grid grid-cols-1 md:grid-cols-4 gap-4 mb-8">
<div class="flex flex-col gap-1.5">
<label class="text-xs font-bold text-outline uppercase tracking-wider ml-1">Status</label>
<select class="bg-surface-container-low border-none rounded-lg p-3 text-sm font-medium focus:ring-2 focus:ring-primary-fixed outline-none appearance-none">
<option>All Statuses</option>
<option>Pending</option>
<option>Confirmed</option>
<option>Completed</option>
<option>Cancelled</option>
</select>
</div>
<div class="flex flex-col gap-1.5">
<label class="text-xs font-bold text-outline uppercase tracking-wider ml-1">Service Type</label>
<select class="bg-surface-container-low border-none rounded-lg p-3 text-sm font-medium focus:ring-2 focus:ring-primary-fixed outline-none appearance-none">
<option>All Services</option>
<option>Plumber</option>
<option>Electrician</option>
<option>Gardener</option>
<option>Painter</option>
<option>Cleaner</option>
</select>
</div>
<div class="flex flex-col gap-1.5">
<label class="text-xs font-bold text-outline uppercase tracking-wider ml-1">Sort By</label>
<select class="bg-surface-container-low border-none rounded-lg p-3 text-sm font-medium focus:ring-2 focus:ring-primary-fixed outline-none appearance-none">
<option>Newest First</option>
<option>Oldest First</option>
<option>Amount: High to Low</option>
<option>Amount: Low to High</option>
</select>
</div>
<div class="flex items-end">
<button class="w-full bg-surface-container-high text-on-surface-variant font-bold py-3 rounded-lg text-sm hover:bg-surface-container-highest transition-colors flex items-center justify-center gap-2">
<span class="material-symbols-outlined" data-icon="filter_list">filter_list</span>
                    Clear All Filters
                </button>
</div>
</div>
<!-- Table Container -->
<div class="bg-surface-container-lowest rounded-xl overflow-hidden shadow-[0_4px_20px_-1px_rgba(0,0,0,0.03)] border-none">
<div class="overflow-x-auto">
<table class="w-full text-left border-collapse">
<thead>
<tr class="bg-surface-container-low/50">
<th class="px-6 py-4 text-xs font-bold text-outline uppercase tracking-widest border-none">Booking ID</th>
<th class="px-6 py-4 text-xs font-bold text-outline uppercase tracking-widest border-none">Customer</th>
<th class="px-6 py-4 text-xs font-bold text-outline uppercase tracking-widest border-none">Service Provider</th>
<th class="px-6 py-4 text-xs font-bold text-outline uppercase tracking-widest border-none">Service</th>
<th class="px-6 py-4 text-xs font-bold text-outline uppercase tracking-widest border-none">Date &amp; Time</th>
<th class="px-6 py-4 text-xs font-bold text-outline uppercase tracking-widest border-none">Status</th>
<th class="px-6 py-4 text-xs font-bold text-outline uppercase tracking-widest border-none">Amount</th>
<th class="px-6 py-4 text-xs font-bold text-outline uppercase tracking-widest border-none">Actions</th>
</tr>
</thead>
<tbody class="divide-y divide-surface-container-low">
<!-- Row 1 -->
<tr class="hover:bg-surface-container-low/30 transition-colors group">
<td class="px-6 py-5 font-bold text-primary text-sm tracking-tight">#LB-8821</td>
<td class="px-6 py-5">
<div class="flex items-center gap-3">
<div class="w-8 h-8 rounded-full bg-primary-fixed text-on-primary-fixed flex items-center justify-center font-bold text-xs">SM</div>
<div>
<p class="text-sm font-bold text-on-surface">Sarah Mitchell</p>
<p class="text-[11px] text-outline">Premium Member</p>
</div>
</div>
</td>
<td class="px-6 py-5">
<div class="flex items-center gap-3">
<img alt="Worker" class="w-8 h-8 rounded-full object-cover" data-alt="Close-up portrait of a professional male plumber with a friendly expression, wearing a navy work uniform." src="https://lh3.googleusercontent.com/aida-public/AB6AXuAOeucqD4PsQ967sFRDS8iQica7aldXzUFng3MC8zBAfU4w1UfpdZqcCoZd0tbdAWPNXlvSVwzOYz_XGkPc42irbuW5CNRKdw_ltfpGuIUq-BM5CfysWlVllecm1R9vuRGbjQ3DG9mnrFX6i_73PK6GKZGYsr5hacYf-mqgroip9AsRBr0AyLToDFk1WC1itSTJkwIpaqeOuqaJRXdn6wBm8O-B7dNStYCeNYcAFzs4ej1mqbYSxaTezf1ID4te-j1ifgJ7kfOtG7s"/>
<p class="text-sm font-medium text-on-surface">David Chen</p>
</div>
</td>
<td class="px-6 py-5">
<span class="text-sm font-medium text-on-surface-variant">Master Plumbing</span>
</td>
<td class="px-6 py-5">
<div>
<p class="text-sm font-semibold text-on-surface">Oct 24, 2023</p>
<p class="text-[11px] text-outline">10:30 AM</p>
</div>
</td>
<td class="px-6 py-5">
<span class="inline-flex items-center gap-1.5 px-3 py-1 rounded-full text-[11px] font-bold bg-primary-fixed text-on-primary-fixed">
<span class="w-1.5 h-1.5 rounded-full bg-primary"></span>
                                    Confirmed
                                </span>
</td>
<td class="px-6 py-5">
<p class="text-sm font-bold text-on-surface">$120.00</p>
</td>
<td class="px-6 py-5">
<button class="p-2 rounded-full text-outline hover:text-primary hover:bg-primary-fixed transition-all opacity-0 group-hover:opacity-100">
<span class="material-symbols-outlined text-[20px]" data-icon="more_vert">more_vert</span>
</button>
</td>
</tr>
<!-- Row 2 -->
<tr class="hover:bg-surface-container-low/30 transition-colors group">
<td class="px-6 py-5 font-bold text-primary text-sm tracking-tight">#LB-8820</td>
<td class="px-6 py-5">
<div class="flex items-center gap-3">
<div class="w-8 h-8 rounded-full bg-secondary-fixed text-on-secondary-fixed flex items-center justify-center font-bold text-xs">RJ</div>
<div>
<p class="text-sm font-bold text-on-surface">Robert Jordan</p>
<p class="text-[11px] text-outline">Standard</p>
</div>
</div>
</td>
<td class="px-6 py-5">
<div class="flex items-center gap-3">
<img alt="Worker" class="w-8 h-8 rounded-full object-cover" data-alt="Professional headshot of a female electrician wearing safety goggles and a tool vest, looking focused." src="https://lh3.googleusercontent.com/aida-public/AB6AXuC2XxG2FhGZNUeK_WaXxuvmLjRJ-_xovTIGTZDUZCYjBW9vklhgJuVKkm9GoRqWCuA_Vcm7buUNf7G7SLHCAHaLvOw8c6a5lYKxmzweYWeIxRgWu7bJ45Gqzuks9XWB_98yjuqOp0BIyGDu32nWhdGIjNRc2fAJuVwCaV1nO9xA3tZEPCJt47PQsYtQV5YxFqKoCnnGrKxjz0-S0v5rPINF-p4ZnJriPXs2FxqACQTbGr0CG_YSfFDKgdIISKgpBN15l3PxKM66W4E"/>
<p class="text-sm font-medium text-on-surface">Elena Rodriguez</p>
</div>
</td>
<td class="px-6 py-5">
<span class="text-sm font-medium text-on-surface-variant">Electrical Repair</span>
</td>
<td class="px-6 py-5">
<div>
<p class="text-sm font-semibold text-on-surface">Oct 24, 2023</p>
<p class="text-[11px] text-outline">02:15 PM</p>
</div>
</td>
<td class="px-6 py-5">
<span class="inline-flex items-center gap-1.5 px-3 py-1 rounded-full text-[11px] font-bold bg-surface-container-highest text-on-surface-variant">
<span class="w-1.5 h-1.5 rounded-full bg-outline"></span>
                                    Pending
                                </span>
</td>
<td class="px-6 py-5">
<p class="text-sm font-bold text-on-surface">$85.00</p>
</td>
<td class="px-6 py-5">
<button class="p-2 rounded-full text-outline hover:text-primary hover:bg-primary-fixed transition-all opacity-0 group-hover:opacity-100">
<span class="material-symbols-outlined text-[20px]" data-icon="more_vert">more_vert</span>
</button>
</td>
</tr>
<!-- Row 3 -->
<tr class="hover:bg-surface-container-low/30 transition-colors group">
<td class="px-6 py-5 font-bold text-primary text-sm tracking-tight">#LB-8819</td>
<td class="px-6 py-5">
<div class="flex items-center gap-3">
<div class="w-8 h-8 rounded-full bg-tertiary-fixed text-on-tertiary-fixed flex items-center justify-center font-bold text-xs">AW</div>
<div>
<p class="text-sm font-bold text-on-surface">Alice Wong</p>
<p class="text-[11px] text-outline">Premium Member</p>
</div>
</div>
</td>
<td class="px-6 py-5">
<div class="flex items-center gap-3">
<img alt="Worker" class="w-8 h-8 rounded-full object-cover" data-alt="Warm portrait of a landscape gardener with dirt on hands, holding a trowel in a sunny garden." src="https://lh3.googleusercontent.com/aida-public/AB6AXuB17VuDKKlQ8hwEF7WZWuidocqDCIFnRUXUvUt1n6f3giWS-w1CJkap6m1ML4iPAA1ni7rMlUc2zYXAJTHtLm8R4KzaoirGKmC3BVvxHRInAnhUEuULW-E8NY-7xkY_vEstSWuIrZHTznPyxhTHMzIU8oqHzQnMcYVis5kEiPN8b1aH0MChTchiQOqjLSOWUaQSSqJB3yZ5lenHWJ7K-Dfp7m26NMKUYTTWJBAg3U5H94t_uHWNCnT-RJTxKk6YqdI7YFEO1xf8CcY"/>
<p class="text-sm font-medium text-on-surface">Mark Thompson</p>
</div>
</td>
<td class="px-6 py-5">
<span class="text-sm font-medium text-on-surface-variant">Garden Landscaping</span>
</td>
<td class="px-6 py-5">
<div>
<p class="text-sm font-semibold text-on-surface">Oct 23, 2023</p>
<p class="text-[11px] text-outline">09:00 AM</p>
</div>
</td>
<td class="px-6 py-5">
<span class="inline-flex items-center gap-1.5 px-3 py-1 rounded-full text-[11px] font-bold bg-green-100 text-green-800">
<span class="w-1.5 h-1.5 rounded-full bg-green-600"></span>
                                    Completed
                                </span>
</td>
<td class="px-6 py-5">
<p class="text-sm font-bold text-on-surface">$340.50</p>
</td>
<td class="px-6 py-5">
<button class="p-2 rounded-full text-outline hover:text-primary hover:bg-primary-fixed transition-all opacity-0 group-hover:opacity-100">
<span class="material-symbols-outlined text-[20px]" data-icon="more_vert">more_vert</span>
</button>
</td>
</tr>
<!-- Row 4 -->
<tr class="hover:bg-surface-container-low/30 transition-colors group">
<td class="px-6 py-5 font-bold text-primary text-sm tracking-tight">#LB-8818</td>
<td class="px-6 py-5">
<div class="flex items-center gap-3">
<div class="w-8 h-8 rounded-full bg-slate-200 text-slate-700 flex items-center justify-center font-bold text-xs">KB</div>
<div>
<p class="text-sm font-bold text-on-surface">Kevin Baker</p>
<p class="text-[11px] text-outline">Standard</p>
</div>
</div>
</td>
<td class="px-6 py-5">
<div class="flex items-center gap-3">
<img alt="Worker" class="w-8 h-8 rounded-full object-cover" data-alt="Professional painter in white overalls holding a brush, smiling slightly, standing in a brightly lit room." src="https://lh3.googleusercontent.com/aida-public/AB6AXuCSGfI_uCyJuNlwFMqETOyv5tXmnC-_7SC0p8x15F28uKalfEK9I_3FaYUg2nhOK3vC71ODASuvQ4mtmCW0L_8kYjb-QaSd-1GW6eNFsfMsYitgS_lQWtdYNQP4aCWFxXbS71LVwwdi2bh1K3PzynzJOlg7FdX79dcXp939EH4Ata_ciLBpFOG6ZOH1vizV-JTNWVV7fVMsBu4RD6sBXWDg3nkxXJcDV4JGifo05IOwLjdt_CW7LwbQZI2IXgrekcs7G4w-hwmlFWU"/>
<p class="text-sm font-medium text-on-surface">James Wilson</p>
</div>
</td>
<td class="px-6 py-5">
<span class="text-sm font-medium text-on-surface-variant">Interior Painting</span>
</td>
<td class="px-6 py-5">
<div>
<p class="text-sm font-semibold text-on-surface">Oct 23, 2023</p>
<p class="text-[11px] text-outline">11:30 AM</p>
</div>
</td>
<td class="px-6 py-5">
<span class="inline-flex items-center gap-1.5 px-3 py-1 rounded-full text-[11px] font-bold bg-error-container text-on-error-container">
<span class="w-1.5 h-1.5 rounded-full bg-error"></span>
                                    Cancelled
                                </span>
</td>
<td class="px-6 py-5">
<p class="text-sm font-bold text-on-surface">$210.00</p>
</td>
<td class="px-6 py-5">
<button class="p-2 rounded-full text-outline hover:text-primary hover:bg-primary-fixed transition-all opacity-0 group-hover:opacity-100">
<span class="material-symbols-outlined text-[20px]" data-icon="more_vert">more_vert</span>
</button>
</td>
</tr>
</tbody>
</table>
</div>
<!-- Pagination -->
<div class="px-6 py-5 flex items-center justify-between border-t border-surface-container-low">
<p class="text-sm text-outline font-medium">Showing <span class="text-on-surface font-bold">1-4</span> of <span class="text-on-surface font-bold">1,248</span> results</p>
<div class="flex items-center gap-2">
<button class="w-10 h-10 flex items-center justify-center rounded-lg bg-surface-container-low text-outline hover:text-primary transition-all">
<span class="material-symbols-outlined" data-icon="chevron_left">chevron_left</span>
</button>
<button class="w-10 h-10 flex items-center justify-center rounded-lg bg-primary text-on-primary font-bold shadow-md shadow-primary/20">1</button>
<button class="w-10 h-10 flex items-center justify-center rounded-lg bg-surface-container-lowest text-outline hover:bg-surface-container-low transition-all font-medium">2</button>
<button class="w-10 h-10 flex items-center justify-center rounded-lg bg-surface-container-lowest text-outline hover:bg-surface-container-low transition-all font-medium">3</button>
<button class="w-10 h-10 flex items-center justify-center rounded-lg bg-surface-container-low text-outline hover:text-primary transition-all">
<span class="material-symbols-outlined" data-icon="chevron_right">chevron_right</span>
</button>
</div>
</div>
</div>
<!-- Summary Stats Bento Section -->
<div class="mt-12 grid grid-cols-1 md:grid-cols-3 gap-6">
<div class="bg-primary-container p-6 rounded-xl relative overflow-hidden group">
<div class="relative z-10">
<p class="text-on-primary-container/80 text-xs font-bold uppercase tracking-widest mb-1">Total Revenue Today</p>
<h3 class="text-3xl font-extrabold text-on-primary-container mb-4">$4,820.50</h3>
<div class="flex items-center gap-2 text-on-primary-container text-xs font-semibold">
<span class="material-symbols-outlined text-[18px]" data-icon="trending_up">trending_up</span>
<span>12% from yesterday</span>
</div>
</div>
<span class="material-symbols-outlined absolute -right-4 -bottom-4 text-white/10 text-9xl rotate-12 transition-transform group-hover:scale-110" data-icon="payments">payments</span>
</div>
<div class="bg-surface-container-lowest p-6 rounded-xl shadow-[0_4px_20px_-1px_rgba(0,0,0,0.02)] flex flex-col justify-between border-none">
<div>
<p class="text-outline text-xs font-bold uppercase tracking-widest mb-1">Active Requests</p>
<h3 class="text-3xl font-extrabold text-on-surface mb-2">48</h3>
</div>
<div class="flex -space-x-3 overflow-hidden">
<img alt="" class="inline-block h-8 w-8 rounded-full ring-2 ring-white" data-alt="Headshot of a smiling customer." src="https://lh3.googleusercontent.com/aida-public/AB6AXuDWVtGTwiD9RONuuQlJAeSkB5nKkyTfY8ID_rpqRNSoeJll8MWNyyQUystfc_PISNO5-UvvR0GdKMeTYGLeTk44UB6JeaulK5pNVPkxtcjYjoii2DghLCJFZ00bt3T53fDvHouammr4EcVM_12qc5NJXPi5_ToWoBR93Ur4gorXWYTCklkZRBQ8rzjGq_XkDOAXDjKkTtYPuREkD6djvQgcrQKe239TYDf3H4ydkpwdgA6KPnjoikoHSwUVDa3VLQSHeEthnAzvoog"/>
<img alt="" class="inline-block h-8 w-8 rounded-full ring-2 ring-white" data-alt="Headshot of a smiling customer." src="https://lh3.googleusercontent.com/aida-public/AB6AXuASUCNwA7m7KHaAH7bmZN1KZgf-3j_kxdyADCQExIiKlnDykamZW8dDR4FkHzFVTi5HXsF_e44iybSTjsFESKJPzLLLHcgPbQiBh5FfJcxr2EXsEmZw3q2n4dEAzYGk7BM2IjRDWWoSLdzqtLtwft1Dtn6mj2_7K3BOR2CEjl9GG_pUYFoUaznCWqSfIpKIUm-DuapJFMc4D0V3LCgr9vmKqn-datKySr93kRjt4M2kqdHVTS34S3umQbCdghAsiLcxjsWExL6Dezg"/>
<img alt="" class="inline-block h-8 w-8 rounded-full ring-2 ring-white" data-alt="Headshot of a professional worker." src="https://lh3.googleusercontent.com/aida-public/AB6AXuCANSxQsdwZZo1FdWMEusL0GaQinlRXNoMe67GNMpmHdUVLzGazBO7zMFavSje3iEbWj6V8RzIBTFmOl2M-TvfIq7rX2LO3m3GbIbhKiM9Vmpmk6pnH6XHUMVZiZNbXH7Nf7yFfoQMUbYiX9bi0I85ennFpmgr13Kgn5gz3KrVQ3Md7UomkSF-JDsKUqEnMzS0ZBAsh5DaU4Agkw93tHg03CO5geTI7dao0wUNJ57CD3Mcpmpz5BGHWNkQue7ZML7LT2yyaJTsYqMU"/>
<div class="inline-block h-8 w-8 rounded-full bg-surface-container-high flex items-center justify-center text-[10px] font-bold text-on-surface ring-2 ring-white">+45</div>
</div>
</div>
<div class="bg-surface-container-low p-6 rounded-xl border-none">
<p class="text-outline text-xs font-bold uppercase tracking-widest mb-4">Completion Rate</p>
<div class="flex items-end gap-4">
<div class="flex-1 bg-surface-container-highest h-3 rounded-full overflow-hidden">
<div class="bg-primary h-full w-[94%]" style="width: 94%;"></div>
</div>
<span class="text-2xl font-extrabold text-on-surface">94%</span>
</div>
<p class="text-[11px] text-outline mt-3 font-medium">Excellent platform health score this month.</p>
</div>
</div>
</main>
</body></html>