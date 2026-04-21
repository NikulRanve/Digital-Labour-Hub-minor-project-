<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<!DOCTYPE html>

<html class="light" lang="en">
<head>
<meta charset="utf-8" />
<meta content="width=device-width, initial-scale=1.0" name="viewport" />
<title>Labour Hub | The Editorial Concierge for Home Services</title>
<!-- Fonts & Icons -->
<link
	href="https://fonts.googleapis.com/css2?family=Inter:wght@300;400;500;600;700&amp;family=Manrope:wght@400;500;600;700;800&amp;display=swap"
	rel="stylesheet" />
<link
	href="https://fonts.googleapis.com/css2?family=Material+Symbols+Outlined:wght,FILL@100..700,0..1&amp;display=swap"
	rel="stylesheet" />
<!-- Scripts -->
<script
	src="https://cdn.tailwindcss.com?plugins=forms,container-queries"></script>
<script id="tailwind-config">
	tailwind.config = {
		darkMode : "class",
		theme : {
			extend : {
				colors : {
					"surface-dim" : "#d9dadb",
					"secondary" : "#4c5e84",
					"on-background" : "#191c1d",
					"primary-fixed" : "#d7e2ff",
					"secondary-container" : "#bfd2fd",
					"on-tertiary-container" : "#ffc2a7",
					"tertiary" : "#722b00",
					"surface-container-high" : "#e7e8e9",
					"primary-fixed-dim" : "#acc7ff",
					"on-secondary-fixed-variant" : "#34476a",
					"surface-container-low" : "#f3f4f5",
					"on-primary" : "#ffffff",
					"surface-container-lowest" : "#ffffff",
					"secondary-fixed" : "#d7e2ff",
					"background" : "#f8f9fa",
					"on-tertiary" : "#ffffff",
					"tertiary-container" : "#983c00",
					"on-secondary" : "#ffffff",
					"outline-variant" : "#c2c6d4",
					"on-error-container" : "#93000a",
					"inverse-surface" : "#2e3132",
					"outline" : "#727784",
					"primary-container" : "#0056b3",
					"surface-tint" : "#115cb9",
					"on-primary-fixed-variant" : "#004491",
					"inverse-primary" : "#acc7ff",
					"error" : "#ba1a1a",
					"on-error" : "#ffffff",
					"surface-container" : "#edeeef",
					"on-tertiary-fixed" : "#351000",
					"surface-variant" : "#e1e3e4",
					"on-primary-fixed" : "#001a40",
					"on-secondary-fixed" : "#041b3c",
					"tertiary-fixed" : "#ffdbcc",
					"on-surface-variant" : "#424752",
					"secondary-fixed-dim" : "#b3c7f1",
					"on-primary-container" : "#bbd0ff",
					"tertiary-fixed-dim" : "#ffb694",
					"error-container" : "#ffdad6",
					"on-secondary-container" : "#475a7f",
					"inverse-on-surface" : "#f0f1f2",
					"surface-container-highest" : "#e1e3e4",
					"surface" : "#f8f9fa",
					"surface-bright" : "#f8f9fa",
					"on-surface" : "#191c1d",
					"primary" : "#003f87",
					"on-tertiary-fixed-variant" : "#7b2f00"
				},
				fontFamily : {
					"headline" : [ "Manrope", "sans-serif" ],
					"body" : [ "Inter", "sans-serif" ],
					"label" : [ "Inter", "sans-serif" ]
				},
				borderRadius : {
					"DEFAULT" : "0.25rem",
					"lg" : "0.5rem",
					"xl" : "0.75rem",
					"full" : "9999px"
				},
			},
		},
	}
</script>
<style>
.material-symbols-outlined {
	font-variation-settings: 'FILL' 0, 'wght' 400, 'GRAD' 0, 'opsz' 24;
}

