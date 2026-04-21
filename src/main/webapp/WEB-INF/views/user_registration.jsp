<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<!DOCTYPE html>

<html lang="en">
<head>
<meta charset="utf-8" />
<meta content="width=device-width, initial-scale=1.0" name="viewport" />
<title>Join Labour Hub | Create Your Professional Account</title>
<script
	src="https://cdn.tailwindcss.com?plugins=forms,container-queries"></script>
<link
	href="https://fonts.googleapis.com/css2?family=Manrope:wght@200;400;500;700;800&amp;family=Inter:wght@300;400;500;600&amp;display=swap"
	rel="stylesheet" />
<link
	href="https://fonts.googleapis.com/css2?family=Material+Symbols+Outlined:wght,FILL@100..700,0..1&amp;display=swap"
	rel="stylesheet" />
<link href="/css/style.css" rel="stylesheet" />
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
.glass-card {
	background: rgba(255, 255, 255, 0.8);
	backdrop-filter: blur(20px);
	-webkit-backdrop-filter: blur(20px);
}

.material-symbols-outlined {
	font-variation-settings: 'FILL' 0, 'wght' 400, 'GRAD' 0, 'opsz' 24;
}

.primary-gradient {
	background: linear-gradient(135deg, #003f87 0%, #0056b3 100%);
}
</style>
</head>
<body
	class="bg-surface font-body text-on-surface antialiased min-h-screen flex flex-col">

	<nav
		class="fixed top-0 w-full z-50 bg-white/80 backdrop-blur-md shadow-sm h-16 flex items-center px-8">
		<a
			class="flex items-center gap-1 text-primary hover:text-blue-700 font-medium transition-colors mr-auto"
			href="index"> <span
			class="material-symbols-outlined text-[20px]">arrow_back</span> <span
			class="text-sm">Back to Home</span>
		</a>
		<div class="flex items-center gap-2">
			<span
				class="text-2xl font-black tracking-tighter text-blue-900 font-headline">Digital Labour
				Hub</span>
		</div>
	</nav>
	<main
		class="flex-grow flex items-center justify-center pt-24 pb-12 px-6">
		<div
			class="w-full max-w-6xl grid grid-cols-1 lg:grid-cols-12 gap-0 overflow-hidden rounded-xl shadow-sm bg-surface-container-lowest">
			<!-- Left Branding/Visual Side -->
			<div
				class="hidden lg:flex lg:col-span-5 relative flex-col justify-end p-12 overflow-hidden">
				<div class="absolute inset-0 z-0">
					<img class="w-full h-full object-cover"
						data-alt="Modern high-end interior construction site with soft natural light hitting polished concrete and wood architectural details"
						src="https://lh3.googleusercontent.com/aida-public/AB6AXuAeaYDjK1qYltnaMG7RaPoFdWqwIs6l5O-e5f2fioXnFxUt7bUDHJywbyUR3XqRl9k2cV8FXzfcT_-YIkMiIjn_3YZkXAzS2MqsfwNTyu5N2LYPS6ls8nv_wpK5jyrDl29y6vz7LH1yARoS6oTNGW0LL3doKSIczi97J8C70nyXJKrH6oplBULIoIARgkSXYKRa5c1WboVuCFJkAca-7j66uz_aIUCTF4Y8d0hIAKrhlzgnPb6rJvZS_Gwsv716BNpxMo9377fQQ9Y" />
					<div class="absolute inset-0 bg-primary/40 backdrop-multiply"></div>
					<div
						class="absolute inset-0 bg-gradient-to-t from-primary via-primary/20 to-transparent"></div>
				</div>
				<div class="relative z-10 space-y-6">
					<div
						class="inline-flex items-center px-3 py-1 rounded-full bg-primary-fixed text-on-primary-fixed text-xs font-bold tracking-widest uppercase">
						The Editorial Concierge</div>
					<h1
						class="text-4xl font-extrabold font-headline leading-tight text-white tracking-tight">
						Elevate your craft with the digital elite.</h1>
					<p class="text-white/80 text-lg leading-relaxed max-w-sm">Join
						a curated network of verified artisans and skilled professionals
						bridging the gap between talent and premium demand.</p>
					<div class="flex gap-4 pt-4">
						<div class="flex -space-x-3">
							<img
								class="w-10 h-10 rounded-full border-2 border-primary object-cover"
								data-alt="Portrait of a smiling professional carpenter with warm lighting"
								src="https://lh3.googleusercontent.com/aida-public/AB6AXuD3StWne3yh5UFk0dXBZFOD7XeUfFUJhwDOfNnBewiZKXAXaWLxl_zCTBoVHIoEUqMIBuxDjDAUtRY5wwaNgPX_hStKI3VtaiXteRgmbAavq-cwahGljoomctR06mKKihCYBUt5Kmmwom-yA9XWTI2xm9pwCMyVHDOnFS2Ih5xSTTKdsXfvC2Tjrl0SRbZjkT3sNzfYRkKWOsudGfOblrHIvrFpvLSqK_rt9VVClKJPqiwIaujZtn0evFSUrfIhCXYDWvPm6ofZFRg" />
							<img
								class="w-10 h-10 rounded-full border-2 border-primary object-cover"
								data-alt="Portrait of a female architect in a bright studio"
								src="https://lh3.googleusercontent.com/aida-public/AB6AXuBQ15IE6NsJawjqxQmHQq_SqqqwL2qUz095JZPTm-4e5ctJ1A8Qbc5LecsZih_SfQ0cJn6a3YYeGwRFtfvUzHr8FwRwZxIyKTwoKXMvwR8UHkQRnAHvNWtC7qvqPXxJPPwWEg_bNWbWNd9cvp7vsLBslPXSLOz0HBFXCiY5U0SZGGNE4NBWcmW3u7Y6eoaJfnwsnq461p79kdCkq_1q8_bKZZ7MMfVclmH0pJMW3Dp5T4NzkwryGjQ3HAprnQIAopzi2jgcilXLggU" />
							<img
								class="w-10 h-10 rounded-full border-2 border-primary object-cover"
								data-alt="Portrait of a skilled electrician working on a circuit board"
								src="https://lh3.googleusercontent.com/aida-public/AB6AXuCDvTpRQc-t57HtRcOw2OVV3FC6ktPfawgWdCbaQMcPYoH_oNbdA7IOcYLMBqcJ_8GBLbuVDqIHomID1wwlt03OOv5BkzKKoLhRa79M6uMhlT9SKhPS98aecIGUgTjokADBBP03zqPSDsZ0s0eNLavU6g4H3iqEmrh74oNL__loPBTOXMpZC8G6HYeJM4LHomuFzZ7j67uas92JRfr8BIWh_ZrcONyAt3jIfZi_X1he9S678CU6ntIs9G-9UUQ7Q0eM6KL0IqOAe14" />
						</div>
						<div class="text-white/90 text-sm font-medium">
							<span class="block text-white font-bold">12,000+ Verified</span>
							Artisans active this month
						</div>
					</div>
				</div>
			</div>
			<!-- Right Form Side -->
			<div
				class="lg:col-span-7 p-8 md:p-16 flex flex-col justify-center bg-surface-container-lowest">
				<div class="max-w-md mx-auto w-full">
					<div class="mb-10">
						<h2
							class="text-3xl font-bold font-headline text-on-surface mb-2 tracking-tight">Create
							Account</h2>
						<p class="text-on-surface-variant font-body">Complete your
							profile to start receiving curated job opportunities.</p>
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
				%>	<form action="register" class="space-y-6" method="POST">
						<!-- Full Name -->
						<div class="space-y-2">
							<label
								class="block text-sm font-semibold font-label text-outline ml-1"
								for="name">Full Name</label>
							<div class="relative group">
								<div
									class="absolute inset-y-0 left-0 pl-4 flex items-center pointer-events-none text-outline group-focus-within:text-primary transition-colors">
									<span class="material-symbols-outlined text-[20px]">person</span>
								</div>
								<input
									class="block w-full pl-11 pr-4 py-3.5 bg-surface-container-low border-none rounded-lg focus:ring-2 focus:ring-primary/20 text-on-surface placeholder:text-outline/50 transition-all outline-none"
									id="name" name="name" placeholder="Enter your legal name"
									required="" type="text" />
							</div>
						</div>
						<!-- Email Address -->
						<div class="space-y-2">
							<label
								class="block text-sm font-semibold font-label text-outline ml-1"
								for="email">Email Address</label>
							<div class="relative group">
								<div
									class="absolute inset-y-0 left-0 pl-4 flex items-center pointer-events-none text-outline group-focus-within:text-primary transition-colors">
									<span class="material-symbols-outlined text-[20px]">mail</span>
								</div>
								<input
									class="block w-full pl-11 pr-4 py-3.5 bg-surface-container-low border-none rounded-lg focus:ring-2 focus:ring-primary/20 text-on-surface placeholder:text-outline/50 transition-all outline-none"
									id="email" name="email" placeholder="name@company.com"
									required="" type="email" />
							</div>
						</div>
						<div class="grid grid-cols-1 md:grid-cols-2 gap-6">
							<!-- Phone Number -->
							<div class="space-y-2">
								<label
									class="block text-sm font-semibold font-label text-outline ml-1"
									for="phone">Phone Number</label>
								<div class="relative group">
									<div
										class="absolute inset-y-0 left-0 pl-4 flex items-center pointer-events-none text-outline group-focus-within:text-primary transition-colors">
										<span class="material-symbols-outlined text-[20px]">call</span>
									</div>
									<input
										class="block w-full pl-11 pr-4 py-3.5 bg-surface-container-low border-none rounded-lg focus:ring-2 focus:ring-primary/20 text-on-surface placeholder:text-outline/50 transition-all outline-none"
										id="phone" name="phone" placeholder="+1 (555) 000-0000"
										required="" type="tel" />
								</div>
							</div>
							<!-- User password (Bonus UX element for clarity) -->
							<div class="space-y-2">
								<label
									class="block text-sm font-semibold font-label text-outline ml-1"
									for="password">Password</label>
								<div class="relative group">
									<div
										class="absolute inset-y-0 left-0 pl-4 flex items-center pointer-events-none text-outline group-focus-within:text-primary transition-colors">
										<span class="material-symbols-outlined text-[20px]">lock</span>
									</div>
									<input
										class="block w-full pl-11 pr-4 py-3.5 bg-surface-container-low border-none rounded-lg focus:ring-2 focus:ring-primary/20 text-on-surface placeholder:text-outline/50 transition-all outline-none"
										id="password" name="password"
										placeholder="Create a strong password" required=""
										type="password" />
								</div>
							</div>
						</div>
						<!-- Address -->
						<div class="space-y-2">
							<label
								class="block text-sm font-semibold font-label text-outline ml-1"
								for="address">Primary Address</label>
							<div class="relative group">
								<div
									class="absolute inset-y-0 left-0 pl-4 flex items-center pointer-events-none text-outline group-focus-within:text-primary transition-colors">
									<span class="material-symbols-outlined text-[20px]">location_on</span>
								</div>
								<textarea
									class="block w-full pl-11 pr-4 py-3.5 bg-surface-container-low border-none rounded-lg focus:ring-2 focus:ring-primary/20 text-on-surface placeholder:text-outline/50 transition-all outline-none resize-none"
									id="address" name="address"
									placeholder="Street, City, Zip Code" required="" rows="2"></textarea>
							</div>
						</div>
						<!-- Terms & Conditions -->
						<div class="flex flex-col gap-4 px-1">

							<!-- Scrollable Terms Box -->
							<div
								class="max-h-40 overflow-y-auto border border-outline-variant rounded-lg p-4 text-sm text-on-surface-variant leading-relaxed space-y-2">

								<p>
									<b>User Agreement</b>
								</p>

								<p>1. I confirm that all the information provided by me is
									true and accurate.</p>
								<p>2. I agree to use this platform only for genuine service
									bookings.</p>
								<p>3. I understand that the final price of services may vary
									based on inspection and work requirements.</p>
								<p>4. I agree to pay the inspection fee if I reject the
									worker’s final quote.</p>
								<p>5. I understand that material costs are separate from the
									worker’s service fee.</p>
								<p>6. I agree to behave respectfully with workers and
									maintain proper communication.</p>
								<p>7. I understand that the platform is not responsible for
									disputes between me and the worker.</p>
								<p>8. I agree not to misuse or provide false booking
									requests.</p>
								<p>9. I accept that my account may be suspended if I violate
									platform rules.</p>
								<p>10. I agree to the platform’s policies and guidelines.</p>

							</div>

							<!-- Checkbox -->
							<div class="flex items-start gap-3">
								<div class="flex h-6 items-center">
									<input
										class="h-4 w-4 rounded border-outline-variant text-primary focus:ring-primary-container"
										id="terms" name="terms" required type="checkbox" />
								</div>

								<div class="text-sm leading-6">
									<label class="text-on-surface-variant" for="terms"> I
										agree to the <span class="text-primary font-semibold">Terms
											& Conditions</span> and confirm that I understand the pricing,
										booking, and service policies.
									</label>
								</div>
							</div>

						</div>
						<!-- Submit Button -->
						<button
							class="w-full primary-gradient text-on-primary py-4 px-6 rounded-lg font-bold text-base shadow-lg shadow-primary/20 hover:opacity-90 active:scale-[0.98] transition-all flex items-center justify-center gap-2"
							type="submit">
							Register Now <span class="material-symbols-outlined">arrow_forward</span>
						</button>
					</form>
					<div class="mt-8 text-center">
						<p class="text-sm text-on-surface-variant font-medium">
							Already part of the Hub? <a
								class="text-primary font-bold hover:underline ml-1"
								href="login">Login here</a>
						</p>
					</div>
				</div>
			</div>
		</div>
	</main>
	<!-- Footer (Suppressed complexity for transaction flow) -->
	<footer class="bg-white py-8 border-t border-surface-container mt-auto">
		<div
			class="max-w-7xl mx-auto px-8 flex flex-col md:flex-row justify-between items-center gap-4">
			<p class="text-outline text-xs uppercase tracking-widest font-inter">©
				2024 Digital Labour Hub. The Editorial Concierge.</p>
			<div class="flex gap-8">
				<a
					class="text-outline hover:text-primary text-xs uppercase tracking-widest transition-colors"
					href="#">Privacy</a> <a
					class="text-outline hover:text-primary text-xs uppercase tracking-widest transition-colors"
					href="#">Safety</a> <a
					class="text-outline hover:text-primary text-xs uppercase tracking-widest transition-colors"
					href="#">Contact</a>
			</div>
		</div>
	</footer>
	<script src="/js/script.js"></script>
</body>
</html>