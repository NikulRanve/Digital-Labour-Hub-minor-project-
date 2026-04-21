

<%@page import="java.util.List"%>
<%@page import="com.cdgi.pojo.User"%>
<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<!DOCTYPE html>

<html class="light" lang="en">
<head>
<meta charset="utf-8" />
<meta content="width=device-width, initial-scale=1.0" name="viewport" />
<title>User Management - Digital Labour Hub</title>
<script
	src="https://cdn.tailwindcss.com?plugins=forms,container-queries"></script>
<link
	href="https://fonts.googleapis.com/css2?family=Inter:wght@400;500;600;700&amp;family=Manrope:wght@400;500;600;700;800&amp;display=swap"
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
			},
		},
	}
</script>
<style>
.material-symbols-outlined {
	font-variation-settings: 'FILL' 0, 'wght' 400, 'GRAD' 0, 'opsz' 24;
}

body {
	font-family: 'Inter', sans-serif;
	background-color: #f8f9fa;
}

h1, h2, h3, .brand-font {
	font-family: 'Manrope', sans-serif;
}
</style>
</head>
<body class="bg-surface text-on-surface">
	<!-- SideNavBar -->
	<aside
		class="h-screen w-64 fixed left-0 top-0 overflow-y-auto bg-slate-50 dark:bg-slate-950 shadow-[20px_0_40px_-15px_rgba(0,0,0,0.05)] flex flex-col p-6 gap-2 z-50">
		<div class="mb-8 px-2">
			<h1
				class="font-['Manrope'] font-extrabold text-blue-900 dark:text-blue-100 tracking-tighter text-xl">Digital
				Labour Hub</h1>
			<p class="text-xs font-['Manrope'] tracking-tight text-slate-500">Admin
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
					class="w-8 h-8 rounded-full bg-slate-200"
					data-alt="close-up professional headshot of a senior administrator with a friendly expression in a modern office setting"
					src="https://lh3.googleusercontent.com/aida-public/AB6AXuCN0DTMmFwcllLEqJbxRaRYWmZzeMDABiIFBKZ1CiCDT0UycSKa_AYBavMrtyR8_4l9avbooSXftoIyex1zIVh6TEbyj4KBse2PxAccjLFz6bIFUeOJfYJrGFcd3tveMXhC_HdANVcTkyHru4GslePRv2aZj5l0PioLOrNei5qgMBklJp2bfAi7lgI3WJljJ9dNwTdxnJ26Qg3RJZw1teprsKgvXKqJdx3oOaluAI0UKJP--haE0oiarEbtBot5-9MrurljpUcgOt0" />
				<div class="overflow-hidden">
					<p class="text-sm font-semibold truncate">Alex Rivera</p>
					<p class="text-xs text-slate-500 truncate">Super Admin</p>
				</div>
			</div>
		</div>
	</aside>
	<!-- TopAppBar -->
	<header
		class="fixed top-0 right-0 h-16 z-40 bg-white/80 dark:bg-slate-900/80 backdrop-blur-md flex items-center justify-between pl-72 pr-8 w-full">

		<div class="flex items-center gap-4 flex-1 max-w-xl">
			<form action="admin-user-management" method="get">
				<div class="relative w-full">
					<span
						class="material-symbols-outlined absolute left-3 top-1/2 -translate-y-1/2 text-outline">search</span>

					<input name="keyword"
						class="w-full pl-10 pr-4 py-2 rounded-lg bg-surface-container-low border-none focus:ring-2 focus:ring-primary-fixed transition-all placeholder:text-outline text-on-surface"
						placeholder="Search users by name, email or ID..." type="text" />

				</div>
			</form>
		</div>
		<div class="flex items-center gap-6 ml-4">
			<button
				class="relative text-slate-600 hover:text-blue-500 transition-colors">
				<span class="material-symbols-outlined" data-icon="notifications">notifications</span>
				<span class="absolute top-0 right-0 w-2 h-2 bg-error rounded-full"></span>
			</button>
			<button class="text-slate-600 hover:text-blue-500 transition-colors">
				<span class="material-symbols-outlined" data-icon="settings">settings</span>
			</button>
		</div>
	</header>
	<!-- Main Content Canvas -->
	<main class="pl-64 pt-16 min-h-screen">
		<div class="p-8 max-w-7xl mx-auto">
			<!-- Header Section -->
			<div class="flex justify-between items-end mb-10">
				<div>
					<h2
						class="text-3xl font-extrabold font-headline tracking-tight text-on-surface">User
						Management</h2>
					<p class="text-on-surface-variant mt-1 font-body">Review,
						manage and verify platform participants.</p>
				</div>
				<div class="flex gap-3">
					<button
						class="px-5 py-2.5 bg-surface-container-high text-on-surface rounded-lg font-semibold text-sm hover:bg-surface-container-highest transition-colors flex items-center gap-2">
						<span class="material-symbols-outlined text-sm">filter_list</span>
						Filters
					</button>
					<button
						class="px-5 py-2.5 bg-gradient-to-r from-primary to-primary-container text-on-primary rounded-lg font-semibold text-sm shadow-md hover:opacity-90 transition-opacity flex items-center gap-2">
						<span class="material-symbols-outlined text-sm">person_add</span>
						Add New User
					</button>
				</div>
			</div>
			<!-- Bento Stats Grid -->
			<div class="grid grid-cols-1 md:grid-cols-4 gap-6 mb-12">
				<div
					class="col-span-1 bg-surface-container-lowest p-6 rounded-xl shadow-sm border-b-4 border-primary">
					<span class="text-label-md text-outline font-medium">Total
						Users</span>
					<div class="flex items-baseline gap-2">
						<span class="text-3xl font-bold font-headline">${totalUsers}</span>
						<span class="text-xs text-emerald-600 font-bold">+12%</span>
					</div>
				</div>
				<div
					class="col-span-1 bg-surface-container-lowest p-6 rounded-xl shadow-sm border-b-4 border-primary">
					<span class="text-label-md text-outline font-medium">Active
						Now</span>
					<div class="flex items-baseline gap-2">
						<span class="text-3xl font-bold font-headline">${activeUsers}</span>
						<div class="flex gap-1">
							<span class="w-2 h-2 rounded-full bg-emerald-500 animate-pulse"></span>
						</div>
					</div>
				</div>
				<div
					class="col-span-1 bg-surface-container-lowest p-6 rounded-xl shadow-sm border-b-4 border-primary">
					<span class="text-label-md text-outline font-medium">New
						Today</span>
					<div class="flex items-baseline gap-2">
						<span class="text-3xl font-bold font-headline">${todayUsers}</span>
						<span class="text-xs text-slate-400">stable</span>
					</div>
				</div>
				<div
					class="col-span-1 bg-surface-container-lowest p-6 rounded-xl shadow-sm border-b-4 border-primary">
					<span class="text-label-md text-outline font-medium">Reported</span>
					<div class="flex items-baseline gap-2">
						<span class="text-3xl font-bold font-headline">${blockedUsers}</span>
						<span class="text-xs text-error font-bold">-2</span>
					</div>
				</div>
			</div>
			<!-- Main Table Section (Editorial Concierge Style) -->
			<section
				class="bg-surface-container-lowest rounded-xl shadow-[0_32px_48px_-4px_rgba(25,28,29,0.04)] overflow-hidden">
				<div class="overflow-x-auto">
					<table class="w-full text-left border-collapse">
						<thead>
							<tr class="bg-surface-container-low/50">
								<th
									class="px-6 py-5 text-label-md font-bold text-outline-variant uppercase tracking-widest text-[10px] text-center">S
									no.</th>
								<th
									class="px-6 py-5 text-label-md font-bold text-outline-variant uppercase tracking-widest text-[10px] text-center">User
									Name</th>
								<th
									class="px-6 py-5 text-label-md font-bold text-outline-variant uppercase tracking-widest text-[10px] text-center">Email</th>
								<th
									class="px-6 py-5 text-label-md font-bold text-outline-variant uppercase tracking-widest text-[10px] text-center">Join
									Date</th>
								<th
									class="px-6 py-5 text-label-md font-bold text-outline-variant uppercase tracking-widest text-[10px] text-center">Total
									Bookings</th>
								<th
									class="px-6 py-5 text-label-md font-bold text-outline-variant uppercase tracking-widest text-[10px] text-center">Phone
									No</th>
								<th
									class="px-6 py-5 text-label-md font-bold text-outline-variant uppercase tracking-widest text-[10px] text-center">Actions</th>
							</tr>
						</thead>
						<tbody class="divide-y divide-surface-container">

							<%
							List<User> user = (List<User>) request.getAttribute("users");

							if (user != null) {
								int i = 0;
								for (User u : user) {
									i++;
							%>

							<tr
								class="group hover:bg-surface-container-low transition-colors">

								<!-- Name -->
								<td class="px-6 py-5 ">
									<div class="flex items-center gap-3">

										<div>

											<p class="px-6 py-5 text-sm">
												<%=i%>
											</p>
										</div>
									</div>
								</td>
								<td class="px-6 py-5">
									<div class="flex items-center gap-3">

										<div>

											<p class="px-6 py-5 text-sm">
												<%=u.getName()%>
											</p>
										</div>
									</div>
								</td>

								<!-- Email -->
								<td class="px-6 py-5 text-sm"><%=u.getEmail()%></td>

								<!-- Date -->
								<td class="px-6 py-5 text-sm"><%=u.getCreatedAt()%></td>

								<!-- Bookings -->
								<td class="px-6 py-5"><span class="px-6 py-5 text-sm"><%=u.getTotal_booking()%></span>
								</td>

								<!-- phone no -->
								<td class="px-6 py-5"><span class="px-6 py-5 text-sm"><%=u.getPhone()%></span>
								</td>

								<td class="px-6 py-5 text-right">
    <div class="flex justify-end gap-2">

        <!-- Block / Unblock -->
        <a href="toggle-user?email=<%=u.getEmail()%>"
           onclick="return confirm('Are You Sure?')"
           class="flex items-center gap-1 px-3 py-1.5 rounded-lg text-xs font-bold transition-colors
           <%= "ACTIVE".equals(u.getStatus()) 
               ? "border border-red-300 text-red-600 hover:bg-red-50" 
               : "border border-green-300 text-green-600 hover:bg-green-50" %>">

            <span class="material-symbols-outlined text-lg">
                <%= "ACTIVE".equals(u.getStatus()) ? "block" : "check_circle" %>
            </span>

            <%= "ACTIVE".equals(u.getStatus()) ? "Block" : "Unblock" %>
        </a>

        <!-- Delete Button -->
        <a href="delete-user?email=<%=u.getEmail()%>"
           onclick="return confirm('Are you sure you want to delete this user?')"
           class="flex items-center gap-1 px-3 py-1.5 rounded-lg text-xs font-bold 
           border border-gray-300 text-gray-700 hover:bg-gray-100 transition-colors">

            <span class="material-symbols-outlined text-lg">delete</span>
            Delete
        </a>

    </div>

							</tr>


							<%
							}
							}
							%>

							<%
							if (user == null || user.isEmpty()) {
							%>
							<tr>
								<td colspan="7" class="text-center py-6 text-gray-500">No
									user found ❌</td>
							</tr>
							<%
							}
							%>

						</tbody>
					</table>

				</div>
				<!-- Pagination Footer -->
				<div
					class="px-6 py-4 flex items-center justify-between border-t border-surface-container bg-surface-container-lowest">
					<p class="text-sm text-outline font-body">
						Showing <span class="font-bold text-on-surface">1 - 10</span> of
						12,842 users
					</p>
					<div class="flex gap-1">
						<button
							class="p-2 rounded-lg hover:bg-surface-container text-outline transition-colors">
							<span class="material-symbols-outlined">chevron_left</span>
						</button>
						<button
							class="w-10 h-10 rounded-lg bg-primary text-on-primary font-bold text-sm">1</button>
						<button
							class="w-10 h-10 rounded-lg hover:bg-surface-container text-on-surface font-semibold text-sm transition-colors">2</button>
						<button
							class="w-10 h-10 rounded-lg hover:bg-surface-container text-on-surface font-semibold text-sm transition-colors">3</button>
						<span
							class="w-10 h-10 flex items-center justify-center text-outline text-sm">...</span>
						<button
							class="w-10 h-10 rounded-lg hover:bg-surface-container text-on-surface font-semibold text-sm transition-colors">1284</button>
						<button
							class="p-2 rounded-lg hover:bg-surface-container text-outline transition-colors">
							<span class="material-symbols-outlined">chevron_right</span>
						</button>
					</div>
				</div>
			</section>
		</div>
	</main>
</body>
</html>