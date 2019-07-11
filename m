X-VM-v5-Data: ([nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil]
	["1459" "Thursday" "11" "July" "2019" "09:33:26" "-0400" "Perry E. Metzger" "perry@piermont.com" "<20190711093326.328948dc@jabberwock.cb.piermont.com>" "34" "Re: [oss-security] Privileged File Access from Desktop Applications" "^Cc:" nil nil "7" "2019071113:33:26" "[oss-security] Privileged File Access from Desktop Applications" (number mark "        perry@piermo Jul 11   34/1459  " thread-indent "\"Re: [oss-security] Privileged File Access from Desktop Applications\"\n") "<9148ee55db2cabb111f790513413823996d04cb6.camel@suse.com>" ("<200975c0f23706ce513744052225ea7dc9842206.camel@suse.com>" "<20190709113036.0f12d057@jabberwock.cb.piermont.com>" "<9148ee55db2cabb111f790513413823996d04cb6.camel@suse.com>") nil nil nil nil nil nil nil "Re: [oss-security] Privileged File Access from Desktop Applications" nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil]
	nil)
X-Mozilla-Status: 0001
X-Mozilla-Status2: 00000000
Received: (qmail 7407 invoked by uid 550); 11 Jul 2019 13:33:39 -0000
Mailing-List: contact oss-security-help@lists.openwall.com; run by ezmlm
Precedence: bulk
List-Post: <mailto:oss-security@lists.openwall.com>
List-Help: <mailto:oss-security-help@lists.openwall.com>
List-Unsubscribe: <mailto:oss-security-unsubscribe@lists.openwall.com>
List-Subscribe: <mailto:oss-security-subscribe@lists.openwall.com>
List-ID: <oss-security.lists.openwall.com>
Received: (qmail 7384 invoked from network); 11 Jul 2019 13:33:39 -0000
Message-ID: <20190711093326.328948dc@jabberwock.cb.piermont.com>
In-Reply-To: <9148ee55db2cabb111f790513413823996d04cb6.camel@suse.com>
References: <200975c0f23706ce513744052225ea7dc9842206.camel@suse.com>
	<20190709113036.0f12d057@jabberwock.cb.piermont.com>
	<9148ee55db2cabb111f790513413823996d04cb6.camel@suse.com>
MIME-Version: 1.0
Content-Type: text/plain; charset=US-ASCII
Content-Transfer-Encoding: 7bit
Cc: oss-security@lists.openwall.com
Date: Thu, 11 Jul 2019 09:33:26 -0400
From: "Perry E. Metzger" <perry@piermont.com>
Reply-To: oss-security@lists.openwall.com
Subject: Re: [oss-security] Privileged File Access from Desktop Applications
To: Malte Kraus <malte.kraus@suse.com>

On Thu, 11 Jul 2019 07:51:17 +0000 Malte Kraus <malte.kraus@suse.com>
wrote:
> Hi Perry,
> 
> On Tue, 2019-07-09 at 11:30 -0400,  Perry E. Metzger wrote:
> > Can you explain (or point to) a description of why this is a
> > problem?  
> I'm not sure what exactly breaks, just that it does, see e.g. [1]
> [2] [3]. Since we're talking about root it's not a matter of
> technical impossibility, but a decision not to write the code to
> make it work.
> 
> From a security perspective that seems like a great improvement.
> Even if it should be the case that some programs don't follow best
> practices re "least privileges", at least it's not the whole
> application running as root.
> 
> 1: 
> https://wiki.archlinux.org/index.php/Running_GUI_applications_as_root#Wayland
> 2: 
> https://wiki.debian.org/Wayland#I.27m_accustomed_to_running_various_programs_.28e.g._synaptic.29_as_root_in_my_X_session.__How_will_this_work_under_Wayland.3F
> 3: 
> https://fedoraproject.org/wiki/How_to_debug_Wayland_problems#Graphical_applications_can.27t_be_run_as_root_from_terminal
> 

So these links seem to say that things have been structured so you
*can't* run GUI apps as root, not that there is a special or unusual
security problem in Wayland if you run an application as root; if
you logged in as root, you could run GUI applications as root. That's
rather different from the original statement. Am I misunderstanding?

Perry
-- 
Perry E. Metzger		perry@piermont.com
