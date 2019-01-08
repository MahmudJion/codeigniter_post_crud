<div class="container">
    <?php if(!empty($success_msg)){ ?>
    <div class="col-xs-12">
        <div class="alert alert-success"><?php echo $success_msg; ?></div>
    </div>
    <?php }elseif(!empty($error_msg)){ ?>
    <div class="col-xs-12">
        <div class="alert alert-danger"><?php echo $error_msg; ?></div>
    </div>
    <?php } ?>
    <div class="row">
        <div class="col-xs-12">
            <div class="panel panel-default ">
                <div class="panel-heading">Posts <a href="<?php echo site_url('posts/add/'); ?>" class="glyphicon glyphicon-plus pull-right" ></a></div>
                <table class="table table-striped">
                    <thead>
                        <tr>
                            <th>ID</th>
                            <th>Title</th>
                            <th>Content</th>
                            <th>Description</th>
                            <th>URL</th>
                            <th>Tags</th>
                            <th>Keyword</th>
                            <th>Aurthor</th>
                            <th width="10%">Action</th>
                        </tr>
                    </thead>
                    <tbody id="userData">
                        <?php if(!empty($posts)): foreach($posts as $post): ?>
                        <tr>
                            <td><?php echo '#'.$post['id']; ?></td>
                            <td><?php echo $post['title']; ?></td>
                            <td><?php echo (strlen($post['content'])>150)?substr($post['content'],0,150).'...':$post['content']; ?></td>
                            <td><?php echo (strlen($post['description'])>150)?substr($post['description'],0,150).'...':$post['description']; ?></td>
                            <td><?php echo (strlen($post['url'])>150)?substr($post['url'],0,150).'...':$post['url']; ?></td>
                            <td><?php echo (strlen($post['tags'])>150)?substr($post['tags'],0,150).'...':$post['tags']; ?></td>
                            <td><?php echo (strlen($post['keyword'])>150)?substr($post['keyword'],0,150).'...':$post['keyword']; ?></td>
                            <td><?php echo (strlen($post['aurthor'])>150)?substr($post['aurthor'],0,150).'...':$post['aurthor']; ?></td>
                            <td>
                                <a href="<?php echo site_url('posts/view/'.$post['id']); ?>" class="glyphicon glyphicon-eye-open"></a>
                                <a href="<?php echo site_url('posts/edit/'.$post['id']); ?>" class="glyphicon glyphicon-edit"></a>
                                <a href="<?php echo site_url('posts/delete/'.$post['id']); ?>" class="glyphicon glyphicon-trash" onclick="return confirm('Are you sure to delete?')"></a>
                            </td>
                        </tr>
                        <?php endforeach; else: ?>
                        <tr><td colspan="4">Post(s) not found</td></tr>
                        <?php endif; ?>
                    </tbody>
                </table>
            </div>
        </div>
    </div>
</div>