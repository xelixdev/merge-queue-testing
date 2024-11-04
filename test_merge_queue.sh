git checkout main
for i in {1..10};
do
	git checkout -b merge-queue-test$i
	touch mq-test$i
	git add mq-test$i
	git commit -m "mq-test$i"
	git push
	gh pr create --body="" --title=""
	git checkout main
done	
