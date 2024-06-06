check-tag:
	@echo "Checking if tag $(TAG) exists in ECR repository $(REPO_NAME)..."
	@if aws ecr describe-images --repository-name $(REPO_NAME) --region $(AWS_REGION) --query 'imageDetails[*].imageTags' --output text | grep -w $(TAG) > /dev/null; then \
		echo "Tag $(TAG) exists in ECR repository $(REPO_NAME)."; \
	else \
		echo "Tag $(TAG) does not exist in ECR repository $(REPO_NAME)."; \
	fi
