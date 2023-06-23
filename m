Received: (qmail 27757 invoked by uid 550); 23 Jun 2023 11:40:01 -0000
Mailing-List: contact oss-security-help@lists.openwall.com; run by ezmlm
Precedence: bulk
List-Post: <mailto:oss-security@lists.openwall.com>
List-Help: <mailto:oss-security-help@lists.openwall.com>
List-Unsubscribe: <mailto:oss-security-unsubscribe@lists.openwall.com>
List-Subscribe: <mailto:oss-security-subscribe@lists.openwall.com>
List-ID: <oss-security.lists.openwall.com>
Reply-To: oss-security@lists.openwall.com
Received: (qmail 25990 invoked from network); 23 Jun 2023 11:39:04 -0000
Date: Fri, 23 Jun 2023 13:38:56 +0200
From: Solar Designer <solar@openwall.com>
To: oss-security@lists.openwall.com
Cc: Jyoti Raval <jenyraval@gmail.com>
Message-ID: <20230623113856.GA7102@openwall.com>
References: <CANo=s0ZesZj2nzHGxeG4CEjcB+dAxBF8pMDWB_mAMvgSm_gnSA@mail.gmail.com> <20230623112217.GA6878@openwall.com>
Mime-Version: 1.0
Content-Type: text/plain; charset=us-ascii
Content-Disposition: inline
In-Reply-To: <20230623112217.GA6878@openwall.com>
User-Agent: Mutt/1.4.2.3i
Subject: Re: [oss-security] Open Source Tool | MPT: Pentest In Action!

I think I overlooked two things:

On Fri, Jun 23, 2023 at 01:22:17PM +0200, Solar Designer wrote:
> On Thu, Jun 22, 2023 at 06:05:14PM +0530, Jyoti Raval wrote:
> > Managing Pentest (MPT: Pentest In Action) [image: HITBSecConf HITB2022SIN]
> > <https://conference.hitb.org/hitbsecconf2022sin/session/mpt-pentest-in-action/>
> 
> This isn't a topic for oss-security.  But per the above, an Open Source
> security tool announced for the first time nevertheless is.

While the code is technically open source, for it to be on-topic here
it'd have to be under an Open Source license - and there's no license
currently specified in the GitHub repo.  Jyoti, please fix this.

> > Github - https://github.com/jenyraval/MPT

> live_edit.php:
> $input = filter_input_array(INPUT_POST);
> if ($input['action'] == 'edit') {
> $update_field='';
> if(isset($input['status'])) {
> $update_field.= "status='".$input['status']."'";
> }
> if($update_field && $input['id']) {
> $sql_query = "UPDATE issuedetails SET $update_field WHERE id='" . $input['id'] . "'";
> mysqli_query($db, $sql_query) or die("database error:". mysqli_error($conn));
> 
> (Yes, the lack of indentation is in the original.)
> 
> Apparently, no escaping nor filtering is actually performed here, and
> also no use of prepared statements.  Likely (post-authentication?) SQL
> injection possibility.  OVE-20230623-0003

Actually, this looks pre-authentication.  Most of this project's PHP
files include session.php, which attempts an authentication check, but
live_edit.php does not include it.

Alexander
