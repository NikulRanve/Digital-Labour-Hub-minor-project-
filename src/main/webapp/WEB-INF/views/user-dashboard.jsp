<!DOCTYPE html>

<%@page import="com.cdgi.pojo.Worker"%>
<%@page import="java.util.List"%>
<html class="light" lang="en">
<head>
<meta charset="utf-8" />
<meta content="width=device-width, initial-scale=1.0" name="viewport" />
<title>User Dashboard | Digital Labour Hub</title>
<script
	src="https://cdn.tailwindcss.com?plugins=forms,container-queries"></script>
<link
	href="https://fonts.googleapis.com/css2?family=Manrope:wght@400;500;600;700;800&amp;family=Inter:wght@300;400;500;600&amp;display=swap"
	rel="stylesheet" />
<link
	href="https://fonts.googleapis.com/css2?family=Material+Symbols+Outlined:wght,FILL@100..700,0..1&amp;display=swap"
	rel="stylesheet" />
<link
	href="https://fonts.googleapis.com/css2?family=Material+Symbols+Outlined:wght,FILL@100..700,0..1&amp;display=swap"
	rel="stylesheet" />
<script id="tailwind-config">
	tailwind.config = {
		darkMode : "class",
		theme : {
			extend : {
				"colors" : {
					"surface-container" : "#edeeef",
					"on-secondary-fixed" : "#041b3c",
					"primary-container" : "#0056b3",
					"on-background" : "#191c1d",
					"surface-variant" : "#e1e3e4",
					"secondary-fixed" : "#d7e2ff",
					"on-surface-variant" : "#424752",
					"surface-container-highest" : "#e1e3e4",
					"on-error" : "#ffffff",
					"tertiary-container" : "#983c00",
					"on-tertiary-container" : "#ffc2a7",
					"on-tertiary-fixed-variant" : "#7b2f00",
					"surface-container-high" : "#e7e8e9",
					"inverse-on-surface" : "#f0f1f2",
					"primary" : "#003f87",
					"surface-dim" : "#d9dadb",
					"primary-fixed-dim" : "#acc7ff",
					"inverse-surface" : "#2e3132",
					"tertiary-fixed-dim" : "#ffb694",
					"on-tertiary" : "#ffffff",
					"on-surface" : "#191c1d",
					"on-primary-container" : "#bbd0ff",
					"tertiary" : "#722b00",
					"on-secondary-container" : "#475a7f",
					"on-tertiary-fixed" : "#351000",
					"on-secondary-fixed-variant" : "#34476a",
					"outline-variant" : "#c2c6d4",
					"secondary-container" : "#bfd2fd",
					"inverse-primary" : "#acc7ff",
					"surface-tint" : "#115cb9",
					"error-container" : "#ffdad6",
					"tertiary-fixed" : "#ffdbcc",
					"on-primary" : "#ffffff",
					"on-primary-fixed-variant" : "#004491",
					"on-error-container" : "#93000a",
					"secondary" : "#4c5e84",
					"surface-container-lowest" : "#ffffff",
					"on-primary-fixed" : "#001a40",
					"error" : "#ba1a1a",
					"background" : "#f8f9fa",
					"surface-container-low" : "#f3f4f5",
					"surface" : "#f8f9fa",
					"secondary-fixed-dim" : "#b3c7f1",
					"outline" : "#727784",
					"primary-fixed" : "#d7e2ff",
					"surface-bright" : "#f8f9fa",
					"on-secondary" : "#ffffff"
				},
				"borderRadius" : {
					"DEFAULT" : "0.5rem",
					"lg" : "0.75rem",
					"xl" : "1rem",
					"full" : "9999px"
				},
				"fontFamily" : {
					"headline" : [ "Manrope" ],
					"body" : [ "Inter" ],
					"label" : [ "Inter" ]
				}
			},
		},
	}
</script>
<style>
.material-symbols-outlined {
	font-variation-settings: 'FILL' 0, 'wght' 400, 'GRAD' 0, 'opsz' 24;
	vertical-align: middle;
}

.glass-nav {
	backdrop-filter: blur(12px);
	-webkit-backdrop-filter: blur(12px);
}

