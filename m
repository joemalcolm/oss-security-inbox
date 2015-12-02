X-VM-v5-Data: ([nil t nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil]
	["2175" "Wednesday" "2" "December" "2015" "15:08:20" "-0500" "Larry Cashdollar" "larry0@me.com" "<D284B9E4.2DC28%larry0@me.com>" "56" "[oss-security] Command Injection in cool-video-gallery v1.9 Wordpress plugin" "^Date:" nil nil "12" "2015120220:08:20" "[oss-security] Command Injection in cool-video-gallery v1.9 Wordpress plugin" (number mark "U       larry0@me.co Dec  2   56/2175  " thread-indent "\"[oss-security] Command Injection in cool-video-gallery v1.9 Wordpress plugin\"\n") nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil]
	nil)
X-Mozilla-Status: 0000
X-Mozilla-Status2: 00000000
Received: (qmail 12211 invoked by uid 550); 2 Dec 2015 20:08:47 -0000
Mailing-List: contact oss-security-help@lists.openwall.com; run by ezmlm
Precedence: bulk
List-Post: <mailto:oss-security@lists.openwall.com>
List-Help: <mailto:oss-security-help@lists.openwall.com>
List-Unsubscribe: <mailto:oss-security-unsubscribe@lists.openwall.com>
List-Subscribe: <mailto:oss-security-subscribe@lists.openwall.com>
List-ID: <oss-security.lists.openwall.com>
Received: (qmail 12156 invoked from network); 2 Dec 2015 20:08:39 -0000
X-Proofpoint-Virus-Version: vendor=fsecure engine=2.50.10432:,,
 definitions=2015-12-02_12:,, signatures=0
X-Proofpoint-Spam-Details: rule=notspam policy=default score=0
 kscore.is_bulkscore=0 kscore.compositescore=1 compositescore=0.9
 suspectscore=0 phishscore=0 bulkscore=0 kscore.is_spamscore=0 rbsscore=0
 spamscore=0 urlsuspectscore=0.9 adultscore=8 classifier=spam adjust=0
 reason=mlx scancount=1 engine=8.0.1-1510090000 definitions=main-1512020331
User-Agent: Microsoft-MacOutlook/14.5.8.151023
Message-id: <D284B9E4.2DC28%larry0@me.com>
Thread-topic: Command Injection in cool-video-gallery v1.9 Wordpress plugin
MIME-version: 1.0
Content-type: multipart/alternative; boundary=B_3531913704_17947400
Date: Wed, 02 Dec 2015 15:08:20 -0500
From: Larry Cashdollar <larry0@me.com>
Reply-To: oss-security@lists.openwall.com
Subject: [oss-security] Command Injection in cool-video-gallery v1.9 Wordpress plugin
To: Open Security <oss-security@lists.openwall.com>

--B_3531913704_17947400
Content-type: text/plain;
	charset="US-ASCII"
Content-transfer-encoding: 7bit

Title: Command Injection in cool-video-gallery v1.9 Wordpress plugin
Author: Larry W. Cashdollar, @_larry0
Date: 2015-11-29
Download Site: https://wordpress.org/plugins/cool-video-gallery/
Vendor: https://profiles.wordpress.org/praveen-rajan/
Vendor Notified: 2015-11-30
Vendor Contact: 
https://wordpress.org/support/topic/command-injection-vulnerability-in-v19?r
eplies=1#post-7721994
Description: Cool Video Gallery is a Video Gallery plugin for WordPress with
option to upload videos, attach media files, add Youtube videos and manage
them in multiple galleries. Automatic preview image generation for uploaded
videos using FFMPEG library available. Option provided to upload images for
video previews. Supports '.flv', '.mp4', '.mov', '.m4v' and '.mp3' video
files presently.
Vulnerability:
If any of the arguments being passed to $command are sourced from user
input, we can inject commands to be passed to the shell via exec() on line
714.

In cool-video-gallery/lib/core.php lines 703-714:

 703                 $gallery = videoDB::find_gallery($video->galleryid);
 704                 $video_input = $gallery->abspath . '/' .
$video->filename;
 705                 $new_target_filename = $video->alttext . '.png';
 706                 $new_target_file = $gallery->abspath .
'/thumbs/thumbs_' . $new_target_filename;
 707 
 708                 if($video->video_type ==
$cool_video_gallery->video_type_media){
 709                         $command = $options['cvg_ffmpegpath'] . " -i
'$video->filename' -vcodec mjpeg -vframes 1 -an -f rawvideo -ss 5      -s
".$thumb_width ."x".$thumb_height." '$new_target_file'";
 710                 }else {
 711                         $command = $options['cvg_ffmpegpath'] . " -i
'$video_input' -vcodec mjpeg -vframes 1 -an -f rawvideo -ss 5 -s "
.$thumb_width ."x".$thumb_height." '$new_target_file'";
 712                 }
 713 
 714                 exec ( $command );
CVEID: 2015-7527
Exploit Code:
Screen shots are located at below URL.
Advisory: http://www.vapidlabs.com/advisory.php?v=158



--B_3531913704_17947400--


