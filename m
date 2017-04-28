X-VM-v5-Data: ([nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil]
	["1588" "Thursday" "27" "April" "2017" "20:08:32" "-0700" "Kurt H Maier" "khm@sciops.net" "<20170428030832.GB53619@wopr>" "12" "Re: [oss-security] CVE-2017-8291 ghostscript remote code execution" "^Date:" nil nil "4" "2017042803:08:32" "[oss-security] CVE-2017-8291 ghostscript remote code execution" (number mark "        khm@sciops.n Apr 27   12/1588  " thread-indent "\"Re: [oss-security] CVE-2017-8291 ghostscript remote code execution\"\n") "<20170428015004.11956.12148@falcon>" ("<20170428015004.11956.12148@falcon>") nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil]
	nil)
X-Mozilla-Status: 0001
X-Mozilla-Status2: 00000000
Received: (qmail 27939 invoked by uid 550); 28 Apr 2017 11:05:45 -0000
Mailing-List: contact oss-security-help@lists.openwall.com; run by ezmlm
Precedence: bulk
List-Post: <mailto:oss-security@lists.openwall.com>
List-Help: <mailto:oss-security-help@lists.openwall.com>
List-Unsubscribe: <mailto:oss-security-unsubscribe@lists.openwall.com>
List-Subscribe: <mailto:oss-security-subscribe@lists.openwall.com>
List-ID: <oss-security.lists.openwall.com>
Received: (qmail 18393 invoked from network); 28 Apr 2017 03:08:45 -0000
Message-ID: <20170428030832.GB53619@wopr>
References: <20170428015004.11956.12148@falcon>
MIME-Version: 1.0
Content-Type: text/plain; charset=us-ascii
Content-Disposition: inline
In-Reply-To: <20170428015004.11956.12148@falcon>
Date: Thu, 27 Apr 2017 20:08:32 -0700
From: Kurt H Maier <khm@sciops.net>
Reply-To: oss-security@lists.openwall.com
Subject: Re: [oss-security] CVE-2017-8291 ghostscript remote code execution
To: oss-security@lists.openwall.com

On Fri, Apr 28, 2017 at 01:50:04AM -0000, security@atlassian.com wrote:
>  CVE-2017-8291 was reported initially to Ghostscript by the Atlassian Security Team. We worked with the developers of Ghostscript to address this vulnerability. This vulnerability impacts versions 9.21 and earlier, and is called from many other libraries, such as Pillow and ImageMagick. Fortunately, fixes have now been pushed to master and can be reviewed here: 
>
> https://u4790715.ct.sendgrid.net/wf/click?upn=UqF7hxEfY-2BoQE5y7ee5wrpEERVsJr450MPBUJBBKike04wjKjU6jNBRqCvnzFkirKb6U3wFxO6cZ2MrfZFe9KXxeenPQ9IFz8TJhw6LOtOaFuB-2BSAw9BeCw0BhtT081tIKPb6Ah9qpSmP-2FzO2sx-2BjA-3D-3D_XV8vHdrbCxPyFLm6RhvyOinpL-2BlJJ4T-2BnPsLAd4H4ga1C-2B6KK34tjEg4ad7hndokvEujZN9oFs-2BPmwZc69UJbIeCjEPp1RqnDE5ZMVkV8u-2FQck2RKXjMbDOcixr2-2BNtOmj3Wzq5XwkhDFXhU2AKyL9layYKe-2BQtxt0vvnrLW-2BhggU2jp-2FuYmlu1mgnKq3GLT-2BQs66xRLMVK0ptzU4dayw9UBPVRQ2Fkfj-2FJw1BXrk-2BY-3D 

https://git.ghostscript.com/?p=ghostpdl.git;a=commit;h=04b37bbce174eed24edec7ad5b920eb93db4d47d

> and https://u4790715.ct.sendgrid.net/wf/click?upn=UqF7hxEfY-2BoQE5y7ee5wrpEERVsJr450MPBUJBBKike04wjKjU6jNBRqCvnzFkirJzYNkGRnjRAeENnIy4IlGMktl4IMwqOL-2F6c9eA2tuyk4XtZY7kQE2gU21K2S6Iame7IH19-2BL1vfBFf0SU6yEiA-3D-3D_XV8vHdrbCxPyFLm6RhvyOinpL-2BlJJ4T-2BnPsLAd4H4ga1C-2B6KK34tjEg4ad7hndokvEujZN9oFs-2BPmwZc69UJbPyFjltEjXNsT3qz-2Fb9AtZOlxcf7srfg3ApNJwAPl06rQsoKGLAu393JsVQP6IMnwpmfkPtqhUc0Kd-2Fr-2BdA39SFaSuqgV1MSaFq7Bx7Osg3G1ng9ujPr9Xt71FOQOsCM9Ada5YhYxQbHq72hBUfE7-2Bo-3D

https://git.ghostscript.com/?p=ghostpdl.git;a=commit;h=4f83478c88c2e05d6e8d79ca4557eb039354d2f3

khm
