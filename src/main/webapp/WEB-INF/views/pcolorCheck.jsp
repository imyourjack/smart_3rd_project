<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>web cam</title>
</head>
<body>

<video id="video" width="440" height="480" autoplay></video>
   <canvas id="canvas" width="960" height="720"></canvas>
   <button type="button" id=snap>캡쳐하기</button>

   <script>
      if (navigator.mediaDevices && navigator.mediaDevices.getUserMedia) {
         navigator.mediaDevices.getUserMedia({
            video : true
         }).then(function(stream) {
            var video = document.getElementById('video');
            video.srcObject = stream;
            video.play();
         });
      }

      var canvas = document.getElementById('canvas');
      var context = canvas.getContext('2d');
      var video = document.getElementById('video');
      document.getElementById("snap").addEventListener("click",function() {
               context.drawImage(video, 0, 0, 960, 720);
               const imageString = canvas.toDataURL();
               // send image to server
               fetch('C:\image', {
                 method: "POST",
                 cache: "no-cache",
                 credentials: "same-origin",
                 headers: {
                     "Content-Type": "application/json",
                 },
                 body: JSON.stringify({
                   imageString: imageString, 
                 }),
               })
            });
   </script>

</body>
</html>