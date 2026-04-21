<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<!DOCTYPE html>

<html lang="en">
<head>
<meta charset="utf-8" />
<meta content="width=device-width, initial-scale=1.0" name="viewport" />
<title>Login | Labour Hub</title>
<script
	src="https://cdn.tailwindcss.com?plugins=forms,container-queries"></script>
<link
	href="https://fonts.googleapis.com/css2?family=Manrope:wght@200..800&amp;family=Inter:wght@100..900&amp;display=swap"
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
					"headline" : [ "Manrope" ],
					"body" : [ "Inter" ],
					"label" : [ "Inter" ]
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

body {
	font-family: 'Inter', sans-serif;
	background-color: #f8f9fa;
}

h1, h2, h3 {
	font-family: 'Manrope', sans-serif;
}

.glass-panel {
	background: rgba(255, 255, 255, 0.8);
	backdrop-filter: blur(20px);
	-webkit-backdrop-filter: blur(20px);
}
</style>
</head>
<body class="bg-surface text-on-surface min-h-screen flex flex-col">
	<nav class="absolute top-8 left-8 z-50">
		<a
			class="flex items-center gap-2 text-primary font-bold text-sm hover:opacity-80 transition-all group"
			href="index"> <span
			class="material-symbols-outlined text-lg group-hover:-translate-x-1 transition-transform"
			data-icon="arrow_back">arrow_back</span> <span
			class="font-label tracking-wide uppercase text-xs">Back to
				Home</span>
		</a>
	</nav>
	<!-- Suppressing Navigation Shell for Focused Transactional Journey -->
	<main class="flex-grow flex items-center justify-center px-6 py-12">
		<div class="w-full max-w-md">
			<!-- Branding Anchor -->
			<div class="text-center mb-10">
				<div
					class="inline-flex items-center justify-center w-16 h-16 rounded-xl bg-primary-container mb-6 shadow-sm">
					<span class="material-symbols-outlined text-on-primary text-3xl"
						data-icon="handyman" style="font-variation-settings: 'FILL' 1;">handyman</span>
				</div>
				<h1
					class="text-3xl font-extrabold tracking-tighter text-primary mb-2">Digital
					Labour Hub</h1>
				<p class="text-on-surface-variant font-label text-sm tracking-wide">The
					Editorial Concierge for Skilled Labour</p>
			</div>
			<!-- Login Card -->
			<div
				class="bg-surface-container-lowest rounded-xl p-8 shadow-[0_32px_48px_-4px_rgba(25,28,29,0.05)] border border-outline-variant/10">
				<div class="mb-8">
					<h2 class="text-xl font-bold text-on-surface mb-1">Welcome
						back</h2>
					<p class="text-outline text-sm">Sign in to manage your
						appointments and profile.</p>
				</div>
			<%
				String errorMsg = (String) request.getAttribute("errorMsg");
				String successMsg = (String) request.getAttribute("successMsg");
				%>

				<%
				if (errorMsg != null) {
				%>
				<div
					class="mb-6 p-4 rounded-lg bg-red-50 border border-red-200 text-red-700 flex items-center gap-3 shadow-sm">
					<span class="material-symbols-outlined text-red-500">error</span> <span
						class="font-medium"><%=errorMsg%></span>
				</div>
				<%
				}
				%>

				<%
				if (successMsg != null) {
				%>
				<div
					class="mb-6 p-4 rounded-lg bg-green-50 border border-green-200 text-green-700 flex items-center gap-3 shadow-sm">
					<span class="material-symbols-outlined text-green-500">check_circle</span>
					<span class="font-medium"><%=successMsg%></span>
				</div>
				<%
				}
				%>
				<form action="login" class="space-y-6" method="POST">
					<!-- Email Field -->
					<div class="space-y-2">
						<label
							class="block text-label font-semibold text-on-surface-variant text-sm ml-1"
							for="email">Email Address</label>
						<div class="relative group">
							<div
								class="absolute inset-y-0 left-0 pl-4 flex items-center pointer-events-none">
								<span class="material-symbols-outlined text-outline text-lg"
									data-icon="mail">mail</span>
							</div>
							<input
								class="w-full pl-11 pr-4 py-3 bg-surface-container-low border-none rounded-lg focus:ring-2 focus:ring-primary/20 focus:bg-white transition-all text-on-surface placeholder:text-outline/50"
								id="email" name="email" placeholder="name@example.com"
								required="" type="email" />
						</div>
					</div>
					<!-- Password Field -->
					<div class="space-y-2">
						<div class="flex justify-between items-center ml-1">
							<label
								class="block text-label font-semibold text-on-surface-variant text-sm"
								for="password">Password</label> <a
								class="text-primary text-xs font-bold hover:underline" href="#">Forgot
								password?</a>
						</div>
						<div class="relative group">
							<div
								class="absolute inset-y-0 left-0 pl-4 flex items-center pointer-events-none">
								<span class="material-symbols-outlined text-outline text-lg"
									data-icon="lock">lock</span>
							</div>
							<input
								class="w-full pl-11 pr-4 py-3 bg-surface-container-low border-none rounded-lg focus:ring-2 focus:ring-primary/20 focus:bg-white transition-all text-on-surface placeholder:text-outline/50"
								id="password" name="password" placeholder="••••••••" required=""
								type="password" />
						</div>
					</div>
		
					<!-- Submit Button -->
					<button
						class="w-full bg-gradient-to-r from-primary to-primary-container text-on-primary font-bold py-4 rounded-lg shadow-lg shadow-primary/20 hover:opacity-90 active:scale-[0.98] transition-all flex items-center justify-center gap-2"
						type="submit">
						Sign In <span class="material-symbols-outlined text-lg"
							data-icon="arrow_forward">arrow_forward</span>
					</button>
				</form>
				<!-- Footnote Links -->
				<div class="mt-10 text-center">
					<p class="text-outline text-sm">
						Don't have an account? <a
							class="text-primary font-bold hover:underline ml-1"
							href="user_registration">Register Now</a>
					</p>
				</div>

			</div>
			<!-- Bottom decorative element -->
			<div class="mt-12 flex justify-center items-center gap-8">
				<div class="flex items-center gap-2 text-outline/60">
					<span class="material-symbols-outlined text-sm"
						data-icon="verified_user">verified_user</span> <span
						class="text-[10px] font-bold uppercase tracking-widest">Secure
						Portal</span>
				</div>
				<div class="flex items-center gap-2 text-outline/60">
					<span class="material-symbols-outlined text-sm"
						data-icon="encrypted">encrypted</span> <span
						class="text-[10px] font-bold uppercase tracking-widest">SSL
						Encrypted</span>
				</div>
			</div>
		</div>
	</main>
	<!-- Simple Footer for Transactional Page -->
	<footer class="py-8 px-12 border-t border-outline-variant/5">
		<div
			class="max-w-7xl mx-auto flex flex-col md:flex-row justify-between items-center gap-4">
			<p
				class="text-[10px] font-body uppercase tracking-widest text-outline">©
				2024 Digital Labour Hub. The Editorial Concierge.</p>
			<div class="flex gap-6">
				<a
					class="text-[10px] font-body uppercase tracking-widest text-outline hover:text-primary transition-colors"
					href="#">Privacy</a> <a
					class="text-[10px] font-body uppercase tracking-widest text-outline hover:text-primary transition-colors"
					href="#">Terms</a> <a
					class="text-[10px] font-body uppercase tracking-widest text-outline hover:text-primary transition-colors"
					href="#">Support</a>
			</div>
		</div>
	</footer>
	<!-- Background Decoration -->
	<div
		class="fixed top-0 right-0 -z-10 w-1/2 h-full opacity-20 pointer-events-none">
		<div
			class="absolute top-1/4 right-0 w-[500px] h-[500px] bg-primary-fixed-dim rounded-full blur-[120px]"></div>
		<div
			class="absolute bottom-1/4 right-1/4 w-[300px] h-[300px] bg-secondary-fixed rounded-full blur-[100px]"></div>
	</div>
</body>
</html>