DATE=`date +'%m/%d/%Y'`
default:
	cat header.html >| index.html
	markdown2 content.md | sed "s:{{DATE}}:$(DATE):" >> index.html
	cat footer.html >> index.html
