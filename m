X-VM-v5-Data: ([nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil]
	["1694" "Sunday" "5" "November" "2017" "19:14:31" "+0100" "Jakub Wilk" "jwilk@jwilk.net" "<20171105181431.a7zstp2v4bytdlvg@jwilk.net>" "57" "Re: [oss-security] Fw: Security risk of vim swap files" "^Date:" nil nil "11" "2017110518:14:31" "[oss-security] Fw: Security risk of vim swap files" (number mark "        jwilk@jwilk. Nov  5   57/1694  " thread-indent "\"Re: [oss-security] Fw: Security risk of vim swap files\"\n") "<20171105171704.GA9438@256bit.org>" ("<20171102212916.GC23769@256bit.org>" "<20171103163936.cevlb7ghcwkln6x2@jwilk.net>" "<20171105171704.GA9438@256bit.org>") nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil]
	nil)
X-Mozilla-Status: 0001
X-Mozilla-Status2: 00000000
Received: (qmail 22001 invoked by uid 550); 5 Nov 2017 18:14:48 -0000
Mailing-List: contact oss-security-help@lists.openwall.com; run by ezmlm
Precedence: bulk
List-Post: <mailto:oss-security@lists.openwall.com>
List-Help: <mailto:oss-security-help@lists.openwall.com>
List-Unsubscribe: <mailto:oss-security-unsubscribe@lists.openwall.com>
List-Subscribe: <mailto:oss-security-subscribe@lists.openwall.com>
List-ID: <oss-security.lists.openwall.com>
Received: (qmail 21980 invoked from network); 5 Nov 2017 18:14:48 -0000
Message-ID: <20171105181431.a7zstp2v4bytdlvg@jwilk.net>
Mail-Followup-To: oss-security@lists.openwall.com
References: <20171102212916.GC23769@256bit.org>
 <20171103163936.cevlb7ghcwkln6x2@jwilk.net>
 <20171105171704.GA9438@256bit.org>
MIME-Version: 1.0
Content-Type: text/plain; charset=us-ascii; format=flowed
Content-Disposition: inline
In-Reply-To: <20171105171704.GA9438@256bit.org>
User-Agent: NeoMutt/20170609 (1.8.3)
X-Ovh-Tracer-Id: 6128273194230732710
X-VR-SPAMSTATE: OK
X-VR-SPAMSCORE: 0
X-VR-SPAMCAUSE: gggruggvucftvghtrhhoucdtuddrgedttddrhedvgdduudefucetufdoteggodetrfdotffvucfrrhhofhhilhgvmecuqfggjfdpvefjgfevmfevgfenuceurghilhhouhhtmecufedttdenuc
Date: Sun, 5 Nov 2017 19:14:31 +0100
From: Jakub Wilk <jwilk@jwilk.net>
Reply-To: oss-security@lists.openwall.com
Subject: Re: [oss-security] Fw: Security risk of vim swap files
To: oss-security@lists.openwall.com

* Christian Brabandt <cb@256bit.org>, 2017-11-05, 18:17:
>>In general, what vim does (copying mode bits) in not enough to ensure 
>>that the swapfile is readable only by the users who had access to the 
>>original file. It would have to copy also group ownership and ACLs.
>I think patch https://github.com/vim/vim/releases/tag/v8.0.1263 fixes 
>the group ownership problem.

So the code in question looks like this:

   /*
    * If the group-read bit is set but not the world-read bit, then
    * the group must be equal to the group of the original file.  If
    * we can't make that happen then reset the group-read bit.  This
    * avoids making the swap file readable to more users when the
    * primary group of the user is too permissive.
    */
   if ((swap_mode & 044) == 040)
   {
       stat_T	swap_st;

       if (mch_stat((char *)swap_fname, &swap_st) >= 0
       	&& st.st_gid != swap_st.st_gid
       	&& fchown(curbuf->b_ml.ml_mfp->mf_fd, -1, st.st_gid)
       							 == -1)
           swap_mode &= 0600;
   }

   (void)mch_setperm(swap_fname, (long)swap_mode);

The logic here is based on the assumption that the 040 bit in the mode 
implies that everyone in the group can read the file. Somewhat 
surprisingly, this assumption is incorrect in the world with ACLs:

   $ id -gn
   users

   $ ls -l foo
   -rw-r-----+ 1 root users 0 Nov  5 18:34 foo

   $ cat foo
   cat: foo: Permission denied

   $ getfacl foo
   # file: foo
   # owner: root
   # group: users
   user::rw-
   user:nobody:r--
   group::---
   mask::r--
   other::---

I don't understand why this chmodding is needed at all.
Couldn't vim create swapfiles with mode 0600 and be done with it?

-- 
Jakub Wilk
