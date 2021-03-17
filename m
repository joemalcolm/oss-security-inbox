X-VM-v5-Data: ([nil t nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil]
	["4336" "Wednesday" "17" "March" "2021" "19:53:00" "+0800" "lyl2019@mail.ustc.edu.cn" "lyl2019@mail.ustc.edu.cn" nil "127" "[oss-security] Use After Free and Double Free bugs in Linux Kernel mainline" nil nil nil "3" nil nil (number mark "U       lyl2019@mail Mar 17  127/4336  " thread-indent "\"[oss-security] Use After Free and Double Free bugs in Linux Kernel mainline\"\n") nil nil nil nil nil nil nil nil nil "[oss-security] Use After Free and Double Free bugs in Linux Kernel mainline" nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil]
	nil)
X-Mozilla-Status: 0000
X-Mozilla-Status2: 00000000
Received: (qmail 26019 invoked by uid 550); 17 Mar 2021 11:54:39 -0000
Mailing-List: contact oss-security-help@lists.openwall.com; run by ezmlm
Precedence: bulk
List-Post: <mailto:oss-security@lists.openwall.com>
List-Help: <mailto:oss-security-help@lists.openwall.com>
List-Unsubscribe: <mailto:oss-security-unsubscribe@lists.openwall.com>
List-Subscribe: <mailto:oss-security-subscribe@lists.openwall.com>
List-ID: <oss-security.lists.openwall.com>
Reply-To: oss-security@lists.openwall.com
Received: (qmail 25689 invoked from network); 17 Mar 2021 11:53:14 -0000
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
	d=mail.ustc.edu.cn; s=dkim; h=Received:Date:From:To:Subject:
	Content-Transfer-Encoding:Content-Type:MIME-Version:Message-ID;
	bh=9P+XefEqOGZ6ouC5od182cqBc9JLvtU1Ya+oD0Td69g=; b=mjvfN9Y6vqZlM
	6pXhZPeNxopkTgZQOvAiAKAgkU+uOn926RMPqE2xhRxvOjEc5yRBtis8hlRnfsiG
	AKN2lMlD/jW08CkjCUfyvF10v/A++EHm5B2jjlE8hpHeokyecBdZEsSDFybb7dSa
	V32VZcOIP2MoPOjU5H2es6AAgd3C0M=
X-Originating-IP: [202.38.69.14]
Date: Wed, 17 Mar 2021 19:53:00 +0800 (GMT+08:00)
X-CM-HeaderCharset: UTF-8
From: lyl2019@mail.ustc.edu.cn
To: oss-security@lists.openwall.com
X-Priority: 3
X-Mailer: Coremail Webmail Server Version XT3.0.8 dev build
 20190610(cb3344cf) Copyright (c) 2002-2021 www.mailtech.cn ustc-xl
X-SendMailWithSms: false
Content-Transfer-Encoding: 7bit
Content-Type: text/plain; charset=UTF-8
MIME-Version: 1.0
Message-ID: <150fb1c3.1c2a0.17840082a2e.Coremail.lyl2019@mail.ustc.edu.cn>
X-Coremail-Locale: zh_CN
X-CM-TRANSID: LkAmygC3vuKc7VFgOWk3AA--.1W
X-CM-SenderInfo: ho1ojiyrz6zt1loo32lwfovvfxof0/1tbiAQoDBlQhn5Lr7QAAsw
X-Coremail-Antispam: 1Ur529EdanIXcx71UUUUU7IcSsGvfJ3iIAIbVAYjsxI4VWDJw
	CS07vEb4IE77IF4wCS07vE1I0E4x80FVAKz4kxMIAIbVAFxVCaYxvI4VCIwcAKzIAtYxBI
	daVFxhVjvjDU=
Subject: [oss-security] Use After Free and Double Free bugs in Linux Kernel mainline

Hi,
   I have found 4 security bugs in Linux Kernel mainline recently,
and all of these bug are confirmed by the kernel maintainers.

Details are below. I'm trying to request CVE IDs for these bugs.


Bug 1: net/qlcnic: Fix a use after free in qlcnic_83xx_get_minidump_template
Commit Url:https://git.kernel.org/pub/scm/linux/kernel/git/netdev/net.git/commit/?id=db74623a3850

In qlcnic_83xx_get_minidump_template, fw_dump->tmpl_hdr was freed by
vfree(). But unfortunately, it is used when extended is true.

---
 drivers/net/ethernet/qlogic/qlcnic/qlcnic_minidump.c | 3 +++
 1 file changed, 3 insertions(+)

