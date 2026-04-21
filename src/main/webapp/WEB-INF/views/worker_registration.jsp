<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<!DOCTYPE html>

<html lang="en">
<head>
<meta charset="utf-8" />
<meta content="width=device-width, initial-scale=1.0" name="viewport" />
<title>Worker Registration | Labour Hub</title>
<script
	src="https://cdn.tailwindcss.com?plugins=forms,container-queries"></script>
<link
	href="https://fonts.googleapis.com/css2?family=Manrope:wght@400;500;600;700;800&amp;family=Inter:wght@400;500;600&amp;display=swap"
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

.glass-nav {
	backdrop-filter: blur(12px);
	-webkit-backdrop-filter: blur(12px);
}

.custom-scrollbar::-webkit-scrollbar {
	width: 4px;
}

.custom-scrollbar::-webkit-scrollbar-track {
	background: transparent;
}

.custom-scrollbar::-webkit-scrollbar-thumb {
	background: #c2c6d4;
	border-radius: 10px;
}
</style>
</head>
<body class="bg-surface font-body text-on-surface antialiased">
	<nav
		class="fixed top-0 w-full z-50 bg-white/80 backdrop-blur-md shadow-sm h-16 flex items-center px-8">
		<a
			class="flex items-center gap-1 text-primary hover:text-blue-700 font-medium transition-colors mr-auto"
			href="index"> <span class="material-symbols-outlined text-[20px]">arrow_back</span>
			<span class="text-sm">Back to Home</span>
		</a>
		<div class="flex items-center gap-2">
			<span
				class="text-2xl font-black tracking-tighter text-blue-900 font-headline">Digital
				Labour Hub</span>
		</div>
	</nav>
	<main class="pt-24 pb-20 px-4 sm:px-6 lg:px-8 max-w-5xl mx-auto">
		<!-- Hero Header -->
		<div class="mb-12 text-center md:text-left">
			<h1
				class="font-headline text-4xl md:text-5xl font-extrabold tracking-tight text-on-surface mb-4">
				Join our community of <span class="text-primary italic">Expert
					Artisans</span>.
			</h1>
			<p class="text-on-surface-variant max-w-2xl text-lg">Build your
				professional profile, showcase your skills, and connect with
				homeowners seeking quality craftsmanship.</p>
		</div>
		<div class="grid grid-cols-1 lg:grid-cols-12 gap-8 items-start ">

			<!-- Registration Form Card -->
			<div
				class="lg:col-span-8 lg:col-start-3 bg-surface-container-lowest p-8 md:p-12 rounded-xl shadow-sm border-0 mx-auto">
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
				<form action="worker/register" class="space-y-12" method="POST"
					enctype="multipart/form-data">
					<!-- Section 1: Personal Info -->
					<section class="space-y-8" id="step-1">
						<div class="border-l-4 border-primary pl-6 mb-8">
							<h2 class="font-headline text-2xl font-bold text-on-surface">Personal
								Information</h2>
							<p class="text-on-surface-variant text-sm mt-1">Provide your
								legal details for identity confirmation.</p>
						</div>
						<div class="grid grid-cols-1 md:grid-cols-2 gap-6">
							<div class="space-y-2">
								<label class="block font-label text-sm font-medium text-outline">First
									Name</label> <input
									class="w-full px-4 py-3 bg-surface-container-low border-0 rounded-lg focus:ring-2 focus:ring-primary/20 transition-all text-on-surface"
									name="firstName" placeholder="e.g. Samuel" type="text" required />
							</div>
							<div class="space-y-2">
								<label class="block font-label text-sm font-medium text-outline">Last
									Name</label> <input
									class="w-full px-4 py-3 bg-surface-container-low border-0 rounded-lg focus:ring-2 focus:ring-primary/20 transition-all text-on-surface"
									name="lastName" placeholder="e.g. Okafor" type="text" required />
							</div>
							<div class="md:col-span-2 space-y-2">
								<label class="block font-label text-sm font-medium text-outline">Email
									Address</label> <input
									class="w-full px-4 py-3 bg-surface-container-low border-0 rounded-lg focus:ring-2 focus:ring-primary/20 transition-all text-on-surface"
									name="email" placeholder="samuel@example.com" type="email"
									required />
							</div>

							<div class="md:col-span-2 space-y-2">
								<label class="block font-label text-sm font-medium text-outline">Account
									Password</label> <input
									class="w-full px-4 py-3 bg-surface-container-low border-0 rounded-lg focus:ring-2 focus:ring-primary/20 transition-all text-on-surface"
									name="password" placeholder="Password" type="password" required />
							</div>

							<div class="md:col-span-2 space-y-2">
								<label class="block font-label text-sm font-medium text-outline">Phone
									Number</label>
								<div class="flex gap-2">
									<div
										class="w-24 px-4 py-3 bg-surface-container-low rounded-lg text-on-surface-variant text-sm flex items-center justify-center">+91</div>
									<input
										class="flex-1 px-4 py-3 bg-surface-container-low border-0 rounded-lg focus:ring-2 focus:ring-primary/20 transition-all text-on-surface"
										name="phone" placeholder="98765 43210" type="tel" required />
								</div>
							</div>


							<div class="md:col-span-2 space-y-2">
								<label class="block font-label text-sm font-medium text-outline">Aadhaar
									Number</label> <input
									class="w-full px-4 py-3 bg-surface-container-low border-0 rounded-lg focus:ring-2 focus:ring-primary/20 transition-all text-on-surface"
									name="aadhaar" placeholder="1234 5678 9012" type="text"
									required />
							</div>
	

							<div class="w-full space-y-2">
								<label
									class="block font-label text-xs font-bold text-outline uppercase tracking-wider">
									Profile Photo (Professional Headshot) </label>

								<div
									class="relative w-full border-2 border-dashed border-outline-variant rounded-xl p-6 flex flex-col items-center justify-center bg-surface-container-low group hover:bg-surface-container transition-colors">

									<input accept="image/*"
										class="absolute inset-0 w-full h-full opacity-0 cursor-pointer"
										name="profilephoto" type="file" required /> <span
										class="material-symbols-outlined text-4xl text-outline mb-2 group-hover:scale-110 transition-transform">
										account_circle </span>

									<p class="font-headline font-bold text-sm text-on-surface">
										Upload Photo</p>

									<p
										class="text-[10px] text-outline mt-1 uppercase tracking-widest font-body">
										JPG, PNG (Max 2MB)</p>
								</div>
							</div>
					</section>
					<!-- Section 2: Expertise (Bento Grid Style Selection) -->
					<section class="space-y-8" id="step-2">
						<div class="border-l-4 border-primary pl-6 mb-8">
							<h2 class="font-headline text-2xl font-bold text-on-surface">Expertise
								&amp; Skills</h2>
							<p class="text-on-surface-variant text-sm mt-1">Select your
								primary trade and specify your years of experience.</p>
						</div>
						<div class="space-y-4">
							<label class="block font-label text-sm font-medium text-outline">Select
								your trades</label>
							<div class="relative w-full">

								<!-- Selected Skills Container -->
								<div id="selectedSkills"
									class="flex flex-wrap gap-2 p-2 border rounded-lg">

									<!-- Input -->
									<input id="skillInput"
										class="flex-1 min-w-[120px] bg-transparent border-0 focus:ring-0 text-sm p-1"
										placeholder="Search skills... " required />

								</div>

								<!-- Dropdown -->
								<div id="dropdown"
									class="hidden absolute z-10 w-full mt-2 bg-white rounded-xl shadow border">

									<ul id="skillList" class="max-h-60 overflow-y-auto">

										<li onclick="addSkill('Plumbing')"
											class="px-4 py-2 hover:bg-gray-100 cursor-pointer">Plumbing</li>
										<li onclick="addSkill('Electrical')"
											class="px-4 py-2 hover:bg-gray-100 cursor-pointer">Electrical</li>
										<li onclick="addSkill('Carpentry')"
											class="px-4 py-2 hover:bg-gray-100 cursor-pointer">Carpentry</li>
										<li onclick="addSkill('Masonry')"
											class="px-4 py-2 hover:bg-gray-100 cursor-pointer">Masonry</li>
										<li onclick="addSkill('Painting')"
											class="px-4 py-2 hover:bg-gray-100 cursor-pointer">Painting</li>
										<li onclick="addSkill('Welding')"
											class="px-4 py-2 hover:bg-gray-100 cursor-pointer">Welding</li>
										<li onclick="addSkill('Cleaning')"
											class="px-4 py-2 hover:bg-gray-100 cursor-pointer">Cleaning</li>
										<li onclick="addSkill('AC Repair')"
											class="px-4 py-2 hover:bg-gray-100 cursor-pointer">AC
											Repair</li>
										<li onclick="addSkill('Appliance Repair')"
											class="px-4 py-2 hover:bg-gray-100 cursor-pointer">Appliance
											Repair</li>
										<li onclick="addSkill('Tile Work')"
											class="px-4 py-2 hover:bg-gray-100 cursor-pointer">Tile
											Work</li>
										<li onclick="addSkill('Gardening')"
											class="px-4 py-2 hover:bg-gray-100 cursor-pointer">Gardening</li>
										<li onclick="addSkill('Driver Service')"
											class="px-4 py-2 hover:bg-gray-100 cursor-pointer">Driver
											Service</li>
										<li onclick="addSkill('Security Service')"
											class="px-4 py-2 hover:bg-gray-100 cursor-pointer">Security
											Service</li>
										<li onclick="addSkill('CCTV Installation')"
											class="px-4 py-2 hover:bg-gray-100 cursor-pointer">CCTV
											Installation</li>
										<li onclick="addSkill('RO Service')"
											class="px-4 py-2 hover:bg-gray-100 cursor-pointer">RO
											Service</li>

									</ul>
								</div>

							</div>

							<!-- Hidden input for backend -->
							<input type="hidden" name="skills" id="skillsHidden">
						</div>
						<div class="space-y-2">
							<label class="block font-label text-sm font-medium text-outline">Years
								of Experience</label> <select
								class="w-full px-4 py-3 bg-surface-container-low border-0 rounded-lg focus:ring-2 focus:ring-primary/20 transition-all text-on-surface appearance-none"
								name="experience">
								<option>Select range</option>
								<option>1-3 years</option>
								<option>3-5 years</option>
								<option>5-10 years</option>
								<option>10+ years</option>
							</select>
						</div>

						<div class="space-y-2">
							<label class="block font-label text-sm font-medium text-outline">Hourly
								Charges (₹)</label> <input
								class="w-full px-4 py-3 bg-surface-container-low border-0 rounded-lg focus:ring-2 focus:ring-primary/20 transition-all text-on-surface"
								name="hourlyRate" placeholder="e.g. 500" type="number" required />
						</div>
						<div class="space-y-2">
							<label class="block font-label text-sm font-medium text-outline">Inspection
								Fee (₹)</label> <input
								class="w-full px-4 py-3 bg-surface-container-low border-0 rounded-lg focus:ring-2 focus:ring-primary/20 transition-all text-on-surface"
								name="inspectionFee" placeholder="e.g. 150" type="number"
								required />
						</div>
					</section>
					<!-- Section 3: Document Upload -->
					<section class="space-y-8" id="step-3">
						<div class="border-l-4 border-primary pl-6 mb-8">
							<h2 class="font-headline text-2xl font-bold text-on-surface">Verification
								Documents</h2>
							<p class="text-on-surface-variant text-sm mt-1">Upload
								digital copies of your credentials for verification.</p>
						</div>
						<div class="grid grid-cols-1 md:grid-cols-2 gap-6">
							<!-- Upload 1 -->
							<div class="space-y-2">
								<label
									class="block font-label text-xs font-bold text-outline uppercase tracking-wider">Police
									Clearance </label>
								<div
									class="relative w-full border-2 border-dashed border-outline-variant rounded-xl p-8 flex flex-col items-center justify-center bg-surface-container-low group hover:bg-surface-container transition-colors">
									<input
										class="absolute inset-0 w-full h-full opacity-0 cursor-pointer"
										name="policeDoc" type="file" /> <span
										class="material-symbols-outlined text-3xl text-outline mb-3 group-hover:scale-110 transition-transform"
										required>cloud_upload</span>
									<p class="font-headline font-bold text-sm text-on-surface">Upload
										Document</p>
									<p
										class="text-[10px] text-outline mt-1 uppercase tracking-widest font-body">PDF,
										JPG (Max 5MB)</p>
								</div>
							</div>
							<!-- Upload 2 -->
							<div class="space-y-2">
								<label
									class="block font-label text-xs font-bold text-outline uppercase tracking-wider">Aadhaar
									Card Copy</label>
								<div
									class="relative w-full border-2 border-dashed border-outline-variant rounded-xl p-8 flex flex-col items-center justify-center bg-surface-container-low group hover:bg-surface-container transition-colors">
									<input
										class="absolute inset-0 w-full h-full opacity-0 cursor-pointer"
										name="aadhaarDoc" type="file" /> <span
										class="material-symbols-outlined text-3xl text-outline mb-3 group-hover:scale-110 transition-transform"
										required>badge</span>
									<p class="font-headline font-bold text-sm text-on-surface">Upload
										Aadhaar</p>
									<p
										class="text-[10px] text-outline mt-1 uppercase tracking-widest font-body">Front
										&amp; Back (Max 5MB)</p>
								</div>
							</div>
						</div>
						<!-- Visual Feedback Card -->
						<div
							class="bg-primary-fixed p-4 rounded-lg flex items-start gap-4">
							<span
								class="material-symbols-outlined text-on-primary-fixed-variant"
								style="font-variation-settings: 'FILL' 1;">verified_user</span>
							<div>
								<p class="text-sm font-bold text-on-primary-fixed">Why do we
									need this?</p>
								<p class="text-xs text-on-primary-fixed-variant leading-relaxed">Safety
									is our priority. Verified workers earn the 'Trusted Pro' badge,
									which increases booking rates by up to 60%.</p>
							</div>
						</div>
					</section>

					<!-- Section 4: Terms & Submission -->
					<section class="space-y-8" id="step-4">
						<div class="border-l-4 border-primary pl-6 mb-8">
							<h2 class="font-headline text-2xl font-bold text-on-surface">Final
								Agreement</h2>
						</div>

						<div class="p-6 bg-surface-container-low rounded-lg space-y-6">

							<!-- Scrollable Agreement -->
							<div
								class="max-h-40 overflow-y-auto border border-outline-variant rounded-lg p-4 text-sm text-on-surface-variant leading-relaxed space-y-2">
								<p>
									<b>Worker Agreement</b>
								</p>
								<p>1. I confirm that all the information provided by me is
									true and accurate.</p>
								<p>2. I agree to upload valid ID proof and police
									verification documents.</p>
								<p>3. I understand that my profile will be reviewed and
									approved by the admin before I can receive work.</p>
								<p>4. I agree to maintain professional behavior with
									customers.</p>
								<p>5. I will not overcharge customers and will follow fair
									pricing practices.</p>
								<p>6. I understand that material costs must be clearly
									explained to the customer.</p>
								<p>7. I agree to update my availability status correctly.</p>
								<p>8. I accept that my account may be suspended if I violate
									platform rules or receive multiple complaints.</p>
								<p>9. I understand that the platform is not responsible for
									disputes between me and the customer.</p>
								<p>10. I agree to follow all platform guidelines and
									policies.</p>
							</div>

							<!-- Main Agreement Checkbox -->
							<div class="flex items-start gap-3">
								<input
									class="mt-1 w-5 h-5 rounded border-outline-variant text-primary focus:ring-primary"
									id="terms" name="termsAccepted" type="checkbox" required /> <label
									class="text-sm text-on-surface-variant leading-relaxed"
									for="terms"> I agree to the above <span
									class="text-primary font-bold">Terms & Conditions</span> and
									confirm that all information provided is accurate. I understand
									that false information may lead to account suspension.
								</label>
							</div>



						</div>

						<div
							class="pt-6 flex flex-col md:flex-row gap-4 items-center justify-center">

							<button
								class="w-full md:w-auto px-10 py-4 bg-primary text-on-primary rounded-lg font-headline font-extrabold text-lg shadow-xl shadow-primary/30 hover:shadow-primary/10 hover:translate-y-[-2px] active:scale-98 transition-all"
								type="submit">Create My Worker Profile</button>
						</div>
					</section>
				</form>
			</div>
		</div>
		<!-- Featured Section Asymmetric -->
		<div class="mt-24 grid grid-cols-1 md:grid-cols-2 gap-12 items-center">
			<div
				class="relative h-[400px] rounded-2xl overflow-hidden shadow-2xl">
				<img alt="Professional artisan working"
					class="w-full h-full object-cover"
					src="https://lh3.googleusercontent.com/aida-public/AB6AXuDjHKrBjr_jecYKSbGlGOsD3XqfbvzZ1DJaHD-_lfDppgZhSI_LmRy81KAZkTqARIVXPKWJSY9VhfW-Fmd9IRIryVAkpXyfIoKU9TCSTt-F5uvrRG3jzfkUbR1IgrXy6uvf6HV6qOSd20MicsHjR8dQoIXcsUJg7fXrLTGkYCruo4ExWZ9R21pV4FsZGn_7vw2-Ce0dK876fckyoRAOy3k116M16j6gGw6V_x6qW7vb6U9Du3sqpKjnc_KzCsFD_XzOZKc3-2vi6ZU" />
				<div
					class="absolute inset-0 bg-gradient-to-t from-primary/60 to-transparent"></div>
				<div
					class="absolute bottom-6 left-6 right-6 p-6 bg-white/20 backdrop-blur-md rounded-xl border border-white/30">
					<p class="text-white font-headline font-bold text-lg">"Joining
						Labour Hub doubled my client base in just three months."</p>
					<p class="text-white/80 text-sm mt-2">— Marcus Thorne, Master
						Electrician</p>
				</div>
			</div>
			<div class="space-y-6">
				<h3 class="font-headline text-3xl font-bold text-on-surface">
					The Benefits of <span class="text-primary italic">Digital
						Labour Hub</span>
				</h3>
				<ul class="space-y-4">
					<li class="flex items-start gap-4"><span
						class="material-symbols-outlined text-primary bg-primary-fixed p-2 rounded-lg">payments</span>
						<div>
							<p class="font-headline font-bold">Secure Escrow Payments</p>
							<p class="text-on-surface-variant text-sm">Get paid on time,
								every time. Funds are held securely until the job is completed.</p>
						</div></li>
					<li class="flex items-start gap-4"><span
						class="material-symbols-outlined text-primary bg-primary-fixed p-2 rounded-lg">analytics</span>
						<div>
							<p class="font-headline font-bold">Smart Lead Management</p>
							<p class="text-on-surface-variant text-sm">Access a
								personalized dashboard that shows exactly where your best jobs
								are coming from.</p>
						</div></li>
					<li class="flex items-start gap-4"><span
						class="material-symbols-outlined text-primary bg-primary-fixed p-2 rounded-lg">handshake</span>
						<div>
							<p class="font-headline font-bold">Direct Client Trust</p>
							<p class="text-on-surface-variant text-sm">Build a verified
								reputation that allows you to charge premium rates for your
								skills.</p>
						</div></li>
				</ul>
			</div>
		</div>
	</main>
	<!-- Footer Component -->
	<footer class="w-full border-t-0 mt-20 bg-white dark:bg-slate-900">
		<div class="grid grid-cols-1 md:grid-cols-4 gap-8 px-12 py-16 w-full">
			<div class="space-y-6">
				<span class="font-headline font-bold text-blue-900 text-xl">Labour
					Hub</span>
				<p
					class="font-body text-xs uppercase tracking-widest text-slate-500 leading-relaxed">
					Connecting global talent with local needs through an editorial
					concierge experience.</p>
			</div>
			<div class="space-y-4">
				<h4 class="font-headline font-bold text-blue-900 text-sm">Marketplace</h4>
				<ul class="space-y-2">
					<li><a
						class="font-body text-xs uppercase tracking-widest text-slate-500 hover:text-blue-600 transition-opacity"
						href="#">Services</a></li>
					<li><a
						class="font-body text-xs uppercase tracking-widest text-slate-500 hover:text-blue-600 transition-opacity"
						href="#">Contact</a></li>
					<li><a
						class="font-body text-xs uppercase tracking-widest text-slate-500 hover:text-blue-600 transition-opacity"
						href="#">Careers</a></li>
				</ul>
			</div>
			<div class="space-y-4">
				<h4 class="font-headline font-bold text-blue-900 text-sm">Legal</h4>
				<ul class="space-y-2">
					<li><a
						class="font-body text-xs uppercase tracking-widest text-slate-500 hover:text-blue-600 transition-opacity"
						href="#">Terms</a></li>
					<li><a
						class="font-body text-xs uppercase tracking-widest text-slate-500 hover:text-blue-600 transition-opacity"
						href="#">Privacy</a></li>
					<li><a
						class="font-body text-xs uppercase tracking-widest text-slate-500 hover:text-blue-600 transition-opacity"
						href="#">Safety</a></li>
				</ul>
			</div>
			<div class="space-y-4">
				<h4 class="font-headline font-bold text-blue-900 text-sm">Support</h4>
				<p
					class="font-body text-xs uppercase tracking-widest text-slate-500">help@labourhub.io</p>
				<div class="flex gap-4">
					<span class="material-symbols-outlined text-slate-400">public</span>
					<span class="material-symbols-outlined text-slate-400">share</span>
				</div>
			</div>
		</div>
		<div
			class="px-12 py-8 border-t border-slate-100 dark:border-slate-800 text-center">
			<p class="font-body text-xs uppercase tracking-widest text-slate-400">©
				2024 Digital Labour Hub. The Editorial Concierge.</p>
		</div>
	</footer>
	<script src="/js/script.js"></script>
</body>
</html>