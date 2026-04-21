<!DOCTYPE html>

<html class="light" lang="en"><head>
<meta charset="utf-8"/>
<meta content="width=device-width, initial-scale=1.0" name="viewport"/>
<title>Contact Us | Labour Hub</title>
<!-- Tailwind CSS -->
<script src="https://cdn.tailwindcss.com?plugins=forms,container-queries"></script>
<link href="https://fonts.googleapis.com/css2?family=Manrope:wght@400;500;700;800&amp;family=Inter:wght@400;500;600&amp;display=swap" rel="stylesheet"/>
<link href="https://fonts.googleapis.com/css2?family=Material+Symbols+Outlined:wght,FILL@100..700,0..1&amp;display=swap" rel="stylesheet"/>
<link href="https://fonts.googleapis.com/css2?family=Material+Symbols+Outlined:wght,FILL@100..700,0..1&amp;display=swap" rel="stylesheet"/>
<!-- Design System Configuration -->
<script id="tailwind-config">
      tailwind.config = {
        darkMode: "class",
        theme: {
          extend: {
            colors: {
              "surface-dim": "#d9dadb",
              "secondary": "#4c5e84",
              "on-background": "#191c1d",
              "primary-fixed": "#d7e2ff",
              "secondary-container": "#bfd2fd",
              "on-tertiary-container": "#ffc2a7",
              "tertiary": "#722b00",
              "surface-container-high": "#e7e8e9",
              "primary-fixed-dim": "#acc7ff",
              "on-secondary-fixed-variant": "#34476a",
              "surface-container-low": "#f3f4f5",
              "on-primary": "#ffffff",
              "surface-container-lowest": "#ffffff",
              "secondary-fixed": "#d7e2ff",
              "background": "#f8f9fa",
              "on-tertiary": "#ffffff",
              "tertiary-container": "#983c00",
              "on-secondary": "#ffffff",
              "outline-variant": "#c2c6d4",
              "on-error-container": "#93000a",
              "inverse-surface": "#2e3132",
              "outline": "#727784",
              "primary-container": "#0056b3",
              "surface-tint": "#115cb9",
              "on-primary-fixed-variant": "#004491",
              "inverse-primary": "#acc7ff",
              "error": "#ba1a1a",
              "on-error": "#ffffff",
              "surface-container": "#edeeef",
              "on-tertiary-fixed": "#351000",
              "surface-variant": "#e1e3e4",
              "on-primary-fixed": "#001a40",
              "on-secondary-fixed": "#041b3c",
              "tertiary-fixed": "#ffdbcc",
              "on-surface-variant": "#424752",
              "secondary-fixed-dim": "#b3c7f1",
              "on-primary-container": "#bbd0ff",
              "tertiary-fixed-dim": "#ffb694",
              "error-container": "#ffdad6",
              "on-secondary-container": "#475a7f",
              "inverse-on-surface": "#f0f1f2",
              "surface-container-highest": "#e1e3e4",
              "surface": "#f8f9fa",
              "surface-bright": "#f8f9fa",
              "on-surface": "#191c1d",
              "primary": "#003f87",
              "on-tertiary-fixed-variant": "#7b2f00"
            },
            fontFamily: {
              "headline": ["Manrope"],
              "body": ["Inter"],
              "label": ["Inter"]
            },
            borderRadius: {"DEFAULT": "0.25rem", "lg": "0.5rem", "xl": "0.75rem", "full": "9999px"},
          },
        },
      }
    </script>
<style>
        .material-symbols-outlined {
            font-variation-settings: 'FILL' 0, 'wght' 400, 'GRAD' 0, 'opsz' 24;
            vertical-align: middle;
        }
        .glass-panel {
            background: rgba(255, 255, 255, 0.8);
            backdrop-filter: blur(20px);
        }
    </style>
</head>
<body class="bg-surface font-body text-on-surface">
<!-- TopNavBar -->
<nav class="fixed top-0 w-full z-50 bg-white/80 dark:bg-slate-900/80 backdrop-blur-md shadow-sm dark:shadow-none flex justify-between items-center px-8 h-16 max-w-full mx-auto">
<div class="text-2xl font-black tracking-tighter text-blue-900 dark:text-blue-500 font-headline">
            Labour Hub
        </div>