diff --git a/drivers/net/ethernet/qlogic/qlcnic/qlcnic_minidump.c b/drivers/net/ethernet/qlogic/qlcnic/qlcnic_minidump.c
index 7760a3394e93..7ecb3dfe30bd 100644
--- a/drivers/net/ethernet/qlogic/qlcnic/qlcnic_minidump.c
+++ b/drivers/net/ethernet/qlogic/qlcnic/qlcnic_minidump.c
@@ -1425,6 +1425,7 @@ void qlcnic_83xx_get_minidump_template(struct qlcnic_adapter *adapter)
 
 	if (fw_dump->tmpl_hdr == NULL || current_version > prev_version) {
 		vfree(fw_dump->tmpl_hdr);
+		fw_dump->tmpl_hdr = NULL;
 
 		if (qlcnic_83xx_md_check_extended_dump_capability(adapter))
 			extended = !qlcnic_83xx_extend_md_capab(adapter);
@@ -1443,6 +1444,8 @@ void qlcnic_83xx_get_minidump_template(struct qlcnic_adapter *adapter)
 			struct qlcnic_83xx_dump_template_hdr *hdr;
 
 			hdr = fw_dump->tmpl_hdr;
+			if (!hdr)
+				return;
 			hdr->drv_cap_mask = 0x1f;
 			fw_dump->cap_mask = 0x1f;
 			dev_info(&pdev->dev,
-- 


Bug2: nvme/rdma: Fix a use after free in nvmet_rdma_write_data_done
Commit Url: https://github.com/torvalds/linux/commit/abec6561fc4e0fbb19591a0b35676d8c783b5493

In nvmet_rdma_write_data_done, rsp is recoverd by wc->wr_cqe
and freed by nvmet_rdma_release_rsp(). But after that, pr_info()
used the freed chunk's member object and could leak the freed
chunk address with wc->wr_cqe by computing the offset.

 drivers/nvme/target/rdma.c | 5 ++---
 1 file changed, 2 insertions(+), 3 deletions(-)

diff --git a/drivers/nvme/target/rdma.c b/drivers/nvme/target/rdma.c
index 06b6b742bb21..6c1f3ab7649c 100644
--- a/drivers/nvme/target/rdma.c
+++ b/drivers/nvme/target/rdma.c
@@ -802,9 +802,8 @@ static void nvmet_rdma_write_data_done(struct ib_cq *cq, struct ib_wc *wc)
 		nvmet_req_uninit(&rsp->req);
 		nvmet_rdma_release_rsp(rsp);
 		if (wc->status != IB_WC_WR_FLUSH_ERR) {
-			pr_info("RDMA WRITE for CQE 0x%p failed with status %s (%d).\n",
-				wc->wr_cqe, ib_wc_status_msg(wc->status),
-				wc->status);
+			pr_info("RDMA WRITE for CQE failed with status %s (%d).\n",
+				ib_wc_status_msg(wc->status), wc->status);
 			nvmet_rdma_error_comp(queue);
 		}
 		return;


Bug3: scsi: Fix a double free in myrs_cleanup
Commit Url:https://git.kernel.org/pub/scm/linux/kernel/git/mkp/scsi.git/commit/?id=2bb817712e2f

In myrs_cleanup, cs->mmio_base will be freed twice by
iounmap().

---
 drivers/scsi/myrs.c | 2 +-
 1 file changed, 1 insertion(+), 1 deletion(-)

diff --git a/drivers/scsi/myrs.c b/drivers/scsi/myrs.c
index 4adf9ded296a..329fd025c718 100644
--- a/drivers/scsi/myrs.c
+++ b/drivers/scsi/myrs.c
@@ -2273,12 +2273,12 @@ static void myrs_cleanup(struct myrs_hba *cs)
 	if (cs->mmio_base) {
 		cs->disable_intr(cs);
 		iounmap(cs->mmio_base);
+		cs->mmio_base = NULL;
 	}
 	if (cs->irq)
 		free_irq(cs->irq, cs);
 	if (cs->io_addr)
 		release_region(cs->io_addr, 0x80);
-	iounmap(cs->mmio_base);
 	pci_set_drvdata(pdev, NULL);
 	pci_disable_device(pdev);
 	scsi_host_put(cs->host);
-- 


Bug4: scsi: Fix a use after free in st_open
Commit Url:https://git.kernel.org/pub/scm/linux/kernel/git/mkp/scsi.git/commit/?id=c8c165dea4c8

In st_open, if STp->in_use is true, STp will be freed by
scsi_tape_put(). However, STp is still used by DEBC_printk()
after. It is better to DEBC_printk() before scsi_tape_put().

---
 drivers/scsi/st.c | 2 +-
 1 file changed, 1 insertion(+), 1 deletion(-)

diff --git a/drivers/scsi/st.c b/drivers/scsi/st.c
index 841ad2fc369a..9ca536aae784 100644
--- a/drivers/scsi/st.c
+++ b/drivers/scsi/st.c
@@ -1269,8 +1269,8 @@ static int st_open(struct inode *inode, struct file *filp)
 	spin_lock(&st_use_lock);
 	if (STp->in_use) {
 		spin_unlock(&st_use_lock);
-		scsi_tape_put(STp);
 		DEBC_printk(STp, "Device already in use.\n");
+		scsi_tape_put(STp);
 		return (-EBUSY);
 	}
 
-- 
