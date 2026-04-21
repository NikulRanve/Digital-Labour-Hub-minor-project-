
<!DOCTYPE html>
<%@page import="java.util.List"%>
<%@page import="com.cdgi.pojo.Worker"%>
<html class="light" lang="en">
<head>
<meta charset="utf-8" />
<meta content="width=device-width, initial-scale=1.0" name="viewport" />
<title>Worker Management | Digital Labour Hub</title>
<script
	src="https://cdn.tailwindcss.com?plugins=forms,container-queries"></script>
<link
	href="https://fonts.googleapis.com/css2?family=Manrope:wght@400;600;700;800&amp;family=Inter:wght@400;500;600&amp;family=Material+Symbols+Outlined:wght,FILL@100..700,0..1&amp;display=swap"
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
	-webkit-backdrop-filter: blur(20px);
}
</style>
</head>
<body class="bg-surface font-body text-on-surface antialiased">
	<!-- SideNavBar -->
	<aside
		class="h-screen w-64 fixed left-0 top-0 overflow-y-auto bg-slate-50 dark:bg-slate-950 flex flex-col p-6 gap-2 shadow-[20px_0_40px_-15px_rgba(0,0,0,0.05)] z-50 font-['Manrope'] tracking-tight">
		<div class="mb-10 px-2">
			<h1
				class="font-['Manrope'] font-extrabold text-blue-900 dark:text-blue-100 tracking-tighter text-xl">Digital
				Labour Hub</h1>
			<p class="text-xs text-slate-500 font-medium">Admin Portal</p>
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
		<div
			class="mt-auto pt-6 border-t border-slate-100 dark:border-slate-800">
			<div class="flex items-center gap-3 px-2">
				<div
					class="w-10 h-10 rounded-full bg-primary-fixed flex items-center justify-center overflow-hidden">
					<img alt="Digital Labour Hub Logo"
						class="w-full h-full object-cover"
						data-alt="professional portrait of a senior administrator in a modern office setting, soft natural lighting"
						src="https://lh3.googleusercontent.com/aida-public/AB6AXuCg32cV4IoX7T9wJey4kbnAHTZcNYUFQuMJ1XyYIRDC0s2pAzX6hCtipoo1IbQvm1oQLWUiNMBzIBnPpJtWIVuyAgsOVErFQ8_8pfHxh_FRFjOGA9pBtKBHMb6waVkOpnBhpy_ETfys_aSsF6Cx7Yi5IncvJ1LTlQynaG1sXaixsw1AdkCnonBmX3mkleyOt_dEDzC-I0DGESV4YoBKe6dIWSSEyKXPSAiYxLzUBaNyRYZnLd3Iwjxuvl8XB45pDlBbg_0Zoiw3_JU" />
				</div>
				<div>
					<p class="text-sm font-bold text-on-surface">Alex Rivera</p>
					<p class="text-xs text-on-surface-variant">System Admin</p>
				</div>
			</div>
		</div>
	</aside>
	<!-- TopAppBar -->
	<header
		class="fixed top-0 right-0 h-16 z-40 bg-white/80 dark:bg-slate-900/80 backdrop-blur-md flex items-center justify-between pl-72 pr-8 w-full font-['Inter'] text-sm">
		<div class="flex items-center gap-4 flex-1 max-w-xl">
			<form action="admin-worker-management" method="get">
				<div class="relative w-full">
					<span
						class="material-symbols-outlined absolute left-3 top-1/2 -translate-y-1/2 text-outline">search</span>
					<input
						class="w-full pl-10 pr-4 py-2 rounded-lg bg-surface-container-low border-none focus:ring-2 focus:ring-primary-fixed transition-all placeholder:text-outline text-on-surface"
						placeholder="Search workers by name, trade or ID..." type="text" />
				</div>
			</form>
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
	<!-- Main Content -->
	<main class="pl-64 pt-16 min-h-screen">
		<div class="p-8 max-w-[1400px] mx-auto">
			<!-- Page Header -->
			<div class="flex items-end justify-between mb-10">
				<div>
					<h2
						class="font-headline font-extrabold text-3xl text-on-surface tracking-tight mb-1">Worker
						Directory</h2>
					<p class="text-on-surface-variant font-medium">Manage
						professional artisans and independent contractors.</p>
				</div>
				<div class="flex gap-3">
					<button
						class="px-5 py-2.5 rounded-lg bg-secondary-fixed text-on-secondary-fixed font-semibold hover:bg-secondary-container transition-all flex items-center gap-2">
						<span class="material-symbols-outlined text-[20px]">filter_list</span>
						Filters
					</button>
					<button
						class="px-5 py-2.5 rounded-lg bg-gradient-to-r from-primary to-primary-container text-on-primary font-semibold shadow-lg shadow-primary/20 hover:scale-[1.02] transition-all flex items-center gap-2">
						<span class="material-symbols-outlined text-[20px]">person_add</span>
						Add New Worker
					</button>
				</div>
			</div>
			<!-- Stats Overview - Bento Style -->
			<div class="grid grid-cols-1 md:grid-cols-4 gap-6 mb-12">
				<div
					class="col-span-1 bg-surface-container-lowest p-6 rounded-xl shadow-sm border-b-4 border-primary">
					<p
						class="text-label-md text-outline font-semibold mb-1 uppercase tracking-wider text-[10px]">Total
						Workforce</p>
					<h3 class="text-3xl font-headline font-bold text-on-surface">${totalWorkers}</h3>
					<div
						class="mt-4 flex items-center gap-2 text-primary font-bold text-sm">
						<span class="material-symbols-outlined">trending_up</span> <span>12%
							this month</span>
					</div>
				</div>
				<div
					class="col-span-1 bg-surface-container-lowest p-6 rounded-xl shadow-sm border-b-4 border-tertiary">
					<p
						class="text-label-md text-outline font-semibold mb-1 uppercase tracking-wider text-[10px]">Pending
						Approval</p>
					<h3 class="text-3xl font-headline font-bold text-on-surface">${pendingWorkers}</h3>
					<div
						class="mt-4 flex items-center gap-2 text-tertiary font-bold text-sm">
						<span class="material-symbols-outlined">hourglass_empty</span> <span>Urgent
							review needed</span>
					</div>
				</div>
				<div
					class="col-span-1 bg-surface-container-lowest p-6 rounded-xl shadow-sm border-b-4 border-secondary">
					<p
						class="text-label-md text-outline font-semibold mb-1 uppercase tracking-wider text-[10px]">Avg.
						Performance</p>
					<h3 class="text-3xl font-headline font-bold text-on-surface">${avgRating}</h3>
					<div
						class="mt-4 flex items-center gap-2 text-secondary font-bold text-sm">
						<span class="material-symbols-outlined"
							style="font-variation-settings: 'FILL' 1;">star</span> <span>Across
							all trades</span>
					</div>
				</div>
				<div
					class="col-span-1 bg-surface-container-lowest p-6 rounded-xl shadow-sm border-b-4 border-on-secondary-container">
					<p
						class="text-label-md text-outline font-semibold mb-1 uppercase tracking-wider text-[10px]">Active
						Today</p>
					<h3 class="text-3xl font-headline font-bold text-on-surface">${activeWorkers}</h3>
					<div
						class="mt-4 flex items-center gap-2 text-on-secondary-container font-bold text-sm">
						<span class="material-symbols-outlined">bolt</span> <span>70%
							utilization rate</span>
					</div>
				</div>
			</div>
			<!-- Main Table Section -->
			<div
				class="bg-surface-container-lowest rounded-xl shadow-sm overflow-hidden border border-outline-variant/10">

				<table class="w-full text-left border-collapse">
					<thead>
						<tr
							class="bg-surface-container-low/30 border-b border-outline-variant/20">
							<th
								class="px-6 py-4 font-headline font-bold text-sm text-outline uppercase tracking-wider">Worker
								Profile</th>
							<th
								class="px-6 py-4 font-headline font-bold text-sm text-outline uppercase tracking-wider">Trade/Skills</th>
							<th
								class="px-6 py-4 font-headline font-bold text-sm text-outline uppercase tracking-wider text-center">Rating</th>
							<th
								class="px-6 py-4 font-headline font-bold text-sm text-outline uppercase tracking-wider">Verification</th>
							<th
								class="px-6 py-4 font-headline font-bold text-sm text-outline uppercase tracking-wider">Availability</th>
							<th
								class="px-6 py-4 font-headline font-bold text-sm text-outline uppercase tracking-wider text-right">Actions</th>
						</tr>
					</thead>
					<tbody class="divide-y divide-outline-variant/10">

						<%
						List<Worker> worker = (List<Worker>) request.getAttribute("workers");

						if (worker != null) {
							int i = 0;
							for (Worker w : worker) {
								i++;
						%>

						<tr
							class="hover:bg-surface-container-low/20 transition-colors group">

							<!-- 👤 Worker Profile -->
							<td class="px-6 py-5">
								<div class="flex items-center gap-4">
									<div class="relative">
										<img
											class="w-12 h-12 rounded-lg object-cover ring-2 ring-white shadow-md"
											src="profile/<%=w.getProfilephoto()%>" alt="worker image" />

										<div
											class="absolute -bottom-1 -right-1 w-4 h-4 border-2 border-white rounded-full
    <%="AVAILABLE".equals(w.getAvailability()) ? "bg-green-500" : "bg-gray-400"%>">
										</div>
									</div>

									<div>
										<p class="font-headline font-bold text-on-surface"><%=w.getFirstName() + w.getLastName()%></p>
										<p class="text-xs text-outline font-medium">ID: #${w.id}</p>
									</div>
								</div>
							</td>

							<!-- 🛠 Skills -->
							<td class="px-6 py-5">
								<div class="flex flex-wrap gap-2">
									<span
										class="px-2 py-1 rounded bg-secondary-fixed text-[10px] font-extrabold uppercase">
										<%=w.getSkills()%>
									</span> <span
										class="px-2 py-1 rounded bg-surface-container-high text-[10px] font-bold uppercase">
										${w.secondarySkill} </span>
								</div>
							</td>

							<!-- ⭐ Rating -->
							<td class="px-6 py-5 text-center">
								<div class="flex flex-col items-center">
									<div class="flex items-center gap-1 text-tertiary-container">
										<span class="material-symbols-outlined text-lg"
											style="font-variation-settings: 'FILL' 1;">star</span> <span
											class="font-bold text-sm"><%=w.getRating()%></span>
									</div>
									<span class="text-[10px] text-outline font-medium">
										(${w.totalReviews} reviews) </span>
								</div>
							</td>

							<!-- ✅ Verification -->
							<td class="px-6 py-5"><span
								class="inline-flex items-center gap-1.5 px-3 py-1 rounded-full text-xs font-bold
                             <%="APPROVED".equals(w.getStatus()) ? "bg-green-100 text-green-700" : "bg-red-100 text-red-600"%> ">

									<span class="material-symbols-outlined text-[14px]"> <%="APPROVED".equals(w.getStatus()) ? "verified" : "error"%>
								</span> <%="APPROVED".equals(w.getStatus()) ? "Verified" : "Not Verified"%>
							</span></td>

							<!-- 📍 Availability -->
							<td class="px-6 py-5"><span
								class="flex items-center gap-2 text-xs font-semibold text-on-surface">
									<span
									class="w-2 h-2 rounded-full 
                            <%="AVAILABLE".equals(w.getAvailability()) ? "bg-green-500" : "bg-gray-400"%>"></span>

									<%=w.getAvailability()%>
							</span></td>

							<!-- ⚙ Actions -->
							<td class="px-6 py-5 text-right">
								<div class="flex justify-end gap-2">

									<!-- 📄 View Documents -->
									<a href="view-documents?id=${w.email}"
										class="p-2 rounded-lg hover:bg-surface-container-high text-outline hover:text-primary">
										<span class="material-symbols-outlined">description</span>
									</a>

									<!-- ✏ Edit -->
									<a href="edit-worker?id=${w.email}"
										class="p-2 rounded-lg hover:bg-surface-container-high text-outline hover:text-primary">
										<span class="material-symbols-outlined">edit_note</span>
									</a>

									<!-- 🚫 Block / Unblock -->
									<a href="toggle-worker?id=<%=w.getEmail() %>"
										onclick="return confirm('Are you sure?')"
										class="flex items-center gap-1 px-3 py-1.5 rounded-lg text-xs font-bold transition-colors
        <%= "ACTIVE".equals(w.getLogstatus()) 
               ? "border border-red-300 text-red-600 hover:bg-red-50" 
               : "border border-green-300 text-green-600 hover:bg-green-50" %>">

										<span class="material-symbols-outlined text-lg">
											 <%= "ACTIVE".equals(w.getLogstatus()) ? "block" : "check_circle" %></span>

										 <%= "ACTIVE".equals(w.getLogstatus()) ? "Block" : "Unblock" %>
									</a>

									<!-- 🗑 Delete -->
									<a href="delete-worker?id=${w.email}"
										onclick="return confirm('Are you sure you want to delete this worker?')"
										class="flex items-center gap-1 px-3 py-1.5 rounded-lg text-xs font-bold 
       border border-gray-300 text-gray-700 hover:bg-gray-100 transiti.emailcolors">

										<span class="material-symbols-outlined text-lg">delete</span>
										Delete
									</a>

								</div>
							</td>

						</tr>
						<%
						}
						}
						%>

					</tbody>



				</table>
				<!-- Pagination -->
				<div
					class="p-6 bg-surface-container-low/30 flex items-center justify-between">
					<p class="text-xs text-outline font-medium">Showing 1 to 10 of
						1,284 workers</p>
					<div class="flex items-center gap-2">
						<button
							class="w-10 h-10 rounded-lg bg-surface-container-high text-outline flex items-center justify-center hover:text-on-surface transition-all">
							<span class="material-symbols-outlined">chevron_left</span>
						</button>
						<button
							class="w-10 h-10 rounded-lg bg-primary text-on-primary flex items-center justify-center font-bold text-xs">1</button>
						<button
							class="w-10 h-10 rounded-lg bg-surface-container-lowest text-outline flex items-center justify-center hover:bg-surface-container-high transition-all font-bold text-xs">2</button>
						<button
							class="w-10 h-10 rounded-lg bg-surface-container-lowest text-outline flex items-center justify-center hover:bg-surface-container-high transition-all font-bold text-xs">3</button>
						<button
							class="w-10 h-10 rounded-lg bg-surface-container-high text-outline flex items-center justify-center hover:text-on-surface transition-all">
							<span class="material-symbols-outlined">chevron_right</span>
						</button>
					</div>
				</div>
			</div>
			<!-- Recent Verification Activity - Horizontal Card -->
			<div class="mt-12">
				<h4 class="font-headline font-bold text-lg text-on-surface mb-6">Recent
					Pending Documents</h4>
				<div class="flex gap-6 overflow-x-auto pb-4 no-scrollbar">
					<div
						class="min-w-[320px] bg-surface-container-lowest p-5 rounded-xl shadow-sm flex items-start gap-4 border border-outline-variant/10">
						<div
							class="w-12 h-12 rounded-lg bg-tertiary-fixed flex items-center justify-center text-tertiary">
							<span class="material-symbols-outlined">assignment_ind</span>
						</div>
						<div class="flex-1">
							<p class="font-bold text-on-surface text-sm">Identity
								Verification</p>
							<p class="text-xs text-on-surface-variant mb-3">Submitted by
								Robert Fox</p>
							<div class="flex gap-2">
								<button
									class="text-[10px] px-3 py-1 bg-primary text-on-primary rounded font-bold uppercase">Review</button>
								<button
									class="text-[10px] px-3 py-1 bg-surface-container-high text-outline rounded font-bold uppercase">Dismiss</button>
							</div>
						</div>
					</div>
					<div
						class="min-w-[320px] bg-surface-container-lowest p-5 rounded-xl shadow-sm flex items-start gap-4 border border-outline-variant/10">
						<div
							class="w-12 h-12 rounded-lg bg-secondary-fixed flex items-center justify-center text-on-secondary-fixed">
							<span class="material-symbols-outlined">verified</span>
						</div>
						<div class="flex-1">
							<p class="font-bold text-on-surface text-sm">Trade
								Certificate</p>
							<p class="text-xs text-on-surface-variant mb-3">Submitted by
								Jenny Wilson</p>
							<div class="flex gap-2">
								<button
									class="text-[10px] px-3 py-1 bg-primary text-on-primary rounded font-bold uppercase">Review</button>
								<button
									class="text-[10px] px-3 py-1 bg-surface-container-high text-outline rounded font-bold uppercase">Dismiss</button>
							</div>
						</div>
					</div>
					<div
						class="min-w-[320px] bg-surface-container-lowest p-5 rounded-xl shadow-sm flex items-start gap-4 border border-outline-variant/10">
						<div
							class="w-12 h-12 rounded-lg bg-primary-fixed flex items-center justify-center text-primary">
							<span class="material-symbols-outlined">policy</span>
						</div>
						<div class="flex-1">
							<p class="font-bold text-on-surface text-sm">Insurance
								Renewal</p>
							<p class="text-xs text-on-surface-variant mb-3">Submitted by
								Cody Fisher</p>
							<div class="flex gap-2">
								<button
									class="text-[10px] px-3 py-1 bg-primary text-on-primary rounded font-bold uppercase">Review</button>
								<button
									class="text-[10px] px-3 py-1 bg-surface-container-high text-outline rounded font-bold uppercase">Dismiss</button>
							</div>
						</div>
					</div>
				</div>
			</div>
		</div>
	</main>
</body>
</html>