<div class="hidden md:flex items-center gap-8 font-manrope text-sm font-medium tracking-wide">
<a class="text-slate-600 dark:text-slate-400 hover:text-blue-800 transition-colors" href="#">Services</a>
<a class="text-blue-700 dark:text-blue-400 font-bold border-b-2 border-blue-700" href="contact">Contact</a>
<a class="text-slate-600 dark:text-slate-400 hover:text-blue-800 transition-colors" href="#">Terms</a>
</div>
<div class="flex items-center gap-4">
<a class="text-slate-600 hover:text-blue-800 font-medium px-4 py-2 transition-all" href="login">Login</a>
<a class="bg-white border border-primary text-primary hover:bg-primary/5 px-4 py-2 rounded font-bold transition-all text-sm" href="/user_registration">Join as User</a>
<a class="bg-primary hover:opacity-90 text-on-primary px-4 py-2 rounded font-bold transition-all text-sm" href="worker_registration">Join as Professional</a></div>
</div>
</nav>
<!-- Hero Section with Editorial Asymmetry -->
<header class="relative pt-32 pb-20 px-8 overflow-hidden bg-surface-container-low">
<div class="max-w-7xl mx-auto flex flex-col md:flex-row items-center gap-12">
<div class="md:w-3/5 space-y-6">
<span class="inline-block px-4 py-1 bg-primary-fixed text-on-primary-fixed-variant rounded-full text-xs font-semibold tracking-wider uppercase">Contact Support</span>
<h1 class="font-headline text-5xl md:text-7xl font-extrabold text-on-surface leading-tight tracking-tighter">
                    We're here to help you <span class="text-primary">build trust</span>.
                </h1>
<p class="text-on-surface-variant text-lg max-w-xl leading-relaxed">
                    Have questions about finding an artisan or listing your professional services? Our dedicated support team is ready to guide your journey.
                </p>
</div>
<div class="md:w-2/5 relative">
<div class="aspect-square rounded-xl overflow-hidden shadow-2xl rotate-3 bg-surface-container-highest">
<img class="w-full h-full object-cover" data-alt="Modern collaborative workspace with diverse professionals smiling and working together in a bright airy office environment" src="https://lh3.googleusercontent.com/aida-public/AB6AXuBV_n0jxmr2_t-10bLRG9wQ_UE9MZcuvnlTK1g2j26Yz81zMH-KOnnYiinUhxevDdYzCCBlBO7PsyDWjxOt5bpAUCUCR-mFip4bcb9blNcynSfXFg4tfLh0YEZ20Gpie5yX8hs389oULTFDiTneEqan1p1JSoq2hKJRJ1oQVfPTtdws5kvfHxSoYyfZ1LSpgFH1wdXkGDKWNKoz_V-tF14Jre1C4Nb5pr7ujndv8KKuhYKWuTxd-2L0AlVBeXgE1gjvWeTJHCXiNwk"/>
</div>
<div class="absolute -bottom-6 -left-6 bg-white p-6 rounded-lg shadow-xl hidden md:block border border-outline-variant/15">
<div class="flex items-center gap-4">
<div class="w-12 h-12 rounded-full bg-secondary-container flex items-center justify-center">
<span class="material-symbols-outlined text-on-secondary-container">headset_mic</span>
</div>
<div>
<p class="font-headline font-bold text-on-surface">Live Support</p>
<p class="text-sm text-on-surface-variant">Available 08:00 - 18:00</p>
</div>
</div>
</div>
</div>
</div>
</header>
<main class="max-w-7xl mx-auto px-8 py-20">
<div class="grid grid-cols-1 lg:grid-cols-12 gap-16">
<!-- Contact Info Panel (4 columns) -->
<div class="lg:col-span-5 space-y-12">
<section>
<h2 class="font-headline text-2xl font-bold mb-8 text-primary">Office Headquarters</h2>
<div class="space-y-8">
<div class="flex items-start gap-4">
<div class="mt-1 w-10 h-10 flex-shrink-0 bg-surface-container-high rounded-lg flex items-center justify-center">
<span class="material-symbols-outlined text-primary">location_on</span>
</div>
<div>
<p class="font-headline font-bold text-lg mb-1">Corporate Address</p>
<p class="text-on-surface-variant leading-relaxed">
                                    88 Artisan Avenue, Suite 400<br/>
                                    Design District, Cape Town<br/>
                                    South Africa, 8001
                                </p>
</div>
</div>
<div class="flex items-start gap-4">
<div class="mt-1 w-10 h-10 flex-shrink-0 bg-surface-container-high rounded-lg flex items-center justify-center">
<span class="material-symbols-outlined text-primary">call</span>
</div>
<div>
<p class="font-headline font-bold text-lg mb-1">Direct Line</p>
<p class="text-on-surface-variant leading-relaxed">
                                    +27 (0) 21 555 0192<br/>
                                    Mon - Fri, 8am - 6pm
                                </p>
