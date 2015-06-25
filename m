X-VM-v5-Data: ([nil t nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil]
	["945" "Thursday" "25" "June" "2015" "07:09:35" "+0000" "Damien Regad" "dregad@mantisbt.org" "<loom.20150625T090750-338@post.gmane.org>" "33" "[oss-security] Re: CVE Request: Information disclosure in MantisBT" nil nil nil "6" "2015062507:09:35" "[oss-security] Re: CVE Request: Information disclosure in MantisBT" (number mark "U       dregad@manti Jun 25   33/945   " thread-indent "\"[oss-security] Re: CVE Request: Information disclosure in MantisBT\"\n") "<20150625024518.E36E5ABC026@smtpvmsrv1.mitre.org>" ("<mmfd21$39r$1@ger.gmane.org>" "<20150625024518.E36E5ABC026@smtpvmsrv1.mitre.org>") nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil]
	nil)
X-Mozilla-Status: 0000
X-Mozilla-Status2: 00000000
Received: (qmail 26484 invoked by uid 550); 25 Jun 2015 07:10:13 -0000
Mailing-List: contact oss-security-help@lists.openwall.com; run by ezmlm
Precedence: bulk
List-Post: <mailto:oss-security@lists.openwall.com>
List-Help: <mailto:oss-security-help@lists.openwall.com>
List-Unsubscribe: <mailto:oss-security-unsubscribe@lists.openwall.com>
List-Subscribe: <mailto:oss-security-subscribe@lists.openwall.com>
List-ID: <oss-security.lists.openwall.com>
Reply-To: oss-security@lists.openwall.com
Received: (qmail 26464 invoked from network); 25 Jun 2015 07:10:13 -0000
X-Injected-Via-Gmane: http://gmane.org/
To: oss-security@lists.openwall.com
From: Damien Regad <dregad@mantisbt.org>
Date: Thu, 25 Jun 2015 07:09:35 +0000 (UTC)
Message-ID: <loom.20150625T090750-338@post.gmane.org>
References: <mmfd21$39r$1@ger.gmane.org> <20150625024518.E36E5ABC026@smtpvmsrv1.mitre.org>
Mime-Version: 1.0
Content-Type: text/plain; charset=us-ascii
Content-Transfer-Encoding: 7bit
X-Complaints-To: usenet@ger.gmane.org
X-Gmane-NNTP-Posting-Host: sea.gmane.org
User-Agent: Loom/3.14 (http://gmane.org/)
X-Loom-IP: 193.134.187.35 (Mozilla/5.0 (Windows NT 6.1; WOW64; rv:38.0) Gecko/20100101 Firefox/38.0)
Subject: [oss-security] Re: CVE Request: Information disclosure in MantisBT

 <cve-assign@...> writes:

> Use CVE-2015-5059 for the issue in which $g_view_proj_doc_threshold
> had been ANYBODY but is supposed to be VIEWER.

Thanks for the CVE. 

> Is there any related security problem caused by this possible
> inconsistency in the code:
> 
>   define( 'ANYBODY', 0 );
> 
>   function access_get_global_level
> 
>           if( empty( $p_user_id ) && !auth_is_user_authenticated() ) {
>                   return false;
> 
>   function access_get_project_level
> 
>           if( empty( $p_user_id ) && !auth_is_user_authenticated() ) {
>                   return ANYBODY;
> 
> ? In other words, is an unauthenticated client sometimes, but not always,
> considered to have the ANYBODY access level?

Thanks for bringing this to my attention. At first glance it certainly looks
like an inconsistency; I will review the code in detail to determine whether
this is intentional or not, and will let you know.

Cheers
Damien


