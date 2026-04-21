<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<!DOCTYPE html>

<html class="light" lang="en">
<head>
<meta charset="utf-8" />
<meta content="width=device-width, initial-scale=1.0" name="viewport" />
<title>Admin Dashboard | Digital Labour Hub</title>
<script
	src="https://cdn.tailwindcss.com?plugins=forms,container-queries"></script>
<link
	href="https://fonts.googleapis.com/css2?family=Manrope:wght@400;500;600;700;800&amp;family=Inter:wght@300;400;500;600;700&amp;display=swap"
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
					"outline-variant" : "#c2c6d4",
					"on-primary-fixed" : "#001a40",
					"on-surface" : "#191c1d",
					"tertiary-fixed" : "#ffdbcc",
					"tertiary" : "#722b00",
					"on-surface-variant" : "#424752",
					"surface-container-highest" : "#e1e3e4",
					"on-secondary-fixed-variant" : "#34476a",
					"surface-dim" : "#d9dadb",
					"surface" : "#f8f9fa",
					"surface-container-low" : "#f3f4f5",
					"on-tertiary-fixed" : "#351000",
					"on-primary-fixed-variant" : "#004491",
					"on-tertiary" : "#ffffff",
					"inverse-surface" : "#2e3132",
					"outline" : "#727784",
					"surface-tint" : "#115cb9",
					"tertiary-fixed-dim" : "#ffb694",
					"on-secondary" : "#ffffff",
					"inverse-on-surface" : "#f0f1f2",
					"on-error" : "#ffffff",
					"primary-fixed" : "#d7e2ff",
					"on-primary" : "#ffffff",
					"primary-fixed-dim" : "#acc7ff",
					"secondary-fixed" : "#d7e2ff",
					"error-container" : "#ffdad6",
					"primary-container" : "#0056b3",
					"on-background" : "#191c1d",
					"on-secondary-container" : "#475a7f",
					"secondary-container" : "#bfd2fd",
					"primary" : "#003f87",
					"tertiary-container" : "#983c00",
					"on-secondary-fixed" : "#041b3c",
					"inverse-primary" : "#acc7ff",
					"surface-container-high" : "#e7e8e9",
					"secondary-fixed-dim" : "#b3c7f1",
					"secondary" : "#4c5e84",
					"on-tertiary-fixed-variant" : "#7b2f00",
					"on-primary-container" : "#bbd0ff",
					"on-error-container" : "#93000a",
					"surface-variant" : "#e1e3e4",
					"surface-bright" : "#f8f9fa",
					"surface-container-lowest" : "#ffffff",
					"background" : "#f8f9fa",
					"on-tertiary-container" : "#ffc2a7",
					"error" : "#ba1a1a",
					"surface-container" : "#edeeef"
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
			}
		}
	}
</script>
<style>
.material-symbols-outlined {
	font-variation-settings: 'FILL' 0, 'wght' 400, 'GRAD' 0, 'opsz' 24;
}

body {
	font-family: 'Inter', sans-serif;
}

