<h1> The Lupa Lab &#128270</h1>
<p>First things first, thanks for having a look at my repo. I'm thrilled to share with you the Docker Image that I use for Threat Intel. Hope you can find it useful and I'm open to new suggestions.</p>
<br>
<h2>Tools &#128295;</h2>
<p>Inside this image you have the following tools already installed: <br>
<p>[dmitry]([url](https://github.com/jaygreig86/dmitry)) <br>
Recon-ng <br>
Dirb <br>
Dig <br>
Nstoolkit <br>
whois <br>
Wig <br>
Blackwidow <br>
EmailHarvester <br>
Yara <br>
Pdfid <br>
Exiftools<br>
Darkdump<br>
tor<br>
Proxychains<br>
Onioff</p>
<p>I have also added a directory called "Other" where there are resources you can use for threat intelligence, such as DeepDarkCTI which is a repository where you have access to malicious actor telegram groups, darknet pages, etc. <br> 
You can also find there a document with links that I have found interesting in case you want to discover new tools and techniques that you want to use in your environment. </p><br>
<br>
<h2>How to build the Image</h2>
<p>1. Install Docker<br>
2. Clone the repository<br>
  &nbsp; &nbsp; &nbsp; &nbsp; <b>"git clone https://github.com/P41SA/The_Lupa_Lab.git"</b> <br>
3. Run the following command:<br>
  &nbsp; &nbsp; &nbsp; &nbsp; <b>"sudo docker build -t the_lupa_lab ."</b>
</p>