::-webkit-scrollbar {
	width: 8px;
}

::-webkit-scrollbar-track {
	background: #f1f1f1;
}

::-webkit-scrollbar-thumb {
	background: #c2c6d4;
	border-radius: 10px;
}
</style>
</head>
<body class="bg-background font-body text-on-surface">
	<!-- TopNavBar Implementation -->
	<header
		class="fixed top-0 w-full z-50 bg-slate-50/80 dark:bg-slate-900/80 backdrop-blur-md shadow-sm dark:shadow-none">
		<div
			class="flex justify-between items-center px-6 py-4 w-full max-w-7xl mx-auto">
			<div class="flex items-center gap-4">
				<button
					class="p-2 hover:bg-slate-200/50 transition-colors rounded-full lg:hidden">
					<span class="material-symbols-outlined text-blue-900">menu</span>
				</button>
				<h1
					class="text-2xl font-bold tracking-tighter text-blue-900 dark:text-blue-100 font-headline">Digital
					Labour Hub</h1>
			</div>
			<div
				class="hidden md:flex items-center bg-surface-container-low px-4 py-2 rounded-full w-96">
				<span class="material-symbols-outlined text-outline">search</span> <input
					class="bg-transparent border-none focus:ring-0 text-sm w-full placeholder:text-outline"
					placeholder="Search artisans (Plumber, Electrician...)" type="text" />
			</div>
			<div class="flex items-center gap-3">
				<button
					class="p-2 text-slate-500 hover:bg-slate-200/50 transition-colors rounded-full relative">
					<span class="material-symbols-outlined">notifications</span> <span
						class="absolute top-2 right-2 w-2 h-2 bg-error rounded-full border-2 border-white"></span>
				</button>
				<button
					class="p-2 text-slate-500 hover:bg-slate-200/50 transition-colors rounded-full">
					<span class="material-symbols-outlined">chat_bubble</span>
				</button>
				<div class="h-8 w-[1px] bg-outline-variant/30 mx-2"></div>
				<!-- Profile Trigger with Hamburger Logic -->
				<div class="group relative">
					<button
						class="flex items-center gap-2 p-1 pl-3 bg-surface-container-high rounded-full hover:bg-surface-variant transition-all">
						<span class="text-sm font-semibold text-blue-900 pr-1">Alex</span>
						<div
							class="w-8 h-8 rounded-full overflow-hidden border-2 border-white shadow-sm">
							<img class="w-full h-full object-cover"
								data-alt="professional male portrait with friendly expression in office setting, soft natural lighting"
								src="https://lh3.googleusercontent.com/aida-public/AB6AXuArYTa86imEECKoV6EFhMf60QAoUgu2ia1MrKIlFyU6jhduTdywNTewzbC1cioXGqYzQ6c05_iaf9TsaL0PwU-NlgC8YAZBRNj_TL0FrNZX-6JuSkaFm4G935aFYSpjONRCEMFaP9odg5pdikS4y75seOEcHrcBjiegJpPTvAQwS0syUirjWRgCq17r3fLo4e482h355F0s5eQiw2jcEvvbY_Wff7OIfsNaJ4ZyvRjujVsXdey5_A_6e1WEqJYbRPzPtNX4754mjsI" />
						</div>
						<span class="material-symbols-outlined text-sm">expand_more</span>
					</button>
					<!-- Hamburger Menu Content -->
					<div
						class="absolute right-0 mt-2 w-56 bg-surface-container-lowest rounded-xl shadow-xl border border-outline-variant/10 opacity-0 invisible group-hover:opacity-100 group-hover:visible transition-all duration-200 z-[60] overflow-hidden">
						<div class="p-4 bg-primary text-on-primary">
							<p class="text-xs uppercase tracking-widest font-bold opacity-80">Premium
								Member</p>
							<p class="font-headline font-bold">Alex Johnson</p>
						</div>
						<div class="py-2">
							<a
								class="flex items-center gap-3 px-4 py-3 hover:bg-surface-container-low text-sm font-medium text-on-surface"
								href="#"> <span
								class="material-symbols-outlined text-primary">person</span>
								Profile
							</a> <a
								class="flex items-center gap-3 px-4 py-3 hover:bg-surface-container-low text-sm font-medium text-on-surface"
								href="#"> <span
								class="material-symbols-outlined text-primary">event_available</span>
								My Bookings
							</a> <a
								class="flex items-center gap-3 px-4 py-3 hover:bg-surface-container-low text-sm font-medium text-on-surface"
								href="#"> <span
								class="material-symbols-outlined text-primary">history</span>
								Recent History
							</a>
							<div class="border-t border-outline-variant/20 my-1"></div>
							<a
								class="flex items-center gap-3 px-4 py-3 hover:bg-surface-container-low text-sm font-medium text-error"
								href="login"> <span class="material-symbols-outlined">logout</span>
								Logout
							</a>
						</div>
					</div>
				</div>
			</div>
		</div>
	</header>
	<main
		class="pt-24 pb-20 px-4 md:px-8 max-w-7xl mx-auto flex flex-col lg:flex-row gap-8">
		<!-- Left: Artisans Listing (Main Content) -->
		<div class="flex-grow space-y-8">
			<div
				class="flex flex-col md:flex-row md:items-end justify-between gap-4">
				<div>
					<h2
						class="text-3xl font-headline font-extrabold text-blue-900 tracking-tight">Available
						Workers</h2>
					<p class="text-on-surface-variant font-body mt-1">Found 42
						verified professionals in your area</p>
				</div>
				<div class="flex gap-2 overflow-x-auto pb-2 md:pb-0 no-scrollbar">
					<button
						class="px-5 py-2 bg-primary text-on-primary rounded-full text-sm font-semibold whitespace-nowrap">All
						Services</button>
					<button
						class="px-5 py-2 bg-surface-container-high text-on-surface-variant hover:bg-secondary-container transition-colors rounded-full text-sm font-medium whitespace-nowrap">Electrician</button>
					<button
						class="px-5 py-2 bg-surface-container-high text-on-surface-variant hover:bg-secondary-container transition-colors rounded-full text-sm font-medium whitespace-nowrap">Plumber</button>
					<button
						class="px-5 py-2 bg-surface-container-high text-on-surface-variant hover:bg-secondary-container transition-colors rounded-full text-sm font-medium whitespace-nowrap">Carpenter</button>
					<button
						class="px-5 py-2 bg-surface-container-high text-on-surface-variant hover:bg-secondary-container transition-colors rounded-full text-sm font-medium whitespace-nowrap">Cleaner</button>
				</div>
			</div>
			<!-- Bento-style Artisan Grid -->
			<div class="grid grid-cols-1 md:grid-cols-2 gap-6">
				<!-- Artisan Card 1 -->
				<%
				List<Worker> worker = (List<Worker>) request.getAttribute("workers");

				if (worker != null) {

					for (Worker w : worker) {
				%>
				<div
					class="bg-surface-container-lowest rounded-xl p-6 flex flex-col sm:flex-row gap-6 hover:shadow-lg transition-all border border-transparent hover:border-outline-variant/20">

					<!-- Image -->
					<div class="relative w-full sm:w-32 h-32 flex-shrink-0">
						<img class="w-full h-full object-cover rounded-xl"
							src="profile/<%=w.getProfilephoto()%>" alt="worker image" >

						<!-- Verified Badge -->
					<% %>
							<span
								class="absolute -top-2 -right-2 bg-primary-fixed px-2 py-1 rounded-full text-[10px] font-bold flex items-center gap-1 shadow-sm">
								<span class="material-symbols-outlined text-xs">verified</span>
								VERIFIED
							</span>
							<% 
								%>
					</div>

					<!-- Content -->
					<div class="flex-grow flex flex-col justify-between">

						<div>
							<div class="flex justify-between items-start">
								<h3 class="text-xl font-headline font-bold"><%=w.getFirstName() %>
									<%=w.getLastName() %></h3>

								<div class="flex items-center text-primary font-bold">
									<span class="material-symbols-outlined text-yellow-500 mr-1">star</span>
									<%=w.getRating() %>
								</div>
							</div>

							<!-- Skills -->
							<div class="flex flex-wrap gap-2 mt-2">
								<span
									class="px-3 py-1 bg-surface-container-low text-blue-800 text-xs font-bold rounded-full">
									<%=w.getSkills() %> </span>
							</div>

			+ 				<!-- Description -->
							<p class="mt-3 text-sm text-on-surface-variant">
								${w.description}</p>
						</div>

						<!-- Bottom -->
						<div
							class="flex items-center justify-between mt-6 pt-4 border-t border-outline-variant/10">
							<div>
								<span class="text-2xl font-black text-blue-900">₹<%=w.getHourlyRate() %></span>
								<span class="text-xs font-medium text-outline">/ hr</span>
							</div>

							<!-- Book Button -->
							<a href="book-worker?email=<%=w.getEmail() %>"
								class="px-6 py-2.5 bg-blue-600 text-white font-bold rounded-lg shadow-md hover:opacity-90 text-sm">
								Book Now </a>
						</div>

					</div>
				</div>

				<%
				}
				}
				%>
				<!-- Artisan Card 2 -->
				<div
					class="bg-surface-container-lowest rounded-xl p-6 flex flex-col sm:flex-row gap-6 hover:shadow-lg transition-all border border-transparent hover:border-outline-variant/20">
					<div class="relative w-full sm:w-32 h-32 flex-shrink-0">
						<img class="w-full h-full object-cover rounded-xl"
							data-alt="experienced female plumber fixing a pipe under a sink, professional lighting, focus on tools and hands"
							src="https://lh3.googleusercontent.com/aida-public/AB6AXuDkxTboQs2YchLkFE6v0vQkVOvBQU0ThoCmH44i9_wSbdCO5vOZPMSXb33ukGRwEBM4xQqVzbS2lcqD8u1J9ndqtT_rFm9iR00Zcj64dGLBwu_fp7_T2xFq3pLM4z6-tkwymXjkkBR1j6FiGdZZ3qtu5mehz-0Rkw0wN85eCHXaWJbsfj78bJj0lWwGbMJDfY1DKVTylYW6lhjOcnBh8ikZAKekqTrkkwIQdPuQJiJiMnxeLD9TvvA5u7Vkzfwy5z_wmq9Ti042SuM" />
						<span
							class="absolute -top-2 -right-2 bg-primary-fixed text-on-primary-fixed-variant px-2 py-1 rounded-full text-[10px] font-bold flex items-center gap-1 shadow-sm">
							<span class="material-symbols-outlined text-xs"
							data-weight="fill">verified</span> VERIFIED
						</span>
					</div>
					<div class="flex-grow flex flex-col justify-between">
						<div>
							<div class="flex justify-between items-start">
								<h3 class="text-xl font-headline font-bold text-on-surface">Elena
									Rodriguez</h3>
								<div class="flex items-center text-primary font-bold">
									<span class="material-symbols-outlined text-yellow-500 mr-1"
										data-weight="fill">star</span> 4.8
								</div>
							</div>
							<div class="flex flex-wrap gap-2 mt-2">
								<span
									class="px-3 py-1 bg-surface-container-low text-blue-800 text-xs font-bold rounded-full">Plumber</span>
								<span
									class="px-3 py-1 bg-surface-container-low text-blue-800 text-xs font-bold rounded-full">Emergency</span>
							</div>
							<p class="mt-3 text-sm text-on-surface-variant line-clamp-2">Rapid
								response plumbing expert. Master at leak detection and bathroom
								renovations.</p>
						</div>
						<div
							class="flex items-center justify-between mt-6 pt-4 border-t border-outline-variant/10">
							<div>
								<span class="text-2xl font-black text-blue-900">$38</span> <span
									class="text-xs font-medium text-outline">/ hr</span>
							</div>
							<button
								class="px-6 py-2.5 bg-gradient-to-r from-primary to-primary-container text-on-primary font-bold rounded-lg shadow-md hover:opacity-90 active:scale-95 transition-all text-sm">Book
								Now</button>
						</div>
					</div>
				</div>
				<!-- Artisan Card 3 -->
				<div
					class="bg-surface-container-lowest rounded-xl p-6 flex flex-col sm:flex-row gap-6 hover:shadow-lg transition-all border border-transparent hover:border-outline-variant/20">
					<div class="relative w-full sm:w-32 h-32 flex-shrink-0">
						<img class="w-full h-full object-cover rounded-xl"
							data-alt="carpenter working with wood in a sunny workshop, sawdust in the air, warm cinematic lighting"
							src="https://lh3.googleusercontent.com/aida-public/AB6AXuDVM_Y0T0Yu-_Qp93LfmzyJNr9X3iBI6-tqyQrYpsN8cz4cA9_At4wwH83jTZVVvccRKys3jcCVZjAQvqqmNLr32GIFSG_c-mNHgZ78xN8C7usa_Z1eN8DCEcwS_hGTSzaC6V0U6KoAgyw5bykUS7bKs1_TNn3Bp5LyqXL8ReNQ_W77LxEoLnw01d9vcyn0o3p7CpN9ZGIgzCPEYmCQFH0sId8a5akW_LuIE3Lpe2r67mgR3himxtWm8iBwYFx632KR0_p2T3xqWe8" />
					</div>
					<div class="flex-grow flex flex-col justify-between">
						<div>
							<div class="flex justify-between items-start">
								<h3 class="text-xl font-headline font-bold text-on-surface">David
									Chen</h3>
								<div class="flex items-center text-primary font-bold">
									<span class="material-symbols-outlined text-yellow-500 mr-1"
										data-weight="fill">star</span> 5.0
								</div>
							</div>
							<div class="flex flex-wrap gap-2 mt-2">
								<span
									class="px-3 py-1 bg-surface-container-low text-blue-800 text-xs font-bold rounded-full">Carpenter</span>
								<span
									class="px-3 py-1 bg-surface-container-low text-blue-800 text-xs font-bold rounded-full">Fine
									Woodwork</span>
							</div>
							<p class="mt-3 text-sm text-on-surface-variant line-clamp-2">Bespoke
								furniture maker and cabinet specialist. Perfectionist with
								high-end finishes.</p>
						</div>
						<div
							class="flex items-center justify-between mt-6 pt-4 border-t border-outline-variant/10">
							<div>
								<span class="text-2xl font-black text-blue-900">$55</span> <span
									class="text-xs font-medium text-outline">/ hr</span>
							</div>
							<button
								class="px-6 py-2.5 bg-gradient-to-r from-primary to-primary-container text-on-primary font-bold rounded-lg shadow-md hover:opacity-90 active:scale-95 transition-all text-sm">Book
								Now</button>
						</div>
					</div>
				</div>
				<!-- Artisan Card 4 -->
				<div
					class="bg-surface-container-lowest rounded-xl p-6 flex flex-col sm:flex-row gap-6 hover:shadow-lg transition-all border border-transparent hover:border-outline-variant/20">
					<div class="relative w-full sm:w-32 h-32 flex-shrink-0">
						<img class="w-full h-full object-cover rounded-xl"
							data-alt="professional cleaner in blue uniform, smiling at the camera, bright clean residential interior background"
							src="https://lh3.googleusercontent.com/aida-public/AB6AXuB_z4-kmrO1A_1RdRtx3VYXkNXTr9B1nnh-t-odqJPqxY-fkLW7oE228CLaLZn_PJvr-dFCXyWGyqzgqhdL7VUeXR6AgdD31-rDF2SohVJbhxxJ4FgJVELhjQ7iHai_h5kRK0dHtJvq9vWwKlGepU0hpPa88pPEhOtsT8gQPo0iFtJXxY-XzOHhWycZpJLlGXitaHW86QI_C3odbZPCc3UofMjkGEZAPfHQ30MSiVfovqlCDw2iX4OV685wchkE_BftLf0H0ukFbn4" />
						<span
							class="absolute -top-2 -right-2 bg-primary-fixed text-on-primary-fixed-variant px-2 py-1 rounded-full text-[10px] font-bold flex items-center gap-1 shadow-sm">
							<span class="material-symbols-outlined text-xs"
							data-weight="fill">verified</span> VERIFIED
						</span>
					</div>
					<div class="flex-grow flex flex-col justify-between">
						<div>
							<div class="flex justify-between items-start">
								<h3 class="text-xl font-headline font-bold text-on-surface">Sarah
									Miller</h3>
								<div class="flex items-center text-primary font-bold">
									<span class="material-symbols-outlined text-yellow-500 mr-1"
										data-weight="fill">star</span> 4.7
								</div>
							</div>
							<div class="flex flex-wrap gap-2 mt-2">
								<span
									class="px-3 py-1 bg-surface-container-low text-blue-800 text-xs font-bold rounded-full">Cleaner</span>
								<span
									class="px-3 py-1 bg-surface-container-low text-blue-800 text-xs font-bold rounded-full">Deep
									Clean</span>
							</div>
							<p class="mt-3 text-sm text-on-surface-variant line-clamp-2">Meticulous
								cleaning services for residential and commercial spaces.
								Eco-friendly products used.</p>
						</div>
						<div
							class="flex items-center justify-between mt-6 pt-4 border-t border-outline-variant/10">
							<div>
								<span class="text-2xl font-black text-blue-900">$25</span> <span
									class="text-xs font-medium text-outline">/ hr</span>
							</div>
							<button
								class="px-6 py-2.5 bg-gradient-to-r from-primary to-primary-container text-on-primary font-bold rounded-lg shadow-md hover:opacity-90 active:scale-95 transition-all text-sm">Book
								Now</button>
						</div>
					</div>
				</div>
			</div>
		</div>
		<!-- Right: Status & History Panel -->
		<aside class="w-full lg:w-80 flex flex-col gap-6">
			<!-- Active Booking Status -->
			<section
				class="bg-primary-fixed text-on-primary-fixed p-6 rounded-2xl shadow-sm">
				<div class="flex items-center justify-between mb-4">
					<h3 class="font-headline font-bold">Active Booking</h3>
					<span class="w-2 h-2 bg-primary rounded-full animate-pulse"></span>
				</div>
				<div
					class="bg-white/40 backdrop-blur-md rounded-xl p-4 flex gap-4 items-center">
					<div
						class="w-12 h-12 rounded-lg bg-primary/10 flex items-center justify-center">
						<span class="material-symbols-outlined text-primary text-2xl">home_repair_service</span>
					</div>
					<div>
						<p class="text-xs font-bold opacity-60 uppercase tracking-tighter">In
							Progress</p>
						<p class="font-headline font-bold text-on-primary-fixed">Pipe
							Repair</p>
						<p class="text-xs font-medium">with Thomas K.</p>
					</div>
				</div>
				<div class="mt-4 flex flex-col gap-2">
					<div class="flex justify-between text-xs font-medium">
						<span>Time Elapsed</span> <span class="font-bold">01:42:00</span>
					</div>
					<div
						class="w-full bg-primary/10 h-1.5 rounded-full overflow-hidden">
						<div class="bg-primary h-full w-2/3"></div>
					</div>
				</div>
				<button
					class="w-full mt-6 py-2 bg-primary text-on-primary rounded-lg text-sm font-bold">View
					Details</button>
			</section>
			<!-- Recent History Summary -->
			<section class="bg-surface-container-low p-6 rounded-2xl">
				<div class="flex items-center justify-between mb-6">
					<h3 class="font-headline font-bold text-on-surface">Recent
						History</h3>
					<a class="text-xs font-bold text-primary hover:underline" href="#">View
						All</a>
				</div>
				<div class="space-y-6">
					<!-- History Item 1 -->
					<div class="flex gap-4 group">
						<div
							class="w-10 h-10 rounded-full bg-surface-container-highest flex items-center justify-center group-hover:bg-primary-container group-hover:text-on-primary-container transition-colors">
							<span class="material-symbols-outlined text-sm">check</span>
						</div>
						<div class="flex-grow">
							<p class="text-sm font-bold text-on-surface">AC Maintenance</p>
							<p class="text-xs text-outline font-medium">Oct 24 • $120.00</p>
						</div>
					</div>
					<!-- History Item 2 -->
					<div class="flex gap-4 group">
						<div
							class="w-10 h-10 rounded-full bg-surface-container-highest flex items-center justify-center group-hover:bg-primary-container group-hover:text-on-primary-container transition-colors">
							<span class="material-symbols-outlined text-sm">check</span>
						</div>
						<div class="flex-grow">
							<p class="text-sm font-bold text-on-surface">Deep Cleaning</p>
							<p class="text-xs text-outline font-medium">Oct 20 • $85.00</p>
						</div>
					</div>
					<!-- History Item 3 -->
					<div class="flex gap-4 group">
						<div
							class="w-10 h-10 rounded-full bg-surface-container-highest flex items-center justify-center group-hover:bg-primary-container group-hover:text-on-primary-container transition-colors">
							<span class="material-symbols-outlined text-sm">check</span>
						</div>
						<div class="flex-grow">
							<p class="text-sm font-bold text-on-surface">Painting Work</p>
							<p class="text-xs text-outline font-medium">Oct 12 • $340.00</p>
						</div>
					</div>
				</div>
			</section>
			<!-- Quick Ads / Promo -->
			<div
				class="relative bg-blue-900 rounded-2xl p-6 overflow-hidden min-h-[160px] flex flex-col justify-end">
				<img class="absolute inset-0 w-full h-full object-cover opacity-30"
					data-alt="professional house cleaning equipment in a modern bright room, clean aesthetic, high quality tools"
					src="https://lh3.googleusercontent.com/aida-public/AB6AXuB_d8z2zDFOb5pkTXinsO7ayrxzOJeqbA2B-b7o3bfVSFEFIgA49rO7jRXKLLVBbuPTc3PYSAOyCbOGI7IaRDBFk_N2B7M-eoFddFDvWgopcT8eFHeo1TiSu0oH3KCLfd4D9KAq5t-anbLxULFhCRzEHxNGhoE4ue8XNiO0LZNXF-lBMmHzDYC1fs5qnPLiPguzdBwwsX33WurAlWrPI82e-tAtlo5FvsK74JJpLJNkdQSieI2OYaB8YhXKNMLSggkoXbxGRf6LX8s" />
				<div class="relative z-10">
					<h4 class="text-white font-headline font-bold leading-tight">Home
						Refresh Sale</h4>
					<p class="text-blue-200 text-xs font-medium mt-1">Get 20% off
						all cleaning services this weekend.</p>
					<button
						class="mt-3 px-4 py-1.5 bg-white text-blue-900 rounded-full text-[10px] font-bold uppercase tracking-wider">Claim
						Now</button>
				</div>
			</div>
		</aside>
	</main>
	<!-- BottomNavBar for Mobile -->
	<nav
		class="fixed bottom-0 left-0 w-full z-50 flex justify-around items-center px-4 pt-3 pb-8 md:hidden bg-white/90 dark:bg-slate-950/90 backdrop-blur-xl shadow-[0_-10px_30px_-15px_rgba(0,0,0,0.1)] rounded-t-3xl border-t border-slate-100 dark:border-slate-800">
		<a
			class="flex flex-col items-center justify-center bg-blue-100 dark:bg-blue-900 text-blue-900 dark:text-blue-100 rounded-2xl px-5 py-2"
			href="#"> <span class="material-symbols-outlined"
			data-weight="fill">home</span> <span
			class="font-inter text-[11px] font-semibold">Home</span>
		</a> <a
			class="flex flex-col items-center justify-center text-slate-400 dark:text-slate-500 hover:text-blue-600 transition-all active:scale-90"
			href="#"> <span class="material-symbols-outlined">search</span> <span
			class="font-inter text-[11px] font-semibold">Search</span>
		</a> <a
			class="flex flex-col items-center justify-center text-slate-400 dark:text-slate-500 hover:text-blue-600 transition-all active:scale-90"
			href="#"> <span class="material-symbols-outlined">pending_actions</span>
			<span class="font-inter text-[11px] font-semibold">Activity</span>
		</a> <a
			class="flex flex-col items-center justify-center text-slate-400 dark:text-slate-500 hover:text-blue-600 transition-all active:scale-90"
			href="#"> <span class="material-symbols-outlined">person</span> <span
			class="font-inter text-[11px] font-semibold">Profile</span>
		</a>
	</nav>
</body>
</html>