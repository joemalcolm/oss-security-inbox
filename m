X-VM-v5-Data: ([nil t nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil]
	["1497" "Tuesday" "28" "March" "2017" "09:49:04" "-0500" "Serge E. Hallyn" "serge@hallyn.com" "<20170328144904.GA12627@mail.hallyn.com>" "12" "Re: [oss-security] LXC: CVE-2017-5985: lxc-user-nic didn't verify network namespace ownership" nil nil nil "3" "2017032814:49:04" "[oss-security] LXC: CVE-2017-5985: lxc-user-nic didn't verify network namespace ownership" (number mark "U       serge@hallyn Mar 28   12/1497  " thread-indent "\"Re: [oss-security] LXC: CVE-2017-5985: lxc-user-nic didn't verify network namespace ownership\"\n") "<DJvRoKIuVbRyh3w6YppaTZqH1Dcid84FuuKxC6GKQeaXXt2iBfmnPlSvpDlx-wu52iIHxc6-aq7Hpa5PkpetzfBwyuo6NXmTzADSPd9LdG4=@itk.swiss>" ("<8919f274-0c56-2c12-649f-2561d6cd59d8@canonical.com>" "<Ya92X4yQVrEDADDRD-xy-FeIBfDkxTwkyuxI1ATPJl5YbwqpJDwGpa-5HQzKiS09u8o1yNNyHK9G-fzxNDU5NqURXqe49zTp4--EQYjHh8g=@itk.swiss>" "<831d5907-bf61-70c2-9501-f57923e5ae07@canonical.com>" "<9C8Q126sS901vkG8mMxgQPigkx5gBFpDrXBZJqzB9mfVVKvASCmxDOcSAiq9IjkGPjKbAm7r44vrPcqypgDoadrQ2Wuo4wYXFHdQ8amAvwk=@itk.swiss>" "<yEw48KeZXecR-EKWWbAiNN-28xRPMYmv5qRYVlLwbDs4oH3fwjTstCNrpqptLwzG1mqIHxjMk-hiWRreJGC1WJmbY-daelcKJWMJdrb77z0=@itk.swiss>" "<DJvRoKIuVbRyh3w6YppaTZqH1Dcid84FuuKxC6GKQeaXXt2iBfmnPlSvpDlx-wu52iIHxc6-aq7Hpa5PkpetzfBwyuo6NXmTzADSPd9LdG4=@itk.swiss>") nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil]
	nil)
X-Mozilla-Status: 0000
X-Mozilla-Status2: 00000000
Received: (qmail 22231 invoked by uid 550); 28 Mar 2017 17:18:28 -0000
Mailing-List: contact oss-security-help@lists.openwall.com; run by ezmlm
Precedence: bulk
List-Post: <mailto:oss-security@lists.openwall.com>
List-Help: <mailto:oss-security-help@lists.openwall.com>
List-Unsubscribe: <mailto:oss-security-unsubscribe@lists.openwall.com>
List-Subscribe: <mailto:oss-security-subscribe@lists.openwall.com>
List-ID: <oss-security.lists.openwall.com>
Reply-To: oss-security@lists.openwall.com
Received: (qmail 22087 invoked from network); 28 Mar 2017 14:49:15 -0000
Date: Tue, 28 Mar 2017 09:49:04 -0500
From: "Serge E. Hallyn" <serge@hallyn.com>
To: oss-security@lists.openwall.com
Cc: "857295@bugs.debian.org" <857295@bugs.debian.org>,
	=?iso-8859-1?Q?St=E9phane?= Graber <stgraber@ubuntu.com>,
	serge.hallyn@ubuntu.com
Message-ID: <20170328144904.GA12627@mail.hallyn.com>
References: <8919f274-0c56-2c12-649f-2561d6cd59d8@canonical.com>
 <Ya92X4yQVrEDADDRD-xy-FeIBfDkxTwkyuxI1ATPJl5YbwqpJDwGpa-5HQzKiS09u8o1yNNyHK9G-fzxNDU5NqURXqe49zTp4--EQYjHh8g=@itk.swiss>
 <831d5907-bf61-70c2-9501-f57923e5ae07@canonical.com>
 <9C8Q126sS901vkG8mMxgQPigkx5gBFpDrXBZJqzB9mfVVKvASCmxDOcSAiq9IjkGPjKbAm7r44vrPcqypgDoadrQ2Wuo4wYXFHdQ8amAvwk=@itk.swiss>
 <yEw48KeZXecR-EKWWbAiNN-28xRPMYmv5qRYVlLwbDs4oH3fwjTstCNrpqptLwzG1mqIHxjMk-hiWRreJGC1WJmbY-daelcKJWMJdrb77z0=@itk.swiss>
 <DJvRoKIuVbRyh3w6YppaTZqH1Dcid84FuuKxC6GKQeaXXt2iBfmnPlSvpDlx-wu52iIHxc6-aq7Hpa5PkpetzfBwyuo6NXmTzADSPd9LdG4=@itk.swiss>
MIME-Version: 1.0
Content-Type: text/plain; charset=us-ascii
Content-Disposition: inline
In-Reply-To: <DJvRoKIuVbRyh3w6YppaTZqH1Dcid84FuuKxC6GKQeaXXt2iBfmnPlSvpDlx-wu52iIHxc6-aq7Hpa5PkpetzfBwyuo6NXmTzADSPd9LdG4=@itk.swiss>
User-Agent: Mutt/1.5.21 (2010-09-15)
Subject: Re: [oss-security] LXC: CVE-2017-5985: lxc-user-nic didn't verify
 network namespace ownership

On Tue, Mar 28, 2017 at 06:45:34AM -0400, Stiepan wrote:
> Thanks to the 2.0.7-2 update by Evgeni Golov and his crystal-clear instructions on how to use lxcbr0 with this version, I could confirm that the issue with the host's routing table being affected by changes in the containers' routing tables is not there anymore when using that version (lxc 2.0.7-2 from jessie-backports), which includes the fixes to CVE-2017-5985 which were brought in LXC 2.0.7 (upstream).
> 
> This was thus basically a variation of said CVE, which probably doesn't need to be separately numbered as such, the core problem at stake being the same:
> network namespace ownership was not respected by a setuid-root program enabling the user to configure networks as non-root, which is now solved.
> This leads me to a suggestion to the upstream developers: couldn't the same be achieved using specific network-related capabilities, instead of setuid-root, thereby further reducing the risk of lxc-user-nic being exploited and hence, reducing overall attack surface (in unprivileged mode)?
> I have read in https://wiki.ubuntu.com/UserNamespace that the approach of using "targeted capabilities" was then considered. This is probably the closest to what I am suggesting (specifically for lxc-user-nic - the current approach with 1-1 uid mappings seems fine for network-unrelated things).

The targeted capabilities wouldn't help here, because in fact
lxc-user-nic requires privilege against the parent namespace.

-serge
