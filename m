X-VM-v5-Data: ([nil t nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil]
	["3220" "Thursday" "31" "March" "2016" "09:41:28" "-0500" "Eric Sandeen" "sandeen@redhat.com" "<56FD3718.2090502@redhat.com>" "69" "Re: [oss-security] CVE Request - Linux kernel (multiple versions) ext2/ext3 filesystem DoS" nil nil nil "3" "2016033114:41:28" "[oss-security] CVE Request - Linux kernel (multiple versions) ext2/ext3 filesystem DoS" (number mark "U       sandeen@redh Mar 31   69/3220  " thread-indent "\"Re: [oss-security] CVE Request - Linux kernel (multiple versions) ext2/ext3 filesystem DoS\"\n") "<20160330204304.GD6207@thunk.org>" ("<f4df42b35dd9a6c8c6851eba66b2b3f1.squirrel@webmail-etu.univ-nantes.fr>" "<1459286067.2596.18.camel@debian.org>" "<57514A3C-DBAD-4E5E-98EA-23E490629C02@dilger.ca>" "<20160330204304.GD6207@thunk.org>") nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil]
	nil)
X-Mozilla-Status: 0000
X-Mozilla-Status2: 00000000
Received: (qmail 13717 invoked by uid 550); 31 Mar 2016 14:44:24 -0000
Mailing-List: contact oss-security-help@lists.openwall.com; run by ezmlm
Precedence: bulk
List-Post: <mailto:oss-security@lists.openwall.com>
List-Help: <mailto:oss-security-help@lists.openwall.com>
List-Unsubscribe: <mailto:oss-security-unsubscribe@lists.openwall.com>
List-Subscribe: <mailto:oss-security-subscribe@lists.openwall.com>
List-ID: <oss-security.lists.openwall.com>
Reply-To: oss-security@lists.openwall.com
Received: (qmail 11888 invoked from network); 31 Mar 2016 14:41:42 -0000
To: "Theodore Ts'o" <tytso@mit.edu>, Andreas Dilger <adilger@dilger.ca>
References: <f4df42b35dd9a6c8c6851eba66b2b3f1.squirrel@webmail-etu.univ-nantes.fr>
 <1459286067.2596.18.camel@debian.org>
 <57514A3C-DBAD-4E5E-98EA-23E490629C02@dilger.ca>
 <20160330204304.GD6207@thunk.org>
Cc: Yves-Alexis Perez <corsac@debian.org>, oss-security@lists.openwall.com,
        Theodore Tso <tytso@google.com>, linux-ext4@vger.kernel.org
From: Eric Sandeen <sandeen@redhat.com>
Message-ID: <56FD3718.2090502@redhat.com>
Date: Thu, 31 Mar 2016 09:41:28 -0500
User-Agent: Mozilla/5.0 (Macintosh; Intel Mac OS X 10.11; rv:38.0)
 Gecko/20100101 Thunderbird/38.7.1
MIME-Version: 1.0
In-Reply-To: <20160330204304.GD6207@thunk.org>
Content-Type: text/plain; charset=utf-8
Content-Transfer-Encoding: 8bit
X-Scanned-By: MIMEDefang 2.68 on 10.5.11.26
Subject: Re: [oss-security] CVE Request - Linux kernel (multiple versions)
 ext2/ext3 filesystem DoS

On 3/30/16 3:43 PM, Theodore Ts'o wrote:
> On Tue, Mar 29, 2016 at 04:56:11PM -0600, Andreas Dilger wrote:
>> On Mar 29, 2016, at 3:14 PM, Yves-Alexis Perez <corsac@debian.org> wrote:
>>>
>>> [dropping MITRE from CC since it's not about the CVE]
>>> [adding ext and Theodore to CC]
>>>
>>> On mar., 2016-03-29 at 19:24 +0200, Hugues ANGUELKOV wrote:
>>>> Hello,
>>>>
>>>> The linux kernel is prone to a Denial of service when mounting specially
>>>> crafted ext2/ext3 (possibly ext4) filesystems. This occurs in the function
>>>> ext4_handle_error who call the panic function on precise circumstance.
>>>
>>> Did you contact the upstream maintainers about this? I'm adding them just in
>>> case they're not already aware of that…
>>>
>>>> This was tested on severals linux kernel version: 3.10, 3.18, 3.19, on
>>>> real hardware and Xen DomU PV & HVM (the crash report attached is from a
>>>> Fedora 3.18 PV DomU), from different distribution release: Ubuntu, CentOS,
>>>> Fedora, Linux Mint, QubesOS.
>>>> This a low security impact bug, because generally only root can mount
>>>> image, however on Desktop (or possibly server?) system configured with
>>>> automount the bug is easily triggable (think of android smartphone? Haven't
>>>> test yet).
>>
>> It seems that the important point here is that the filesystem has
>> "s_errors=EXT4_ERRORS_PANIC" set in the superblock?  I don't think
>> the actual corruption that triggered the ext4_error() call is important,
>> since there are any number of other failure cases that could generate
>> a similar error.
>>
>> It seems practical to change s_errors at mount time from EXT4_ERRORS_PANIC
>> to EXT4_ERRORS_RO for filesystems mounted by regular users.  The question
>> is whether there is a way for the ext4 code to know this at mount time?
> 
> You can mount the file system with "mount -o errors=continue" and this
> will override the default behavior specified in the super block.
> 
> I would argue that a Desktop or server system that had automount
> should either (a) mount with -o errors=continue, or (b) force an fsck
> on the file system before mounting it.
> 
> So I think this is a particularly meaningless CVE, which is why I have
> zero respect for people who try to make any kind of conclusion based
> on CVE counts.   I certainly don't plan to do anything about this.
> 
> You might as well complain that since the system ships with a reboot
> command that can be executed by a clueless root user, that this is a
> potential DOS attack scenario deserving of a CVE....

First of all, yes, I have always been extremely skeptical of these
"crafted image" CVEs.  However, I'm not sure the "store errors=panic
in the superblock" was particularly well thought out either; it certainly
does make for a tidy little timebomb.

While I really hate to give issues such as this a whole lot more
credibility, I wonder about a higher level control, such as a sysctl,
which could [dis]allow errors=panic at a system-wide level.  It could default
to disallowing, and it's trivial to set it in sysctl.conf if you really
want it enabled by default.

In the end, errors=panic is really a debug option; a small hoop-jump to
use it doesn't sound too bad to me.

-Eric



