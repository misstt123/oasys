<style>
body {
  background-color: #f5f7f9;
  color: #6c6c6c;
  font: 300 1em/1.5em;
}
.container {
  left: 50%;
  position: absolute;
  top: 100px;
  transform: translate(-50%, -50%);
}

/* PROGRESS */
.progress {
  background-color: #e5e9eb;
  height: 0.25em;
  position: relative;
  width: 24em;
}
.progress-bar {
  animation-duration: 3s;
  animation-name: width;
  background-image: linear-gradient(to right, #4cd964, #5ac8fa, #007aff, #34aadc, #5856d6, #ff2d55);
  background-size: 24em 0.25em;
  height: 100%;
  position: relative;
}
.progress-shadow {
  background-image: linear-gradient(to bottom, #eaecee, transparent);
  height: 4em;
  position: absolute;
  top: 100%;
  transform: skew(45deg);
  transform-origin: 0 0;
  width: 100%;
}

/* ANIMATIONS */
@keyframes width {
  0%, 100% {
    transition-timing-function: cubic-bezier(1, 0, 0.65, 0.85);
  }	
  0% {
    width: 0;
  }
  100% {
    width: 100%;
  }
}
</style>

<div class="container">
	<div class="progress">
		<div class="progress-bar">
			<div class="progress-shadow"></div>
		</div>
	</div>
</div>
<script type="text/javascript" src="js/prefixfree.min.js"></script>