</div>
</div>
<div class="flex items-start gap-4">
<div class="mt-1 w-10 h-10 flex-shrink-0 bg-surface-container-high rounded-lg flex items-center justify-center">
<span class="material-symbols-outlined text-primary">mail</span>
</div>
<div>
<p class="font-headline font-bold text-lg mb-1">Email Inquiries</p>
<p class="text-on-surface-variant leading-relaxed">
                                    support@labourhub.digital<br/>
                                    partners@labourhub.digital
                                </p>
</div>
</div>
</div>
</section>
<section class="p-8 bg-surface-container-high rounded-xl">
<h3 class="font-headline font-bold mb-4">Are you a Professional?</h3>
<p class="text-sm text-on-surface-variant mb-6">Join our verified network of artisans and start growing your local business today.</p>
<button class="w-full py-3 bg-white text-primary border border-primary/20 rounded-lg font-bold hover:bg-primary-fixed transition-colors">Apply as an Artisan</button>
</section>
<!-- Map Integration (Asymmetric) -->
<div class="w-full aspect-video rounded-xl overflow-hidden shadow-inner border border-outline-variant/10">
<img class="w-full h-full object-cover" data-alt="A clean, minimalist map showing a modern urban street layout with subtle blue and grey aesthetic" data-location="Cape Town" src="https://lh3.googleusercontent.com/aida-public/AB6AXuAUjkx6t_NWDtHgJ1CLtSvwsW-8PINVmk4wbm1wGWt7N1jG2nkm3i88tCq_6yXW1Xacd-ZgqyoKPuwrfIbskcXhFv6LneuKN1kMePVy3hXwkcJ3okfyQGPuwXVs7RC1jqq0iqV6ErI3E8hVDvsQz_i9lll8q-6iTPdEGV_TlI5gK4TC_2_sdFNotOCgzi4fOksVYERNOGUl8XinUad_2jv2Nf5giOiSebWBhJlUJGAgfIwP6XJ_-8cGFqjBjJcfhBDEy8yiCDcBpmc"/>
</div>
</div>
<!-- Inquiry Form (7 columns) -->
<div class="lg:col-span-7 bg-surface-container-lowest p-8 md:p-12 rounded-xl shadow-sm border border-outline-variant/10">
<form action="#" class="space-y-8" method="POST">
<div class="space-y-2">
<h2 class="font-headline text-3xl font-bold tracking-tight">Send an Inquiry</h2>
<p class="text-on-surface-variant">Fill out the form below and our team will get back to you within 24 business hours.</p>
</div>
<div class="grid grid-cols-1 md:grid-cols-2 gap-6">
<div class="space-y-2">
<label class="block text-sm font-semibold text-on-surface-variant font-label">Full Name</label>
<input class="w-full p-4 bg-surface-container-low border-none rounded-lg focus:ring-2 focus:ring-primary/20 focus:bg-white transition-all outline-none" placeholder="John Doe" type="text"/>
</div>
<div class="space-y-2">
<label class="block text-sm font-semibold text-on-surface-variant font-label">Email Address</label>
<input class="w-full p-4 bg-surface-container-low border-none rounded-lg focus:ring-2 focus:ring-primary/20 focus:bg-white transition-all outline-none" placeholder="john@example.com" type="email"/>
</div>
</div>
<div class="space-y-2">
<label class="block text-sm font-semibold text-on-surface-variant font-label">Inquiry Type</label>
<select class="w-full p-4 bg-surface-container-low border-none rounded-lg focus:ring-2 focus:ring-primary/20 focus:bg-white transition-all outline-none appearance-none">
<option>Booking Assistance</option>
<option>Account Support</option>
<option>Artisan Verification</option>
<option>Billing &amp; Payments</option>
<option>Partnership Inquiry</option>
</select>
</div>
<div class="space-y-2">
<label class="block text-sm font-semibold text-on-surface-variant font-label">Message</label>
<textarea class="w-full p-4 bg-surface-container-low border-none rounded-lg focus:ring-2 focus:ring-primary/20 focus:bg-white transition-all outline-none resize-none" placeholder="How can we help you?" rows="6"></textarea>
</div>
<div class="flex items-center gap-4 p-4 bg-secondary-container/20 rounded-lg">
<span class="material-symbols-outlined text-primary" data-weight="fill">verified_user</span>
<p class="text-xs text-on-secondary-container font-medium">Your data is encrypted and protected under our strict Privacy Policy.</p>
</div>
<button class="w-full py-5 bg-gradient-to-r from-primary to-primary-container text-white font-bold text-lg rounded-lg shadow-lg hover:shadow-xl hover:-translate-y-0.5 transition-all active:scale-95" type="submit">
                        Send Message
                    </button>