.hero-gradient {
	background: linear-gradient(135deg, #003f87 0%, #0056b3 100%);
}

.glass-nav {
	background: rgba(255, 255, 255, 0.8);
	backdrop-filter: blur(20px);
}
</style>
</head>
<body class="bg-surface font-body text-on-surface">
	<!-- Top Navigation Shell -->
	<header class="fixed top-0 w-full z-50 glass-nav shadow-sm">
		<div
			class="flex justify-between items-center px-8 h-16 max-w-full mx-auto">
			<div class="text-2xl font-black tracking-tighter text-blue-900">Digital
				Labour Hub</div>
			<nav class="hidden md:flex items-center gap-8">
				<a
					class="text-blue-700 font-bold border-b-2 border-blue-700 font-manrope text-sm tracking-wide"
					href="#">Services</a> <a
					class="text-slate-600 hover:text-blue-800 transition-colors font-manrope text-sm tracking-wide"
					href="contact">Contact</a> <a
					class="text-slate-600 hover:text-blue-800 transition-colors font-manrope text-sm tracking-wide"
					href="#">Terms</a>
			</nav>
			<div class="flex items-center gap-4">
				<a
					class="text-slate-600 hover:text-blue-800 font-medium px-4 py-2 transition-all"
					href="login">Login</a> <a
					class="bg-white border border-primary text-primary hover:bg-primary/5 px-4 py-2 rounded font-bold transition-all text-sm"
					href="/user_registration">Join as User</a> <a
					class="bg-primary hover:opacity-90 text-on-primary px-4 py-2 rounded font-bold transition-all text-sm"
					href="worker_registration">Join as Professional</a>
			</div>
		</div>
		</div>
	</header>
	<main class="pt-16">
		<!-- Hero Section: Text-Focused -->
		<section
			class="relative py-32 flex items-center bg-surface-container-low overflow-hidden">
			<div
				class="container mx-auto px-8 relative z-10 flex flex-col items-center text-center">
				<!-- Decorative Elements -->
				<div
					class="absolute -top-32 -left-32 w-96 h-96 bg-primary-fixed rounded-full blur-[100px] opacity-20"></div>
				<div
					class="absolute -bottom-32 -right-32 w-96 h-96 bg-secondary-container rounded-full blur-[100px] opacity-20"></div>
				<div class="max-w-4xl mx-auto">
					<h1
						class="font-headline text-5xl md:text-8xl font-extrabold text-on-surface leading-tight mb-8">
						Crafting <span class="text-primary">Reliability</span> <br /> in
						Every Task.
					</h1>
					<p
						class="text-xl text-on-surface-variant max-w-2xl mx-auto mb-12 leading-relaxed">
						Curated home services for those who value precision. From master
						plumbers to elite cleaning crews, we connect you with verified
						excellence.</p>


				<!-- Premium Search Bar Centered -->
				<div
					class="flex flex-col md:flex-row bg-surface-container-lowest p-2 rounded-2xl shadow-2xl max-w-3xl mx-auto border border-outline-variant/10 w-full">
					<div
						class="flex-1 flex items-center px-6 py-4 gap-3 md:border-r border-outline-variant/20">
						<span class="material-symbols-outlined text-outline">search</span>
						<input
							class="w-full bg-transparent border-none focus:ring-0 text-on-surface font-semibold text-lg"
							placeholder="What service do you need?" type="text" />
					</div>
					<div class="flex-1 flex items-center px-6 py-4 gap-3">
						<span class="material-symbols-outlined text-outline">location_on</span>
						<input
							class="w-full bg-transparent border-none focus:ring-0 text-on-surface font-semibold text-lg"
							placeholder="Your Location" type="text" />
					</div>
					<button
						class="bg-primary text-on-primary px-10 py-5 rounded-xl font-black text-lg hover:scale-[1.02] active:scale-95 transition-all shadow-lg shadow-primary/20">
						Find Artisan</button>
				</div>
				
				<div
					class="mt-12 flex flex-col md:flex-row gap-6 items-center justify-center">
					<div class="flex -space-x-3">
						<img
							class="w-12 h-12 rounded-full border-4 border-white object-cover"
							data-alt="professional male worker portrait with friendly expression soft studio lighting"
							src="https://lh3.googleusercontent.com/aida-public/AB6AXuASEB2vBs4_GqzGpAaNRxV7bWxQvMw2q0en5iKT5YZ4e6bcsFF6JDZ2m3nqP8Okjuao8lmUznoFzxnQorKOqrG1quvj3LAWhbFeWolrQUa_1LfxkNXEumG-FSgacqxMEv35ONlrLcee661eLjalKMvt996WDU1czl2JcfRBTXqf8qIyF9_yfp3uMqMkEgSgdPRWO2rKTyg1hSXPLlMIaQfoAcp78_fZD3MRdTgpOw_A6SavF8PO_ZBpJkn0s6g1jdfxSmKTv6HwGOI" />
						<img
							class="w-12 h-12 rounded-full border-4 border-white object-cover"
							data-alt="smiling professional woman with organized background warm natural lighting"
							src="https://lh3.googleusercontent.com/aida-public/AB6AXuADzphjlnTYBUx3Ki38a_HLoqP6JvvIFojJtiu_p1XEqBp4PD5n8Luw0UP9fABY_uFlcEHTE4LLrBFS1riAHFJFLo9BP9ysOo1Md8S4lDkrpao-YRKNczeH6S76IBnaa-ztqMyycrc-8NiclROuM-A20PJeNdWN6B8VfzPABjc9n1KAaoN-A0lCGkjxcEEtVLr69xixkiicAqATtinQWP0myeuzilv6apw3zXRE-cwhMe_A6b4LiEF47f64C_mBCr08lgiclHvItiE" />
						<img
							class="w-12 h-12 rounded-full border-4 border-white object-cover"
							data-alt="confident expert artisan portrait sharp focus depth of field"
							src="https://lh3.googleusercontent.com/aida-public/AB6AXuD9h_dT8CzsiJNr8czmdwdkVZykUw7KG8VWmEBV9kpRYz7wOUuOvXF6aO3ChW4anJsNAozm5eR8s1q3VgcTSBlUhhp1zm4c4LzvyKNlhz4vmgd3pFbLSpWrkuO_xrrseZxyOBYMT5ilivc2nanddSDphVpQA0ucbfjmeuA58neVQYLNFgJRfx5SmsJeK1WuheIHqTrTM63b20BU2gDpkxIgnw6uf6xpzgAkYL-AbP2Ae5FYgFnyU6EA_-VPNAU0yhK7KTOhZ6z0Nrs" />
					</div>
					<div class="flex flex-col items-center md:items-start">
						<p class="text-base font-bold text-on-surface">
							<span class="text-primary">2,500+</span> Verified Experts
							Available
						</p>
						<div class="flex items-center gap-1">
							<span class="material-symbols-outlined text-sm text-tertiary"
								style="font-variation-settings: 'FILL' 1;">star</span> <span
								class="text-sm font-medium text-on-surface-variant">4.9/5.0
								Quality Rating</span>
						</div>
					</div>
				</div>
			</div>
			</div>
		</section>
		<!-- Categories Bento Grid -->
		<section class="py-24 px-8 bg-surface">
			<div class="container mx-auto">
				<div class="flex justify-between items-end mb-16">
					<div>
						<h2 class="font-headline text-4xl font-bold mb-4">Explore
							Specialized Services</h2>
						<p class="text-on-surface-variant">Precision workmanship for
							every corner of your home.</p>
					</div>
					<button
						class="text-primary font-bold flex items-center gap-2 group">
						View All Categories <span
							class="material-symbols-outlined group-hover:translate-x-1 transition-transform">arrow_forward</span>
					</button>
				</div>
				<div class="grid grid-cols-2 md:grid-cols-4 gap-6">
					<div
						class="bg-surface-container-lowest p-8 rounded-xl shadow-sm border border-transparent hover:border-primary/20 hover:shadow-md transition-all group cursor-pointer text-center md:text-left">
						<span
							class="material-symbols-outlined text-4xl text-primary mb-6 block group-hover:scale-110 transition-transform">cleaning_services</span>
						<h3 class="font-bold text-lg mb-2">Cleaning</h3>
						<p class="text-sm text-outline">Deep sanitization &amp;
							routine care.</p>
					</div>
					<div
						class="bg-surface-container-lowest p-8 rounded-xl shadow-sm border border-transparent hover:border-primary/20 hover:shadow-md transition-all group cursor-pointer text-center md:text-left">
						<span
							class="material-symbols-outlined text-4xl text-primary mb-6 block group-hover:scale-110 transition-transform">plumbing</span>
						<h3 class="font-bold text-lg mb-2">Plumbing</h3>
						<p class="text-sm text-outline">Leaking, repairs &amp;
							installations.</p>
					</div>
					<div
						class="bg-surface-container-lowest p-8 rounded-xl shadow-sm border border-transparent hover:border-primary/20 hover:shadow-md transition-all group cursor-pointer text-center md:text-left">
						<span
							class="material-symbols-outlined text-4xl text-primary mb-6 block group-hover:scale-110 transition-transform">electrical_services</span>
						<h3 class="font-bold text-lg mb-2">Electrical</h3>
						<p class="text-sm text-outline">Wiring, fixes &amp; smart
							home.</p>
					</div>
					<div
						class="bg-surface-container-lowest p-8 rounded-xl shadow-sm border border-transparent hover:border-primary/20 hover:shadow-md transition-all group cursor-pointer text-center md:text-left">
						<span
							class="material-symbols-outlined text-4xl text-primary mb-6 block group-hover:scale-110 transition-transform">format_paint</span>
						<h3 class="font-bold text-lg mb-2">Painting</h3>
						<p class="text-sm text-outline">Interior, exterior &amp;
							textures.</p>
					</div>
				</div>
			</div>
		</section>
		<!-- How It Works -->
		<section class="py-24 bg-surface-container-low">
			<div class="container mx-auto px-8">
				<div class="grid lg:grid-cols-3 gap-16 items-center">
					<div class="lg:col-span-1">
						<span
							class="text-primary font-bold text-sm uppercase tracking-widest block mb-4">Process</span>
						<h2 class="font-headline text-4xl font-bold mb-6 leading-tight">Seamlessly
							Integrated into Your Schedule.</h2>
						<p class="text-on-surface-variant leading-relaxed">We've
							removed the friction from finding talent. Three steps to a better
							home.</p>
					</div>
					<div class="lg:col-span-2 grid md:grid-cols-3 gap-8">
						<div class="relative pt-12">
							<span
								class="absolute top-0 left-0 text-7xl font-headline font-black text-outline/10">01</span>
							<h4 class="font-bold text-xl mb-3">Define Task</h4>
							<p class="text-sm text-on-surface-variant">Describe what you
								need and set your preferred timeline and budget.</p>
						</div>
						<div class="relative pt-12 md:mt-12">
							<span
								class="absolute top-0 left-0 text-7xl font-headline font-black text-outline/10">02</span>
							<h4 class="font-bold text-xl mb-3">Match Expert</h4>
							<p class="text-sm text-on-surface-variant">Browse curated
								profiles of vetted artisans who match your criteria.</p>
						</div>
						<div class="relative pt-12 md:mt-24">
							<span
								class="absolute top-0 left-0 text-7xl font-headline font-black text-outline/10">03</span>
							<h4 class="font-bold text-xl mb-3">Secure Payment</h4>
							<p class="text-sm text-on-surface-variant">Funds are held in
								escrow and released only when the job is perfect.</p>
						</div>
					</div>
				</div>
			</div>
		</section>
		<!-- Verified Professionals Showcase -->
		<section class="py-24 px-8 bg-surface overflow-hidden">
			<div class="container mx-auto">
				<div class="text-center mb-16">
					<h2 class="font-headline text-4xl font-bold mb-4">Meet the
						Master Artisans</h2>
					<p class="text-on-surface-variant">Only the top 5% of
						applicants pass our rigorous vetting process.</p>
				</div>
				<div class="grid md:grid-cols-3 gap-8">
					<!-- Profile Card 1 -->
					<div
						class="bg-surface-container-lowest rounded-xl p-6 group transition-all hover:shadow-xl relative border border-outline-variant/5">
						<div
							class="absolute top-4 right-4 bg-primary-fixed text-on-primary-fixed px-3 py-1 rounded-full text-xs font-bold flex items-center gap-1">
							<span class="material-symbols-outlined text-[14px]"
								style="font-variation-settings: 'FILL' 1;">verified</span>
							Verified
						</div>
						<div class="mb-6 overflow-hidden rounded-lg aspect-[4/3]">
							<img
								class="w-full h-full object-cover group-hover:scale-110 transition-transform duration-500"
								data-alt="professional electrician in work gear looking confident in organized workshop workshop environment"
								src="https://lh3.googleusercontent.com/aida-public/AB6AXuDKj5Pbw2u7YZBalYxIHjxTHGXTzEdAXduN6vHp_oWBR1GQHQyHQ9nHVG_EmkVe0m5kdnYbGUbuXXLGASKPrikY9lMnel6mJBwgs_HyWQdEFsHatovWfFszAbF_CtRgFP0p772XQgZxPE2WhFxHMLw0xpTdOJtUky5ND9JYMyKzjJt0lH8XcGnzdZ8zs5WYafRgoNdcX0df6tugVunUF33kcRf6g6tgVOh3eYndOm3vLN51Erx4eqStE5tYJTibGqQTh-l6bKy97A8" />
						</div>
						<h3 class="font-headline text-xl font-bold text-on-surface">David
							Chen</h3>
						<p class="text-outline text-sm mb-4">Master Electrician • 12
							Yrs Exp.</p>
						<div class="flex items-center gap-1 mb-6 text-tertiary">
							<span class="material-symbols-outlined text-sm"
								style="font-variation-settings: 'FILL' 1;">star</span> <span
								class="font-bold">4.9</span> <span
								class="text-outline text-sm font-normal ml-1">(128
								Reviews)</span>
						</div>
						<button
							class="w-full py-3 bg-surface-container-high hover:bg-primary hover:text-on-primary rounded font-bold transition-all">View
							Profile</button>
					</div>
					<!-- Profile Card 2 -->
					<div
						class="bg-surface-container-lowest rounded-xl p-6 group transition-all hover:shadow-xl relative border border-outline-variant/5">
						<div
							class="absolute top-4 right-4 bg-primary-fixed text-on-primary-fixed px-3 py-1 rounded-full text-xs font-bold flex items-center gap-1">
							<span class="material-symbols-outlined text-[14px]"
								style="font-variation-settings: 'FILL' 1;">verified</span>
							Verified
						</div>
						<div class="mb-6 overflow-hidden rounded-lg aspect-[4/3]">
							<img
								class="w-full h-full object-cover group-hover:scale-110 transition-transform duration-500"
								data-alt="expert female home cleaner with professional supplies in a minimalist modern kitchen"
								src="https://lh3.googleusercontent.com/aida-public/AB6AXuCLKzCY17AknH1omz1n55vtxu_m7ViYfDRX0G2mNpciAIaOCAuj_G4PaNYtG1znCa8GE1zQ7ZgC53CcWq0fD6rd2IUdu_orVPpRxTdK5rdbwQv4V4QXQpmFCiP4ifdXoEZ7gh60J_AnMYZ8xDvOow4q6AV5PFByJH5BFfDlUV6i_UVYiw2wF7H2ZFiXDmjTePVBgf9HIJdJHhXGUtP4YhV9I5EpFCwDwgep0RtJP4_dz6-SISBDEFEK3iGQjXGaEZ4i4wNjoD3a7b4" />
						</div>
						<h3 class="font-headline text-xl font-bold text-on-surface">Elena
							Rodriguez</h3>
						<p class="text-outline text-sm mb-4">Elite Cleaning Expert • 8
							Yrs Exp.</p>
						<div class="flex items-center gap-1 mb-6 text-tertiary">
							<span class="material-symbols-outlined text-sm"
								style="font-variation-settings: 'FILL' 1;">star</span> <span
								class="font-bold">5.0</span> <span
								class="text-outline text-sm font-normal ml-1">(243
								Reviews)</span>
						</div>
						<button
							class="w-full py-3 bg-surface-container-high hover:bg-primary hover:text-on-primary rounded font-bold transition-all">View
							Profile</button>
					</div>
					<!-- Profile Card 3 -->
					<div
						class="bg-surface-container-lowest rounded-xl p-6 group transition-all hover:shadow-xl relative border border-outline-variant/5">
						<div
							class="absolute top-4 right-4 bg-primary-fixed text-on-primary-fixed px-3 py-1 rounded-full text-xs font-bold flex items-center gap-1">
							<span class="material-symbols-outlined text-[14px]"
								style="font-variation-settings: 'FILL' 1;">verified</span>
							Verified
						</div>
						<div class="mb-6 overflow-hidden rounded-lg aspect-[4/3]">
							<img
								class="w-full h-full object-cover group-hover:scale-110 transition-transform duration-500"
								data-alt="professional plumber working with precision tools in elegant bathroom setting"
								src="https://lh3.googleusercontent.com/aida-public/AB6AXuBht53cmLCiMUW-p6DiUb5AGiexSWCxzKyZxhJO6tHghPov08xpidbuduNplcBVFq_jGJaz28cgxOE-AYXszr-km38BRTMLQcqvtP34Xd1g-fL-NTSaTk8mRmciYovsPU-55Izo5WR1ct19AsHCSrdq8iCvt_ONxPqRaCscJ9xvNytEjlomawvoeyA8sK89Q6P8nrvodbbzsB4hKe8dC_s2m8cbScD4TYFoVzCXT9d78uBr8htpnHA4ViqmEJD53iJMGtUT90uuK3g" />
						</div>
						<h3 class="font-headline text-xl font-bold text-on-surface">Marcus
							Thorne</h3>
						<p class="text-outline text-sm mb-4">Senior Plumbing Tech • 15
							Yrs Exp.</p>
						<div class="flex items-center gap-1 mb-6 text-tertiary">
							<span class="material-symbols-outlined text-sm"
								style="font-variation-settings: 'FILL' 1;">star</span> <span
								class="font-bold">4.8</span> <span
								class="text-outline text-sm font-normal ml-1">(89
								Reviews)</span>
						</div>
						<button
							class="w-full py-3 bg-surface-container-high hover:bg-primary hover:text-on-primary rounded font-bold transition-all">View
							Profile</button>
					</div>
				</div>
			</div>
		</section>
		<!-- Trust / Safety Banner -->
		<section class="py-16 bg-primary">
			<div class="container mx-auto px-8">
				<div
					class="flex flex-col md:flex-row justify-between items-center gap-8 text-center md:text-left">
					<div class="text-on-primary">
						<h2 class="text-3xl font-headline font-bold mb-2">The Labour
							Hub Guarantee.</h2>
						<p class="opacity-90 max-w-xl">Every project is insured up to
							$1M. If you aren't satisfied, we work until you are. No
							exceptions.</p>
					</div>
					<button
						class="bg-surface-container-lowest text-primary px-10 py-4 rounded-lg font-bold hover:bg-opacity-90 transition-all">
						Learn About Safety</button>
				</div>
			</div>
		</section>
	</main>
	<!-- Footer Shell -->
	<footer class="bg-white dark:bg-slate-900 w-full mt-20">
		<div
			class="grid grid-cols-1 md:grid-cols-4 gap-8 px-12 py-16 w-full max-w-full">
			<div class="space-y-6">
				<div class="font-manrope font-bold text-blue-900 text-xl">Labour
					Hub</div>
				<p
					class="text-slate-500 text-xs uppercase tracking-widest leading-relaxed">
					© 2024 Digital Labour Hub. <br /> The Editorial Concierge.
				</p>
			</div>
			<div class="flex flex-col gap-4">
				<h4
					class="font-manrope font-bold text-blue-900 uppercase text-[10px] tracking-widest">Platform</h4>
				<a
					class="text-slate-500 hover:text-blue-600 font-inter text-xs uppercase tracking-widest transition-opacity hover:opacity-70"
					href="#">Services</a> <a
					class="text-slate-500 hover:text-blue-600 font-inter text-xs uppercase tracking-widest transition-opacity hover:opacity-70"
					href="#">Contact</a> <a
					class="text-slate-500 hover:text-blue-600 font-inter text-xs uppercase tracking-widest transition-opacity hover:opacity-70"
					href="#">Terms</a>
			</div>
			<div class="flex flex-col gap-4">
				<h4
					class="font-manrope font-bold text-blue-900 uppercase text-[10px] tracking-widest">Trust</h4>
				<a
					class="text-slate-500 hover:text-blue-600 font-inter text-xs uppercase tracking-widest transition-opacity hover:opacity-70"
					href="#">Privacy</a> <a
					class="text-slate-500 hover:text-blue-600 font-inter text-xs uppercase tracking-widest transition-opacity hover:opacity-70"
					href="#">Safety</a> <a
					class="text-slate-500 hover:text-blue-600 font-inter text-xs uppercase tracking-widest transition-opacity hover:opacity-70"
					href="#">Insurance</a>
			</div>
			<div class="flex flex-col gap-4">
				<h4
					class="font-manrope font-bold text-blue-900 uppercase text-[10px] tracking-widest">Connect</h4>
				<div class="flex gap-4">
					<span
						class="material-symbols-outlined text-slate-400 hover:text-primary cursor-pointer">social_leaderboard</span>
					<span
						class="material-symbols-outlined text-slate-400 hover:text-primary cursor-pointer">language</span>
					<span
						class="material-symbols-outlined text-slate-400 hover:text-primary cursor-pointer">alternate_email</span>
				</div>
			</div>
		</div>
	</footer>
	<script src="/js/script.js"></script>
</body>
</html>