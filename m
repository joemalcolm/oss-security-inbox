X-VM-v5-Data: ([nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil]
	["1599" "Friday" "28" "April" "2017" "01:50:04" "-0000" "security@atlassian.com" "security@atlassian.com" "<20170428015004.11956.12148@falcon>" "18" "Re: [oss-security] CVE-2017-8291 ghostscript remote code execution" "^Date:" nil nil "4" "2017042801:50:04" "[oss-security] CVE-2017-8291 ghostscript remote code execution" (number mark "        security@atl Apr 28   18/1599  " thread-indent "\"Re: [oss-security] CVE-2017-8291 ghostscript remote code execution\"\n") nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil]
	nil)
X-Mozilla-Status: 0001
X-Mozilla-Status2: 00000000
Received: (qmail 24058 invoked by uid 550); 28 Apr 2017 02:55:05 -0000
Mailing-List: contact oss-security-help@lists.openwall.com; run by ezmlm
Precedence: bulk
List-Post: <mailto:oss-security@lists.openwall.com>
List-Help: <mailto:oss-security-help@lists.openwall.com>
List-Unsubscribe: <mailto:oss-security-unsubscribe@lists.openwall.com>
List-Subscribe: <mailto:oss-security-subscribe@lists.openwall.com>
List-ID: <oss-security.lists.openwall.com>
Received: (qmail 7375 invoked from network); 28 Apr 2017 01:50:18 -0000
DKIM-Signature: v=1; a=rsa-sha1; c=relaxed/relaxed; d=sendgrid.net; 
	h=mime-version:subject:from:to:content-type; s=smtpapi; 
	bh=YbaXSMycbqf5+Kzk+EQ2j6fkQzo=; b=xxl6wyJonol131BIQSSAv06a+4+Xf
	fRrlDHVQjCaLJgdj0Gd40NP+fmC6gZo42hNs8ym1n0iiVRKwni0ItggMc8cp+snR
	0b3B4a42wBuhqopURFkyBkuUQgWf6zox+wuStsitbUVYLu80q6ahlGId5ookBCIo
	2V7c1Bcm1zrkM4=
MIME-Version: 1.0
Message-ID: <20170428015004.11956.12148@falcon>
Content-type: multipart/alternative; boundary="----------=_1493344205-31063-125"
X-SG-EID: wn1rdHGkFSrvtgEuvlLCbaw00eMQ9PrR5jaavt6mz6SKSVLxT5CbCA/26RN4EX6KFmsEcSzjjdDpr5
 Y+/+HKyJAXJDODrEpB+PviwdB2Dk1aCbTU9PcOjNdgFV3T93AxaZlYuF9Hso99cLEhqDyspZnSZwJ9
 gZ0lUSz3dKh2GvBH6vW5zyUDjQjGy2gZpTeK3PJiL8LZ4ro3URFJ59VRyWoyWfVg8166ywwQtmgv6Y
 4=
Date: Fri, 28 Apr 2017 01:50:04 -0000
From: security@atlassian.com
Reply-To: oss-security@lists.openwall.com
Subject: Re: [oss-security] CVE-2017-8291 ghostscript remote code execution
To: oss-security@lists.openwall.com

------------=_1493344205-31063-125
Content-Type: text/plain; charset="utf-8"
Content-Transfer-Encoding: 7bit

 Hi,


 CVE-2017-8291 was reported initially to Ghostscript by the Atlassian Security Team. We worked with the developers of Ghostscript to address this vulnerability. This vulnerability impacts versions 9.21 and earlier, and is called from many other libraries, such as Pillow and ImageMagick. Fortunately, fixes have now been pushed to master and can be reviewed here: https://u4790715.ct.sendgrid.net/wf/click?upn=UqF7hxEfY-2BoQE5y7ee5wrpEERVsJr450MPBUJBBKike04wjKjU6jNBRqCvnzFkirKb6U3wFxO6cZ2MrfZFe9KXxeenPQ9IFz8TJhw6LOtOaFuB-2BSAw9BeCw0BhtT081tIKPb6Ah9qpSmP-2FzO2sx-2BjA-3D-3D_XV8vHdrbCxPyFLm6RhvyOinpL-2BlJJ4T-2BnPsLAd4H4ga1C-2B6KK34tjEg4ad7hndokvEujZN9oFs-2BPmwZc69UJbIeCjEPp1RqnDE5ZMVkV8u-2FQck2RKXjMbDOcixr2-2BNtOmj3Wzq5XwkhDFXhU2AKyL9layYKe-2BQtxt0vvnrLW-2BhggU2jp-2FuYmlu1mgnKq3GLT-2BQs66xRLMVK0ptzU4dayw9UBPVRQ2Fkfj-2FJw1BXrk-2BY-3D and https://u4790715.ct.sendgrid.net/wf/click?upn=UqF7hxEfY-2BoQE5y7ee5wrpEERVsJr450MPBUJBBKike04wjKjU6jNBRqCvnzFkirJzYNkGRnjRAeENnIy4IlGMktl4IMwqOL-2F6c9eA2tuy
 k4XtZY7kQE2gU21K2S6Iame7IH19-2BL1vfBFf0SU6yEiA-3D-3D_XV8vHdrbCxPyFLm6RhvyOinpL-2BlJJ4T-2BnPsLAd4H4ga1C-2B6KK34tjEg4ad7hndokvEujZN9oFs-2BPmwZc69UJbPyFjltEjXNsT3qz-2Fb9AtZOlxcf7srfg3ApNJwAPl06rQsoKGLAu393JsVQP6IMnwpmfkPtqhUc0Kd-2Fr-2BdA39SFaSuqgV1MSaFq7Bx7Osg3G1ng9ujPr9Xt71FOQOsCM9Ada5YhYxQbHq72hBUfE7-2Bo-3D


 Since this issue is potentially serious, we encourage people to patch and update as soon as possible.


 --
 Atlassian Security Team

------------=_1493344205-31063-125--