h1, h2, h3, h4 {
	font-family: 'Manrope', sans-serif;
}
</style>
</head>
<body class="bg-surface text-on-surface">
	<!-- SideNavBar -->
	<aside
		class="h-screen w-64 fixed left-0 top-0 overflow-y-auto bg-slate-50 flex flex-col p-6 gap-2 shadow-[20px_0_40px_-15px_rgba(0,0,0,0.05)] z-50 font-['Manrope'] tracking-tight">
		<div class="mb-8 px-2">
			<h1
				class="font-['Manrope'] font-extrabold text-blue-900 tracking-tighter text-xl">Labour
				Hub</h1>
			<p
				class="text-xs text-slate-500 uppercase tracking-widest font-bold mt-1">Admin
				Portal</p>
		</div>
		<nav class="flex flex-col gap-1">
			<!-- Active: Overview -->
			<a
				class="flex items-center gap-3 px-4 py-3 text-blue-700 font-bold bg-white/80 rounded-lg transition-all duration-200 ease-in-out scale-[0.98]"
				href="admin-dashboard"> <span class="material-symbols-outlined"
				data-icon="dashboard">dashboard</span> <span>Overview</span>
			</a> <a
				class="flex items-center gap-3 px-4 py-3 text-slate-500 font-medium hover:text-blue-600 transition-all duration-200 ease-in-out hover:bg-slate-200/50"
				href="admin-user-management"> <span
				class="material-symbols-outlined" data-icon="group">group</span> <span>Users</span>
			</a> <a
				class="flex items-center gap-3 px-4 py-3 text-slate-500 font-medium hover:text-blue-600 transition-all duration-200 ease-in-out hover:bg-slate-200/50"
				href="admin-worker-management"> <span
				class="material-symbols-outlined" data-icon="engineering">engineering</span>
				<span>Workers</span>
			</a> <a
				class="flex items-center gap-3 px-4 py-3 text-slate-500 font-medium hover:text-blue-600 transition-all duration-200 ease-in-out hover:bg-slate-200/50"
				href="admin-booking-management"> <span
				class="material-symbols-outlined" data-icon="calendar_today">calendar_today</span>
				<span>Bookings</span>
			</a> <a
				class="flex items-center gap-3 px-4 py-3 text-slate-500 font-medium hover:text-blue-600 transition-all duration-200 ease-in-out hover:bg-slate-200/50"
				href="admin-verification-management"> <span
				class="material-symbols-outlined" data-icon="verified_user">verified_user</span>
				<span>Verification</span>
			</a> <a
				class="flex items-center gap-3 px-4 py-3 mt-4 text-slate-500 dark:text-slate-400 font-medium hover:text-error dark:hover:text-red-400 transition-all duration-200 ease-in-out hover:bg-red-50 dark:hover:bg-red-950/20 rounded-lg"
				href="index"> <span class="material-symbols-outlined">logout</span>
				<span>Logout</span>
			</a>
		</nav>
		<div class="mt-auto pt-6 border-t border-slate-200/50">
			<div class="flex items-center gap-3 px-2">
				<img alt="Admin User Profile"
					class="w-10 h-10 rounded-full object-cover"
					data-alt="Close-up professional portrait of a confident male administrator in a clean modern office setting"
					src="https://lh3.googleusercontent.com/aida-public/AB6AXuCgOzy5mocU3zjp-9Jfx7Mq79Z57FAtPcVpUeOGVsKtoy9l9U7GOlTA-s2k0IA9PxJ1NV9VqcYEV1mZvvhiLeEfNw0wBzNfVIPrEOLdK-Hqdt5NT6y9SreZMVetF66KA8kP3jLvpie6aKg3GzJTw1pHYgK6XYtjU8fJR8k0nvi8AhsySsXfgiuCXXCN3-ok8juR1HPyQTbZjeCE2jO60ZqozuCFK-yFVyLuvmq4V68_y6jHo_qEEYcJNVXmcl3IPpZJ4Gq0YABokyw" />
				<div class="flex flex-col">
					<span class="text-sm font-bold text-on-surface">Alex Rivera</span>
					<span class="text-xs text-outline">Super Admin</span>
				</div>
			</div>
		</div>
	</aside>
	<!-- TopAppBar -->
	<header
		class="fixed top-0 right-0 h-16 z-40 bg-white/80 backdrop-blur-md flex items-center justify-between pl-72 pr-8 w-full font-['Inter'] text-sm">

		<div class="flex items-center gap-4 flex-1 max-w-xl">
			<div class="relative w-full">
				<span
					class="material-symbols-outlined absolute left-3 top-1/2 -translate-y-1/2 text-outline">search</span>
				<input
					class="w-full pl-10 pr-4 py-2 rounded-lg bg-surface-container-low border-none focus:ring-2 focus:ring-primary-fixed transition-all placeholder:text-outline text-on-surface"
					placeholder="Search workers, users or jobs..." type="text" />
			</div>
		</div>
		<div class="flex items-center gap-6">
			<button
				class="relative text-slate-600 hover:text-blue-500 transition-colors">
				<span class="material-symbols-outlined" data-icon="notifications">notifications</span>
				<span class="absolute -top-1 -right-1 w-2 h-2 bg-error rounded-full"></span>
			</button>
			<button class="text-slate-600 hover:text-blue-500 transition-colors">
				<span class="material-symbols-outlined" data-icon="settings">settings</span>
			</button>
		</div>
	</header>
	<!-- Main Content Canvas -->
	<main class="pl-64 pt-16 min-h-screen">
		<div class="p-8 max-w-7xl mx-auto space-y-12">
			<!-- Header Section -->
			<section class="flex flex-col gap-1">
				<h2 class="text-3xl font-extrabold tracking-tight text-on-surface">Overview</h2>
				<p class="text-on-surface-variant">Welcome back, Alex. Here's
					what's happening on the hub today.</p>
			</section>
			<!-- KPI Cards Bento Grid -->
			<section class="grid grid-cols-1 md:grid-cols-2 lg:grid-cols-4 gap-6">
				<div
					class="bg-surface-container-lowest p-6 rounded-xl shadow-[0_32px_48px_-4px_rgba(25,28,29,0.04)] flex flex-col justify-between h-40">
					<div class="flex justify-between items-start">
						<span
							class="text-on-secondary-fixed-variant font-semibold label-md">Total
							Users</span>
						<div class="bg-primary-fixed p-2 rounded-lg text-primary">
							<span class="material-symbols-outlined text-lg"
								data-icon="person">person</span>
						</div>
					</div>
					<div>
						<div class="text-3xl font-extrabold text-on-surface">12,840</div>
						<div
							class="text-xs text-primary font-bold flex items-center gap-1 mt-1">
							<span class="material-symbols-outlined text-xs"
								data-icon="trending_up">trending_up</span> <span>12% from
								last month</span>
						</div>
					</div>
				</div>
				<div
					class="bg-surface-container-lowest p-6 rounded-xl shadow-[0_32px_48px_-4px_rgba(25,28,29,0.04)] flex flex-col justify-between h-40">
					<div class="flex justify-between items-start">
						<span
							class="text-on-secondary-fixed-variant font-semibold label-md">Total
							Workers</span>
						<div
							class="bg-secondary-container p-2 rounded-lg text-on-secondary-container">
							<span class="material-symbols-outlined text-lg"
								data-icon="construction">construction</span>
						</div>
					</div>
					<div>
						<div class="text-3xl font-extrabold text-on-surface">3,420</div>
						<div
							class="text-xs text-primary font-bold flex items-center gap-1 mt-1">
							<span class="material-symbols-outlined text-xs"
								data-icon="trending_up">trending_up</span> <span>5% from
								last month</span>
						</div>
					</div>
				</div>
				<div
					class="bg-surface-container-lowest p-6 rounded-xl shadow-[0_32px_48px_-4px_rgba(25,28,29,0.04)] flex flex-col justify-between h-40">
					<div class="flex justify-between items-start">
						<span
							class="text-on-secondary-fixed-variant font-semibold label-md">Active
							Bookings</span>
						<div class="bg-tertiary-fixed p-2 rounded-lg text-tertiary">
							<span class="material-symbols-outlined text-lg"
								data-icon="history_edu">history_edu</span>
						</div>
					</div>
					<div>
						<div class="text-3xl font-extrabold text-on-surface">842</div>
						<div
							class="text-xs text-tertiary font-bold flex items-center gap-1 mt-1">
							<span class="material-symbols-outlined text-xs" data-icon="bolt">bolt</span>
							<span>Live now</span>
						</div>
					</div>
				</div>
				<div
					class="bg-primary-container p-6 rounded-xl shadow-[0_32px_48px_-4px_rgba(0,86,179,0.15)] flex flex-col justify-between h-40 text-on-primary-container relative overflow-hidden">
					<div
						class="absolute top-0 right-0 p-8 opacity-10 pointer-events-none">
						<span class="material-symbols-outlined text-9xl"
							data-icon="payments">payments</span>
					</div>
					<div class="flex justify-between items-start z-10">
						<span class="font-semibold label-md text-white/80">Total
							Revenue</span>
						<div
							class="bg-white/20 backdrop-blur-sm p-2 rounded-lg text-white">
							<span class="material-symbols-outlined text-lg"
								data-icon="attach_money">attach_money</span>
						</div>
					</div>
					<div class="z-10">
						<div class="text-3xl font-extrabold text-white">$42,105</div>
						<div class="text-xs text-white/70 font-medium mt-1">Q3
							Projection: $150k</div>
					</div>
				</div>
			</section>

			<!-- 5. Pending Verification Queue (Refined) -->
			<section class="space-y-6" id="verification">
				<div class="flex items-end justify-between">
					<div>
						<h2
							class="text-3xl font-headline font-extrabold tracking-tight text-on-surface">Verification
							Queue</h2>
						<p class="text-on-surface-variant mt-1">Review 42 new
							professional applications for platform verification.</p>
					</div>
					<button
						class="flex items-center gap-2 text-primary font-bold text-sm hover:opacity-70 transition-opacity">
						View All Applications <span class="material-symbols-outlined"
							data-icon="arrow_forward">arrow_forward</span>
					</button>
				</div>
				<div
					class="bg-surface-container-lowest rounded-xl overflow-hidden border border-surface-container">
					<table class="w-full text-left border-collapse">
						<thead>
							<tr
								class="bg-surface-container-low border-b border-surface-container">
								<th
									class="px-6 py-4 font-label text-xs uppercase tracking-widest text-outline">Worker</th>
								<th
									class="px-6 py-4 font-label text-xs uppercase tracking-widest text-outline">Skillset</th>
								<th
									class="px-6 py-4 font-label text-xs uppercase tracking-widest text-outline">Applied
									On</th>
								<th
									class="px-6 py-4 font-label text-xs uppercase tracking-widest text-outline">Status</th>
								<th
									class="px-6 py-4 font-label text-xs uppercase tracking-widest text-outline text-right">Actions</th>
							</tr>
						</thead>
						<tbody class="divide-y divide-surface-container">
							<tr
								class="hover:bg-surface-container-low/50 transition-colors group">
								<td class="px-6 py-5">
									<div class="flex items-center gap-4">
										<img alt="Worker" class="w-10 h-10 rounded-lg object-cover"
											src="https://lh3.googleusercontent.com/aida-public/AB6AXuChUx9fyuqjQCx0X_40sxhKBF1kiPysDVxbj_45LWqZVIAXc6WSXOBTH3OdYAngsZmOVdwgNTFeBmd-18XlYLkjcof8ADKF_Eq-Dth3Q--CNX6n5E2bXwzp7BoGQZWfpS12wToGV_L8m-Te_W4Am0OF3ptXSYQZPvB4yvYpMBTbR9iprMEe2j0VxwqRwhj5e5bOmturx_QYVcgj-5JGW4uWdQ0psUYmDHC-ZHQ-yEZ9YEYAR7M68atJn5j_UtNL37CAbDDe3mOnCjQ" />
										<div>
											<div class="font-headline font-bold text-on-surface">Elena
												Rodriguez</div>
											<div class="text-xs text-outline">elena.r@example.com</div>
										</div>
									</div>
								</td>
								<td class="px-6 py-5">
									<div class="flex gap-1">
										<span
											class="bg-primary-fixed text-on-primary-fixed-variant px-2 py-0.5 rounded-full text-[10px] font-bold uppercase tracking-wider">Carpentry</span>
									</div>
								</td>
								<td class="px-6 py-5 text-sm text-on-surface-variant">Oct
									24, 2023</td>
								<td class="px-6 py-5"><span
									class="bg-tertiary-fixed text-on-tertiary-fixed-variant px-3 py-1 rounded-full text-xs font-semibold">Reviewing</span>
								</td>
								<td class="px-6 py-5 text-right space-x-2 whitespace-nowrap">
									<button
										class="inline-flex items-center gap-1 px-3 py-1.5 rounded-lg border border-primary text-primary font-bold text-xs hover:bg-primary/5 transition-all"
										onclick="document.getElementById('verification-modal').classList.remove('hidden')">
										<span class="material-symbols-outlined text-sm"
											data-icon="description">description</span> View Documents
									</button>
									<button
										class="inline-flex items-center justify-center h-8 px-4 rounded-lg bg-primary text-on-primary font-bold text-xs hover:opacity-90 transition-all">
										Approve</button>
								</td>
							</tr>
						</tbody>
					</table>
				</div>
			</section>
	</main>
</body>
</html>