</form>
</div>
</div>
</main>
<!-- Support FAQ Tonal Section -->
<section class="bg-surface-container-low py-20 px-8">
<div class="max-w-4xl mx-auto text-center space-y-12">
<h2 class="font-headline text-3xl font-bold">Frequently Asked Questions</h2>
<div class="grid grid-cols-1 md:grid-cols-2 gap-8 text-left">
<div class="space-y-3">
<h4 class="font-bold text-on-surface">How do I verify an artisan?</h4>
<p class="text-sm text-on-surface-variant leading-relaxed">Look for the "Verified" badge on worker profiles, indicating we've checked their credentials and references.</p>
</div>
<div class="space-y-3">
<h4 class="font-bold text-on-surface">What if I'm not satisfied?</h4>
<p class="text-sm text-on-surface-variant leading-relaxed">Our Trust Guarantee ensures that we mediate any disputes and work towards a fair resolution for both parties.</p>
</div>
<div class="space-y-3">
<h4 class="font-bold text-on-surface">Can I change my booking?</h4>
<p class="text-sm text-on-surface-variant leading-relaxed">Yes, bookings can be rescheduled up to 24 hours before the service date via your dashboard.</p>
</div>
<div class="space-y-3">
<h4 class="font-bold text-on-surface">Are there booking fees?</h4>
<p class="text-sm text-on-surface-variant leading-relaxed">We charge a transparent platform fee that covers our support and insurance infrastructure.</p>
</div>
</div>
</div>
</section>
<!-- Footer -->
<footer class="bg-white dark:bg-slate-900 w-full border-t-0 mt-20">
<div class="grid grid-cols-1 md:grid-cols-4 gap-8 px-12 py-16 w-full">
<div class="space-y-4">
<div class="font-manrope font-bold text-blue-900 text-xl">Labour Hub</div>
<p class="font-inter text-xs uppercase tracking-widest text-slate-500 leading-relaxed">
                    Connecting premium talent with exceptional homes.
                </p>
</div>
<div class="space-y-4">
<h4 class="font-inter text-xs uppercase tracking-widest text-blue-900 font-bold">Marketplace</h4>
<ul class="space-y-2 font-inter text-xs uppercase tracking-widest">
<li><a class="text-slate-500 hover:text-blue-600 transition-opacity" href="#">Services</a></li>
<li><a class="text-slate-500 hover:text-blue-600 transition-opacity" href="#">Contact</a></li>
<li><a class="text-slate-500 hover:text-blue-600 transition-opacity" href="#">Safety</a></li>
</ul>
</div>
<div class="space-y-4">
<h4 class="font-inter text-xs uppercase tracking-widest text-blue-900 font-bold">Legal</h4>
<ul class="space-y-2 font-inter text-xs uppercase tracking-widest">
<li><a class="text-slate-500 hover:text-blue-600 transition-opacity" href="#">Terms</a></li>
<li><a class="text-slate-500 hover:text-blue-600 transition-opacity" href="#">Privacy</a></li>
</ul>
</div>
<div class="space-y-4">
<h4 class="font-inter text-xs uppercase tracking-widest text-blue-900 font-bold">Connect</h4>
<div class="flex gap-4">
<span class="material-symbols-outlined text-slate-400 cursor-pointer hover:text-blue-600">public</span>
<span class="material-symbols-outlined text-slate-400 cursor-pointer hover:text-blue-600">share</span>
<span class="material-symbols-outlined text-slate-400 cursor-pointer hover:text-blue-600">mail</span>
</div>
</div>
</div>
<div class="px-12 py-6 border-t border-slate-100 dark:border-slate-800 text-center md:text-left">
<p class="font-inter text-xs uppercase tracking-widest text-slate-400">© 2024 Digital Labour Hub. The Editorial Concierge.</p>
</div>
</footer>
<!-- CSS and JS links as requested -->
<link href="/css/style.css" rel="stylesheet"/>
<script src="/js/script.js"></script>
</body></html>